package grpc.proto_loader;

typedef MethodDefinition<RequestType, ResponseType, OutputRequestType, OutputResponseType> = {
	var path : String;
	var requestStream : Bool;
	var responseStream : Bool;
	dynamic function requestSerialize(value:RequestType):global.Buffer;
	dynamic function responseSerialize(value:ResponseType):global.Buffer;
	dynamic function requestDeserialize(bytes:global.Buffer):OutputRequestType;
	dynamic function responseDeserialize(bytes:global.Buffer):OutputResponseType;
	@:optional
	var originalName : String;
	var requestType : MessageTypeDefinition;
	var responseType : MessageTypeDefinition;
};