package grpc;

@:jsRequire("@grpc/proto-loader") @valueModuleOnly extern class ProtoLoader {
	static function isAnyExtension(obj:Dynamic):Bool;
	/**
		Load a .proto file with the specified options.
	**/
	static function load(filename:ts.AnyOf2<String, Array<String>>, ?options:grpc.proto_loader.Options):js.lib.Promise<grpc.proto_loader.PackageDefinition>;
	static function loadSync(filename:ts.AnyOf2<String, Array<String>>, ?options:grpc.proto_loader.Options):grpc.proto_loader.PackageDefinition;
	static function fromJSON(json:protobufjs.INamespace, ?options:grpc.proto_loader.Options):grpc.proto_loader.PackageDefinition;
	static function loadFileDescriptorSetFromBuffer(descriptorSet:global.Buffer, ?options:grpc.proto_loader.Options):grpc.proto_loader.PackageDefinition;
	static function loadFileDescriptorSetFromObject(descriptorSet:{ }, ?options:grpc.proto_loader.Options):grpc.proto_loader.PackageDefinition;
}