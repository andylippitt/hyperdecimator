namespace SerialTest
{
    using System;
    using System.IO;
    using System.IO.Ports;

    class Program
    {
        static void Main(string[] args)
        {
            var s = new SerialPort("COM4", 12000000, Parity.None, 8, StopBits.One);
            s.Open();

            var buffer = new byte[8192];

            int totalBytes = 0;

            DateTime started = DateTime.Now;
            using var output = File.OpenWrite("cap.2pdm");
            while (true)
            {
                int bytes = s.Read(buffer, 0, buffer.Length);
                output.Write(buffer, 0, bytes);
                totalBytes += bytes;

                var delta = DateTime.Now.Subtract(started);
                if (delta.TotalSeconds > 1)
                {
                    Console.Error.WriteLine($"{delta.TotalSeconds:0}:{totalBytes * 8 / delta.TotalSeconds / 1000:00}kbps");
                    started = DateTime.Now;
                    totalBytes = 0;
                }
            }
        }
    }
}
