package protobufjs;

/**
	Reflected message type.
**/
typedef IType = {
	/**
		Message fields.
	**/
	var fields : { };
	/**
		Oneofs declared within this namespace, if any.
	**/
	var oneofs : { };
	/**
		Extension ranges, if any.
	**/
	var extensions : Array<Array<Float>>;
	/**
		Reserved ranges, if any.
	**/
	var reserved : Array<ts.AnyOf2<String, Array<Float>>>;
	/**
		Message fields by id.
	**/
	final fieldsById : { };
	/**
		Fields of this message as an array for iteration.
	**/
	final fieldsArray : Array<Field>;
	/**
		Oneofs of this message as an array for iteration.
	**/
	final oneofsArray : Array<OneOf>;
	/**
		The registered constructor, if any registered, otherwise a generic constructor.
		Assigning a function replaces the internal constructor. If the function does not extend {@link Message} yet, its prototype will be setup accordingly and static methods will be populated. If it already extends {@link Message}, it will just replace the internal constructor.
	**/
	var ctor : Constructor<{ }>;
	/**
		Converts this message type to a message type descriptor.
	**/
	function toJSON(?toJSONOptions:IToJSONOptions):IType_;
	/**
		Adds a nested object to this type.
	**/
	function add(object:ReflectionObject):Type_;
	/**
		Removes a nested object from this type.
	**/
	function remove(object:ReflectionObject):Type_;
	/**
		Tests if the specified id is reserved.
	**/
	function isReservedId(id:Float):Bool;
	/**
		Tests if the specified name is reserved.
	**/
	function isReservedName(name:String):Bool;
	/**
		Creates a new message of this type using the specified properties.
	**/
	function create(?properties:{ }):Message<{ }>;
	/**
		Sets up {@link Type#encode|encode}, {@link Type#decode|decode} and {@link Type#verify|verify}.
	**/
	function setup():Type_;
	/**
		Encodes a message of this type. Does not implicitly {@link Type#verify|verify} messages.
	**/
	function encode(message:ts.AnyOf2<Message<{ }>, { }>, ?writer:Writer):Writer;
	/**
		Encodes a message of this type preceeded by its byte length as a varint. Does not implicitly {@link Type#verify|verify} messages.
	**/
	function encodeDelimited(message:ts.AnyOf2<Message<{ }>, { }>, ?writer:Writer):Writer;
	/**
		Decodes a message of this type.
	**/
	function decode(reader:ts.AnyOf2<js.lib.Uint8Array, Reader>, ?length:Float):Message<{ }>;
	/**
		Decodes a message of this type preceeded by its byte length as a varint.
	**/
	function decodeDelimited(reader:ts.AnyOf2<js.lib.Uint8Array, Reader>):Message<{ }>;
	/**
		Verifies that field values are valid and that required fields are present.
	**/
	function verify(message:{ }):Null<String>;
	/**
		Creates a new message of this type from a plain object. Also converts values to their respective internal types.
	**/
	function fromObject(object:{ }):Message<{ }>;
	/**
		Creates a plain object from a message of this type. Also converts values to other types if specified.
	**/
	function toObject(message:Message<{ }>, ?options:IConversionOptions):{ };
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