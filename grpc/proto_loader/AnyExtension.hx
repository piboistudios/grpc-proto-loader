package grpc.proto_loader;

/**
	This type exists for use with code generated by the proto-loader-gen-types
	tool. This type should be used with another interface, e.g.
	MessageType & AnyExtension for an object that is converted to or from a
	google.protobuf.Any message.
	For example, when processing an Any message:
	
	```ts
	if (isAnyExtension(message)) {
	   switch (message['@type']) {
	     case TYPE1_URL:
	       handleType1(message as AnyExtension & Type1);
	       break;
	     case TYPE2_URL:
	       handleType2(message as AnyExtension & Type2);
	       break;
	     // ...
	   }
	}
	```
**/
typedef AnyExtension = {
	/**
		The fully qualified name of the message type that this object represents,
		possibly including a URL prefix.
	**/
	@:native("@type")
	var type : String;
};