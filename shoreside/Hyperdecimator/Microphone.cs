namespace Hyperdecimator
{
    using McMaster.Extensions.CommandLineUtils.Abstractions;
    using System.Numerics;

    class Microphone
    {
        public Vector3 Position;
        public Averager Averager;
        public float[] MixingBuffer;
        public uint Index = 0;
        private int MixingDepth;
        private World World;
        private int SampleCounter = 0;
        public Averager DCOffset;


        public Microphone(World world, Vector3 position = default(Vector3))
        {
            Averager = new Averager(512);
            DCOffset = new Averager(1000);

            Position = position;
            MixingDepth = 600;
            MixingBuffer = new float[MixingDepth];
            World = world;
        }

        public void Step(byte sampleByte)
        {
            float sample = sampleByte == 0 ? -10f : 10f;

            MixingBuffer[Index++ % MixingDepth] = Averager.AddSample(sample);
            if (SampleCounter++ > 4096)
            {
                DCOffset.AddSample(Averager.Value);
                SampleCounter = 0;
            }

        }

        public float OffsetSample(int offset)
        {
            if (Index > MixingDepth && offset < MixingDepth)
                return MixingBuffer[(Index - offset) % MixingDepth] - DCOffset.Value / DCOffset.Depth;
            else
                return 0;
        }
    }
}
