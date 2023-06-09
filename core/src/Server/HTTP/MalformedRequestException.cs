using System;

namespace KRPC.Server.HTTP
{
    sealed class MalformedRequestException : ServerException
    {
        public MalformedRequestException()
        {
        }

        public MalformedRequestException(string message) : base(message)
        {
        }

        public MalformedRequestException(string message, Exception innerException) : base(message, innerException)
        {
        }
    }
}
