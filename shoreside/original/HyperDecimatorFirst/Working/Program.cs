using NWaves.Audio;
using NWaves.Filters;
using NWaves.Filters.Base;
using NWaves.Filters.Fda;
using NWaves.Signals;
using System;
using System.IO;

namespace Working
{
    class Program
    {
        static void Main(string[] args)
        {
            using var s = File.OpenRead(@"..\Demux\left.pdm");

            var buffer = new byte[8192];

            //var kernel = DesignFilter.FirWinLp(4095, 0.0064);
            //var lpFilter = new FirFilter(kernel);

            var lpFilter = new MovingAverageRecursiveFilter(8192);

            int totalBytes = 0;

            DateTime started = DateTime.Now;

            var channels = new byte[2][];

            channels[0] = new byte[4];
            channels[1] = new byte[4];
            var filtered = new byte[4];

            float[] decimated = new float[44100 * 10];
            int decimated_index = 0;
            int sampleCounter = 0;
            bool stop = false;

            while (!stop)
            {
                int bytes = 0;
                while (bytes < buffer.Length)
                {
                    bytes += s.Read(buffer, bytes, buffer.Length - bytes);
                    if (bytes == 0)
                        stop = true;
                }

                for (var bufferIndex=0; bufferIndex<bytes; bufferIndex++)
                {
                    Demux(buffer[bufferIndex], channels);

                    for (var i = 0; i < channels[0].Length; i++)
                    {
                        //lpFilter.Process(channels[0], filtered, 4, 0, 0);
                        if (sampleCounter++ > 70)
                        {
                            sampleCounter = 0;
                            //decimate to 70:1 5.125Mhz:44.1k
                            decimated[decimated_index++] = filtered[0]; //some quantization error

                            if (decimated_index == decimated.Length)
                            {
                                stop = true;
                                break;
                            }
                        }

                        if (stop)
                            break;
                    }

                    if (stop)
                        break;
                }

                totalBytes += bytes;
                var delta = DateTime.Now.Subtract(started);
                Console.WriteLine($"{delta.TotalSeconds:0}:{totalBytes * 8 / delta.TotalSeconds / 1000:00}kbps");
            }

            var signal = new DiscreteSignal(44100, decimated);
            using (var stream = new FileStream("saved_mono.wav", FileMode.Create))
            {
                var waveFile = new WaveFile(signal);
                waveFile.SaveTo(stream);
            }

        }

        static void Demux(byte sample, byte[][] channels)
        {
            // 1:32 input:output size ratio
            channels[0][0] = (sample & 0b_1000_0000) == 0 ? 0 : 1;
            channels[0][1] = (sample & 0b_0100_0000) == 0 ? 0 : 1;
            channels[0][2] = (sample & 0b_0010_0000) == 0 ? 0 : 1;
            channels[0][3] = (sample & 0b_0001_0000) == 0 ? 0 : 1;

            channels[1][0] = (sample & 0b_0000_1000) == 0 ? 0 : 1;
            channels[1][1] = (sample & 0b_0000_0100) == 0 ? 0 : 1;
            channels[1][2] = (sample & 0b_0000_0010) == 0 ? 0 : 1;
            channels[1][3] = (sample & 0b_0000_0001) == 0 ? 0 : 1;
        }
    }
}
