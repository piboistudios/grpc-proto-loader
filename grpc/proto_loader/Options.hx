package grpc.proto_loader;

typedef Options = protobufjs.IParseOptions & protobufjs.IConversionOptions & {
	@:optional
	var includeDirs : Array<String>;
};