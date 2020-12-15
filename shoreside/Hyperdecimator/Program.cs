namespace Hyperdecimator
{
    using System;
    using System.Linq;
    using System.Threading.Tasks;

    class Program
    {
        private static World World;

        async static Task Main(string[] args)
        {
            World = new World();

            await RecordSample();

        }

        private async static Task RecordSample()
        {
            var remote = await Source.OpenRemote("hyperdecimator", 3333);

            var buffer = new byte[8192];
            var totalBytes = 0; 
            var last = DateTime.Now;
            int sampleCounter = 0;

            int channelCount = 2;
            var channels = new byte[channelCount][];

            for (int channel = 0; channel < channelCount; channel++)
                channels[channel] = new byte[4];

            while (true)
            {
                var bytes = await remote.ReadAsync(buffer, 0, buffer.Length);

                for (var i = 0; i < bytes; i++)
                {
                    Demuxer.Split(buffer[i], channels[0], channels[1]);

                    for (int b = 0; b < 4; b++)
                    {
                        for (int channelIndex = 0; channelIndex < channelCount; channelIndex++)
                        {
                            World.Channels[channelIndex].Step(channels[channelIndex][b]);
                        }
                        World.Step();

                        sampleCounter++;
                    }
                }

                if (sampleCounter++ > 10000)
                {
                    var powers = World.Virtuals.Select(v => Math.Sqrt(v.PowerAverager.Value / v.PowerAverager.Depth)).ToArray();

                    var mag = powers.Max() - powers.Min();

                    if (mag > 2.5)
                    {
                        for (int i = 0; i < World.Virtuals.Length; i++)
                        {
                            if (powers[i] == powers.Max())
                                Console.Write($"****************************");
                            else
                                Console.Write($"____________________________");
                        }

                        Console.WriteLine($"{mag:0.00}");
                    }

                    sampleCounter = 0;
                }

                totalBytes += bytes;

                var deltaSeconds = DateTime.Now.Subtract(last).TotalSeconds;
                if (deltaSeconds >= 1)
                {
                    //Console.WriteLine($"{totalBytes * 8 / deltaSeconds / 1000 / 1000:0.00}Mbps");
                    last = DateTime.Now;
                    totalBytes = 0;
                }
            }
            
            
            
            /*

            // we've recorded a segment, lets save it
            using var stream = new FileStream("stereo.wav", FileMode.Create);
            var waveFile = new WaveFile(signals.Select(s => new DiscreteSignal(sampleRate, s)).ToList());
            waveFile.SaveTo(stream);*/

        }
    }
}
