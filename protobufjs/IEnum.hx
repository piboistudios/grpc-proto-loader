package protobufjs;

/**
	Reflected enum.
**/
typedef IEnum = {
	/**
		Enum values by id.
	**/
	var valuesById : { };
	/**
		Enum values by name.
	**/
	var values : { };
	/**
		Enum comment text.
	**/
	var comment : Null<String>;
	/**
		Value comment texts, if any.
	**/
	var comments : { };
	/**
		Reserved ranges, if any.
	**/
	var reserved : Array<ts.AnyOf2<String, Array<Float>>>;
	/**
		Converts this enum to an enum descriptor.
	**/
	function toJSON(?toJSONOptions:IToJSONOptions):IEnum_;
	/**
		Adds a value to this enum.
	**/
	function add(name:String, id:Float, ?comment:String):Enum_;
	/**
		Removes a value from this enum
	**/
	function remove(name:String):Enum_;
	/**
		Tests if the specified id is reserved.
	**/
	function isReservedId(id:Float):Bool;
	/**
		Tests if the specified name is reserved.
	**/
	function isReservedName(name:String):Bool;
	function toDescriptor(protoVersion:String):Dynamic;
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