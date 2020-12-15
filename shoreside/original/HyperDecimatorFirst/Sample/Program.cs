using NWaves.Audio;
using NWaves.Filters;
using NWaves.Filters.Base;
using NWaves.Filters.Bessel;
using NWaves.Filters.Fda;
using NWaves.Operations;
using NWaves.Signals;
using System;
using System.IO;

namespace Sample
{
    class Program
    {
        static void Main(string[] args)
        {
            int inputSamplingRate = 3125000;
            int outputSamplingRate = 44100;
            int sampleWidth = 512;

            byte[] buffer = File.ReadAllBytes(@"..\Demux\right.pdm");
            float[] raw = new float[buffer.Length];
            for (int i = 0; i < buffer.Length; i++)
                raw[i] = buffer[i] == 0 ? -10.0f : 10.0f;

            var signal = new DiscreteSignal(inputSamplingRate, raw);
            
            var maFilter = new MovingAverageRecursiveFilter(sampleWidth);
            var averaged = maFilter.ApplyFilterDirectly(signal);

            /*var resampled = Operation.Resample(averaged, outputSamplingRate);


            var kernel = DesignFilter.FirWinLp(345, 100000f / outputSamplingRate);
            var lpFilter = new FirFilter(kernel);

            var filtered = lpFilter.ApplyFilterDirectly(resampled);
            */
            using (var stream = new FileStream("raw.wav", FileMode.Create))
            {
                var waveFile = new WaveFile(averaged);
                waveFile.SaveTo(stream);
            }
        }
    }
}
