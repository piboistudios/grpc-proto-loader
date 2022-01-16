package protobufjs;

/**
	Root namespace wrapping all types, enums, services, sub-namespaces etc. that belong together.
**/
@:jsRequire("protobufjs", "Root") extern class Root extends NamespaceBase {
	/**
		Constructs a new root namespace instance.
	**/
	function new(?options:{ });
	/**
		Deferred extension fields.
	**/
	public var deferred : Array<Field>;
	/**
		Resolved file names of loaded files.
	**/
	public var files : Array<String>;
	/**
		Resolves the path of an imported file, relative to the importing origin.
		This method exists so you can override it with your own logic in case your imports are scattered over multiple directories.
	**/
	public function resolvePath(origin:String, target:String):Null<String>;
	/**
		Fetch content from file path or url
		This method exists so you can override it with your own logic.
	**/
	public function fetch(path:String, callback:FetchCallback):Void;
	/**
		Loads one or multiple .proto or preprocessed .json files into this root namespace and calls the callback.
		
		Loads one or multiple .proto or preprocessed .json files into this root namespace and calls the callback.
		
		Loads one or multiple .proto or preprocessed .json files into this root namespace and returns a promise.
	**/
	@:overload(function(filename:ts.AnyOf2<String, Array<String>>, callback:LoadCallback):Void { })
	@:overload(function(filename:ts.AnyOf2<String, Array<String>>, ?options:IParseOptions):js.lib.Promise<Root> { })
	public function load(filename:ts.AnyOf2<String, Array<String>>, options:IParseOptions, callback:LoadCallback):Void;
	/**
		Synchronously loads one or multiple .proto or preprocessed .json files into this root namespace (node only).
	**/
	public function loadSync(filename:ts.AnyOf2<String, Array<String>>, ?options:IParseOptions):Root;
	function toDescriptor(protoVersion:String):Dynamic;
	static var prototype : Root;
	/**
		Loads a namespace descriptor into a root namespace.
	**/
	public static function fromJSON(json:INamespace, ?root:Root):Root;
}