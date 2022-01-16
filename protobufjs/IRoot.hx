package protobufjs;

/**
	Root namespace wrapping all types, enums, services, sub-namespaces etc. that belong together.
**/
typedef IRoot = {
	/**
		Deferred extension fields.
	**/
	var deferred : Array<Field>;
	/**
		Resolved file names of loaded files.
	**/
	var files : Array<String>;
	/**
		Resolves the path of an imported file, relative to the importing origin.
		This method exists so you can override it with your own logic in case your imports are scattered over multiple directories.
	**/
	function resolvePath(origin:String, target:String):Null<String>;
	/**
		Fetch content from file path or url
		This method exists so you can override it with your own logic.
	**/
	function fetch(path:String, callback:FetchCallback):Void;
	/**
		Loads one or multiple .proto or preprocessed .json files into this root namespace and calls the callback.
		
		Loads one or multiple .proto or preprocessed .json files into this root namespace and calls the callback.
		
		Loads one or multiple .proto or preprocessed .json files into this root namespace and returns a promise.
	**/
	@:overload(function(filename:ts.AnyOf2<String, Array<String>>, callback:LoadCallback):Void { })
	@:overload(function(filename:ts.AnyOf2<String, Array<String>>, ?options:IParseOptions):js.lib.Promise<Root> { })
	function load(filename:ts.AnyOf2<String, Array<String>>, options:IParseOptions, callback:LoadCallback):Void;
	/**
		Synchronously loads one or multiple .proto or preprocessed .json files into this root namespace (node only).
	**/
	function loadSync(filename:ts.AnyOf2<String, Array<String>>, ?options:IParseOptions):Root;
	function toDescriptor(protoVersion:String):Dynamic;
	/**
		Nested objects by name.
	**/
	@:optional
	var nested : { };
	/**
		Nested objects of this namespace as an array for iteration.
	**/
	final nestedArray : Array<ReflectionObject>;
	/**
		Converts this namespace to a namespace descriptor.
	**/
	function toJSON(?toJSONOptions:IToJSONOptions):INamespace;
	/**
		Adds nested objects to this namespace from nested object descriptors.
	**/
	function addJSON(nestedJson:{ }):Namespace;
	/**
		Gets the nested object of the specified name.
	**/
	function get(name:String):Null<ReflectionObject>;
	/**
		Gets the values of the nested {@link Enum|enum} of the specified name.
		This methods differs from {@link Namespace#get|get} in that it returns an enum's values directly and throws instead of returning `null`.
	**/
	function getEnum(name:String):{ };
	/**
		Adds a nested object to this namespace.
	**/
	function add(object:ReflectionObject):Namespace;
	/**
		Removes a nested object from this namespace.
	**/
	function remove(object:ReflectionObject):Namespace;
	/**
		Defines additial namespaces within this one if not yet existing.
	**/
	function define(path:ts.AnyOf2<String, Array<String>>, ?json:Dynamic):Namespace;
	/**
		Resolves this namespace's and all its nested objects' type references. Useful to validate a reflection tree, but comes at a cost.
	**/
	function resolveAll():Namespace;
	/**
		Recursively looks up the reflection object matching the specified path in the scope of this namespace.
		
		Looks up the reflection object at the specified path, relative to this namespace.
	**/
	@:overload(function(path:ts.AnyOf2<String, Array<String>>, ?parentAlreadyChecked:Bool):Null<ReflectionObject> { })
	function lookup(path:ts.AnyOf2<String, Array<String>>, filterTypes:Dynamic, ?parentAlreadyChecked:Bool):Null<ReflectionObject>;
	/**
		Looks up the {@link Type|type} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	function lookupType(path:ts.AnyOf2<String, Array<String>>):Type_;
	/**
		Looks up the values of the {@link Enum|enum} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	function lookupEnum(path:ts.AnyOf2<String, Array<String>>):Enum_;
	/**
		Looks up the {@link Type|type} or {@link Enum|enum} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	function lookupTypeOrEnum(path:ts.AnyOf2<String, Array<String>>):Type_;
	/**
		Looks up the {@link Service|service} at the specified path, relative to this namespace.
		Besides its signature, this methods differs from {@link Namespace#lookup|lookup} in that it throws instead of returning `null`.
	**/
	function lookupService(path:ts.AnyOf2<String, Array<String>>):Service;
	/**
		Options.
	**/
	@:optional
	var options : { };
	/**
		Parsed Options.
	**/
	@:optional
	var parsedOptions : { };
	/**
		Unique name within its namespace.
	**/
	var name : String;
	/**
		Parent namespace.
	**/
	var parent : Null<Namespace>;
	/**
		Whether already resolved or not.
	**/
	var resolved : Bool;
	/**
		Comment text, if any.
	**/
	var comment : Null<String>;
	/**
		Defining file name.
	**/
	var filename : Null<String>;
	/**
		Reference to the root namespace.
	**/
	final root : Root;
	/**
		Full name including leading dot.
	**/
	final fullName : String;
	/**
		Called when this object is added to a parent.
	**/
	function onAdd(parent:ReflectionObject):Void;
	/**
		Called when this object is removed from a parent.
	**/
	function onRemove(parent:ReflectionObject):Void;
	/**
		Resolves this objects type references.
	**/
	function resolve():ReflectionObject;
	/**
		Gets an option value.
	**/
	function getOption(name:String):Dynamic;
	/**
		Sets an option.
	**/
	function setOption(name:String, value:Dynamic, ?ifNotSet:Bool):ReflectionObject;
	/**
		Sets a parsed option.
	**/
	function setParsedOption(name:String, value:Dynamic, propName:String):ReflectionObject;
	/**
		Sets multiple options.
	**/
	function setOptions(options:{ }, ?ifNotSet:Bool):ReflectionObject;
	/**
		Converts this instance to its string representation.
	**/
	function toString():String;
};