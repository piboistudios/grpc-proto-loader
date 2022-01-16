package long;

typedef Long = {
	/**
		The high 32 bits as a signed value.
	**/
	var high : Float;
	/**
		The low 32 bits as a signed value.
	**/
	var low : Float;
	/**
		Whether unsigned or not.
	**/
	var unsigned : Bool;
	/**
		Returns the sum of this and the specified Long.
	**/
	function add(addend:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Returns the bitwise AND of this Long and the specified.
	**/
	function and(other:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Compares this Long's value with the specified's.
	**/
	function compare(other:ts.AnyOf3<String, Float, Long>):Float;
	/**
		Compares this Long's value with the specified's.
	**/
	function comp(other:ts.AnyOf3<String, Float, Long>):Float;
	/**
		Returns this Long divided by the specified.
	**/
	function divide(divisor:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Returns this Long divided by the specified.
	**/
	function div(divisor:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Tests if this Long's value equals the specified's.
	**/
	function equals(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value equals the specified's.
	**/
	function eq(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Gets the high 32 bits as a signed integer.
	**/
	function getHighBits():Float;
	/**
		Gets the high 32 bits as an unsigned integer.
	**/
	function getHighBitsUnsigned():Float;
	/**
		Gets the low 32 bits as a signed integer.
	**/
	function getLowBits():Float;
	/**
		Gets the low 32 bits as an unsigned integer.
	**/
	function getLowBitsUnsigned():Float;
	/**
		Gets the number of bits needed to represent the absolute value of this Long.
	**/
	function getNumBitsAbs():Float;
	/**
		Tests if this Long's value is greater than the specified's.
	**/
	function greaterThan(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value is greater than the specified's.
	**/
	function gt(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value is greater than or equal the specified's.
	**/
	function greaterThanOrEqual(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value is greater than or equal the specified's.
	**/
	function gte(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value is even.
	**/
	function isEven():Bool;
	/**
		Tests if this Long's value is negative.
	**/
	function isNegative():Bool;
	/**
		Tests if this Long's value is odd.
	**/
	function isOdd():Bool;
	/**
		Tests if this Long's value is positive.
	**/
	function isPositive():Bool;
	/**
		Tests if this Long's value equals zero.
	**/
	function isZero():Bool;
	/**
		Tests if this Long's value is less than the specified's.
	**/
	function lessThan(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value is less than the specified's.
	**/
	function lt(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value is less than or equal the specified's.
	**/
	function lessThanOrEqual(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value is less than or equal the specified's.
	**/
	function lte(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Returns this Long modulo the specified.
	**/
	function modulo(other:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Returns this Long modulo the specified.
	**/
	function mod(other:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Returns the product of this and the specified Long.
	**/
	function multiply(multiplier:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Returns the product of this and the specified Long.
	**/
	function mul(multiplier:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Negates this Long's value.
	**/
	function negate():Long;
	/**
		Negates this Long's value.
	**/
	function neg():Long;
	/**
		Returns the bitwise NOT of this Long.
	**/
	function not():Long;
	/**
		Tests if this Long's value differs from the specified's.
	**/
	function notEquals(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Tests if this Long's value differs from the specified's.
	**/
	function neq(other:ts.AnyOf3<String, Float, Long>):Bool;
	/**
		Returns the bitwise OR of this Long and the specified.
	**/
	function or(other:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Returns this Long with bits shifted to the left by the given amount.
	**/
	function shiftLeft(numBits:ts.AnyOf2<Float, Long>):Long;
	/**
		Returns this Long with bits shifted to the left by the given amount.
	**/
	function shl(numBits:ts.AnyOf2<Float, Long>):Long;
	/**
		Returns this Long with bits arithmetically shifted to the right by the given amount.
	**/
	function shiftRight(numBits:ts.AnyOf2<Float, Long>):Long;
	/**
		Returns this Long with bits arithmetically shifted to the right by the given amount.
	**/
	function shr(numBits:ts.AnyOf2<Float, Long>):Long;
	/**
		Returns this Long with bits logically shifted to the right by the given amount.
	**/
	function shiftRightUnsigned(numBits:ts.AnyOf2<Float, Long>):Long;
	/**
		Returns this Long with bits logically shifted to the right by the given amount.
	**/
	function shru(numBits:ts.AnyOf2<Float, Long>):Long;
	/**
		Returns the difference of this and the specified Long.
	**/
	function subtract(subtrahend:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Returns the difference of this and the specified Long.
	**/
	function sub(subtrahend:ts.AnyOf3<String, Float, Long>):Long;
	/**
		Converts the Long to a 32 bit integer, assuming it is a 32 bit integer.
	**/
	function toInt():Float;
	/**
		Converts the Long to a the nearest floating-point representation of this value (double, 53 bit mantissa).
	**/
	function toNumber():Float;
	/**
		Converts this Long to its byte representation.
	**/
	function toBytes(?le:Bool):Array<Float>;
	/**
		Converts this Long to its little endian byte representation.
	**/
	function toBytesLE():Array<Float>;
	/**
		Converts this Long to its big endian byte representation.
	**/
	function toBytesBE():Array<Float>;
	/**
		Converts this Long to signed.
	**/
	function toSigned():Long;
	/**
		Converts the Long to a string written in the specified radix.
	**/
	function toString(?radix:Float):String;
	/**
		Converts this Long to unsigned.
	**/
	function toUnsigned():Long;
	/**
		Returns the bitwise XOR of this Long and the given one.
	**/
	function xor(other:ts.AnyOf3<String, Float, Long>):Long;
};