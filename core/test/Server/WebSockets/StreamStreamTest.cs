using System.IO;
using Google.Protobuf;
using KRPC.Server.ProtocolBuffers;
using KRPC.Server.WebSockets;
using KRPC.Service.Messages;
using NUnit.Framework;

namespace KRPC.Test.Server.WebSockets
{
    [TestFixture]
    public class StreamStreamTest
    {
        StreamUpdate expectedUpdate;
        byte[] updateBytes;

        [SetUp]
        public void SetUp()
        {
            // Create a response object and get the binary representation of it
            var streamUpdate = new StreamUpdate();

            var result1 = new ProcedureResult();
            result1.Error = new Error("Foo", string.Empty);

            var streamResult1 = new StreamResult();
            streamResult1.Id = 1263;
            streamResult1.Result = result1;

            var result2 = new ProcedureResult();
            result2.Error = new Error("Bar", string.Empty);

            var streamResult2 = new StreamResult();
            streamResult1.Id = 3443;
            streamResult2.Result = result2;

            streamUpdate.Results.Add(streamResult1);
            streamUpdate.Results.Add(streamResult2);

            expectedUpdate = streamUpdate;
            using (var stream = new MemoryStream())
            {
                expectedUpdate.ToProtobufMessage().WriteTo(stream);
                stream.Flush();
                updateBytes = stream.ToArray();
            }
        }

        [Test]
        public void WriteSingleResponse()
        {
            var stream = new MemoryStream();
            var byteStream = new TestStream(null, stream);
            var streamStream = new KRPC.Server.WebSockets.StreamStream(byteStream);
            streamStream.Write(expectedUpdate);
            byte[] bytes = stream.ToArray();
            var frameBytes = Frame.Binary(updateBytes).ToBytes();
            Assert.AreEqual(frameBytes.ToHexString(), bytes.ToHexString());
            Assert.AreEqual(bytes.Length, streamStream.BytesWritten);
            Assert.AreEqual(0, streamStream.BytesRead);
            Assert.IsFalse(byteStream.Closed);
        }
    }
}
