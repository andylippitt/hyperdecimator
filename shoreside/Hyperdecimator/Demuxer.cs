namespace Hyperdecimator
{
    class Demuxer
    {
        public static void Split(byte b, byte[] left, byte[] right)
        {

            left[0] = ((b & 0b1000_0000) == 0 ? 0 : 1);
            left[1] = ((b & 0b0100_0000) == 0 ? 0 : 1);
            left[2] = ((b & 0b0010_0000) == 0 ? 0 : 1);
            left[3] = ((b & 0b0001_0000) == 0 ? 0 : 1);

            right[0] = ((b & 0b0000_1000) == 0 ? 0 : 1);
            right[1] = ((b & 0b0000_0100) == 0 ? 0 : 1);
            right[2] = ((b & 0b0000_0010) == 0 ? 0 : 1);
            right[3] = ((b & 0b0000_0001) == 0 ? 0 : 1);
        }
    }
}
