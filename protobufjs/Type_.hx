package protobufjs;

/**
	Reflected message type.
**/
@:jsRequire("protobufjs", "Type") extern class Type_ extends NamespaceBase {
	/**
		Constructs a new reflected message type instance.
	**/
	function new(name:String, ?options:{ });
	/**
		Message fields.
	**/
	public var fields : { };
	/**
		Oneofs declared within this namespace, if any.
	**/
	public var oneofs : { };
	/**
		Extension ranges, if any.
	**/
	public var extensions : Array<Array<Float>>;
	/**
		Reserved ranges, if any.
	**/
	public var reserved : Array<ts.AnyOf2<String, Array<Float>>>;
	/**
		Message fields by id.
	**/
	public final fieldsById : { };
	/**
		Fields of this message as an array for iteration.
	**/
	public final fieldsArray : Array<Field>;
	/**
		Oneofs of this message as an array for iteration.
	**/
	public final oneofsArray : Array<OneOf>;
	/**
		The registered constructor, if any registered, otherwise a generic constructor.
		Assigning a function replaces the internal constructor. If the function does not extend {@link Message} yet, its prototype will be setup accordingly and static methods will be populated. If it already extends {@link Message}, it will just replace the internal constructor.
	**/
	public var ctor : Constructor<{ }>;
	/**
		Converts this message type to a message type descriptor.
	**/
	public function toJSON(?toJSONOptions:IToJSONOptions):IType_;
	/**
		Adds a nested object to this type.
	**/
	public function add(object:ReflectionObject):Type_;
	/**
		Removes a nested object from this type.
	**/
	public function remove(object:ReflectionObject):Type_;
	/**
		Tests if the specified id is reserved.
	**/
	public function isReservedId(id:Float):Bool;
	/**
		Tests if the specified name is reserved.
	**/
	public function isReservedName(name:String):Bool;
	/**
		Creates a new message of this type using the specified properties.
	**/
	public function create(?properties:{ }):Message<{ }>;
	/**
		Sets up {@link Type#encode|encode}, {@link Type#decode|decode} and {@link Type#verify|verify}.
	**/
	public function setup():Type_;
	/**
		Encodes a message of this type. Does not implicitly {@link Type#verify|verify} messages.
	**/
	public function encode(message:ts.AnyOf2<Message<{ }>, { }>, ?writer:Writer):Writer;
	/**
		Encodes a message of this type preceeded by its byte length as a varint. Does not implicitly {@link Type#verify|verify} messages.
	**/
	public function encodeDelimited(message:ts.AnyOf2<Message<{ }>, { }>, ?writer:Writer):Writer;
	/**
		Decodes a message of this type.
	**/
	public function decode(reader:ts.AnyOf2<js.lib.Uint8Array, Reader>, ?length:Float):Message<{ }>;
	/**
		Decodes a message of this type preceeded by its byte length as a varint.
	**/
	public function decodeDelimited(reader:ts.AnyOf2<js.lib.Uint8Array, Reader>):Message<{ }>;
	/**
		Verifies that field values are valid and that required fields are present.
	**/
	public function verify(message:{ }):Null<String>;
	/**
		Creates a new message of this type from a plain object. Also converts values to their respective internal types.
	**/
	public function fromObject(object:{ }):Message<{ }>;
	/**
		Creates a plain object from a message of this type. Also converts values to other types if specified.
	**/
	public function toObject(message:Message<{ }>, ?options:IConversionOptions):{ };
	function toDescriptor(protoVersion:String):Dynamic;
	static var prototype : Type_;
	/**
		Generates a constructor function for the specified type.
	**/
	public static function generateConstructor(mtype:Type_):Codegen;
	/**
		Creates a message type from a message type descriptor.
	**/
	public static function fromJSON(name:String, json:IType_):Type_;
	/**
		Type decorator (TypeScript).
	**/
	public static function d<T>(?typeName:String):TypeDecorator<T>;
}