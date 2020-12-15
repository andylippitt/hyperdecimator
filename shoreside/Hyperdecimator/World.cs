namespace Hyperdecimator
{
    using System;
    using System.Numerics;

    class World
    {

        public Microphone[] Channels;
        public VirtualMicrophone[] Virtuals;

        public World()
        {
            Channels = new[] {
                new Microphone(this, new Vector3(0, 200, 0)),
                new Microphone(this, new Vector3(0, -200, 0))
            };


            Virtuals = new[]
            {
                new VirtualMicrophone(this, new Vector3(0, 1000, 0)),         // north
                new VirtualMicrophone(this, new Vector3(1000, 1000, 0)),      // northeast
                new VirtualMicrophone(this, new Vector3(1000, 0, 0)),         // east
                new VirtualMicrophone(this, new Vector3(1000, -1000, 0)),     // southeast 
                new VirtualMicrophone(this, new Vector3(0, -1000, 0))         // south
            };
        }

        public void Step()
        {
            foreach (var virtualMicrophone in Virtuals)
                virtualMicrophone.Step();
        }

        public float ArrivalDelta(Vector3 position)
        {
            return Vector3.Distance(position, Channels[0].Position)
                - Vector3.Distance(position, Channels[1].Position);
        }

        public float[,] GenerateDeltaField()
        {
            var field = new float[21, 21];
            int stepSize = 500;
            for (int stepX = -10; stepX <= 10; stepX++)
            {
                for (int stepY = -10; stepY <= 10; stepY++)
                {
                    var delta = ArrivalDelta(new Vector3(stepX * stepSize, stepY * stepSize, 0));

                    Console.WriteLine($"{stepX},{stepY},{delta}");
                    field[stepX + 10, stepY + 10] = ArrivalDelta(new Vector3(stepX * stepSize, stepY * stepSize, 0));
                }
            }

            return field;
        }
    }
}
