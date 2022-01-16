package grpc.proto_loader;

typedef MessageTypeDefinition = {
	var format : String;
	var type : Dynamic;
	var fileDescriptorProtos : Array<global.Buffer>;
};