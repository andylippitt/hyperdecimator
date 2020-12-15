namespace Hyperdecimator
{
    using System.IO;
    using System.Net.Sockets;
    using System.Threading.Tasks;

    class Source
    {
        public async static Task<Stream> OpenRemote(string host, int port)
        {
            var client = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
            await client.ConnectAsync(host, 3333);
            return new BufferedStream(new NetworkStream(client));
        }
    }
}
