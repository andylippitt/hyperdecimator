using System;
using System.IO;

namespace SerialTest
{
    class Program
    {
        static void Main(string[] args)
        {
            using var s = File.OpenRead(@"..\SerialCapture\cap.2pdm");

            var buffer = new byte[8192];
            int totalBytes = 0;

            DateTime started = DateTime.Now;

            var channels = new byte[2][];
            channels[0] = new byte[4];
            channels[1] = new byte[4];

            using var streamLeft = File.OpenWrite("left.pdm");
            using var streamRight = File.OpenWrite("right.pdm");

            while (true)
            {
                int bytes = s.Read(buffer, 0, buffer.Length);
                //stdout.Write(buffer, 0, bytes);
                
                totalBytes += bytes;

                for (int i = 0; i < bytes; i++)
                {
                    Demux(buffer[i], channels);

                    streamLeft.Write(channels[0]);
                    streamRight.Write(channels[1]);
                }

                var delta = DateTime.Now.Subtract(started);
                if (delta.TotalSeconds > 1)
                {
                    Console.Error.WriteLine($"{delta.TotalSeconds:0}:{totalBytes * 8 / delta.TotalSeconds / 1000:00}kbps");
                    started = DateTime.Now;
                    totalBytes = 0;
                }

                if (bytes == 0)
                    return;
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
