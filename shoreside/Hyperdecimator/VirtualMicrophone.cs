namespace Hyperdecimator
{
    using System;
    using System.Linq;
    using System.Numerics;

    class VirtualMicrophone
    {
        public Vector3 Position;
        private int[] ChannelOffsets;
        private World World;
        public Averager PowerAverager;
        private int SampleCounter = 0;

        public VirtualMicrophone(World world, Vector3 position = default(Vector3))
        {
            PowerAverager = new Averager(1024);
            World = world;
            Position = position;
            ChannelOffsets = world.Channels
                .Select(c => (int)Vector3.Distance(c.Position, this.Position))
                .ToArray();

            var farthest = ChannelOffsets.Max(o => o);
            for (int i = 0; i < ChannelOffsets.Length; i++)
                ChannelOffsets[i] = farthest - ChannelOffsets[i];
        }
        public void Step()
        {
            if (SampleCounter++ > 64)
            {
                float accumulator = 0;
                for (int i = 0; i < ChannelOffsets.Length; i++)
                    accumulator += World.Channels[i].OffsetSample(ChannelOffsets[i]);

                PowerAverager.AddSample(accumulator * accumulator);
                SampleCounter = 0;
            }
        }
    }
}
