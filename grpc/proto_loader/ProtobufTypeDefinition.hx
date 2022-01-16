package grpc.proto_loader;

typedef ProtobufTypeDefinition = {
	var format : String;
	var type : Dynamic;
	var fileDescriptorProtos : Array<global.Buffer>;
};