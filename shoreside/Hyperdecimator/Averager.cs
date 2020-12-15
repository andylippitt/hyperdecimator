namespace Hyperdecimator
{
    using System.Linq;

    class Averager
    {
        private float[] Buffer;
        private int Index = 0;
        public float Value = 0;
        public int Depth = 0;

        public Averager(int depth)
        {
            this.Depth = depth;
            Buffer = new float[depth];
            Value = 0;
        }
        
        public float AddSample(float newSample)
        {
            Value -= Buffer[Index % Depth];
            Value += newSample;
            Buffer[Index % Depth] = newSample;
            Index++;

            if (Index < Depth)
                return (int)Buffer.Take(Index).Average(b => b);
            
            return Value;
        }
    }
}
