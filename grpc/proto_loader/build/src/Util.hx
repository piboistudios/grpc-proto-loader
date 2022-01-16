package grpc.proto_loader.build.src;

@:jsRequire("@grpc/proto-loader/build/src/util") @valueModuleOnly extern class Util {
	static function loadProtosWithOptions(filename:ts.AnyOf2<String, Array<String>>, ?options:grpc.proto_loader.Options):js.lib.Promise<protobufjs.Root>;
	static function loadProtosWithOptionsSync(filename:ts.AnyOf2<String, Array<String>>, ?options:grpc.proto_loader.Options):protobufjs.Root;
	/**
		Load Google's well-known proto files that aren't exposed by Protobuf.js.
	**/
	static function addCommonProtos():Void;
}