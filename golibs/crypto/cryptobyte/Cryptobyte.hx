package crypto.cryptobyte;
typedef MarshalingValue = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_marshalingvalue.MarshalingValue;
typedef Builder = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder;
typedef BuildError = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderror.BuildError;
typedef BuilderContinuation = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation;
typedef String_ = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_;
typedef BuilderPointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderpointer.BuilderPointer;
typedef BuildErrorPointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderrorpointer.BuildErrorPointer;
typedef BuilderContinuationPointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuationpointer.BuilderContinuationPointer;
typedef String_Pointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_pointer.String_Pointer;
typedef BuilderPointerPointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderpointerpointer.BuilderPointerPointer;
typedef BuildErrorPointerPointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderrorpointerpointer.BuildErrorPointerPointer;
typedef BuilderContinuationPointerPointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuationpointerpointer.BuilderContinuationPointerPointer;
typedef String_PointerPointer = _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_pointerpointer.String_PointerPointer;
/**
    * Package cryptobyte contains types that help with parsing and constructing
    * length-prefixed, binary messages, including ASN.1 DER. (The asn1 subpackage
    * contains useful ASN.1 constants.)
    * 
    * The String type is for parsing. It wraps a []byte slice and provides helper
    * functions for consuming structures, value by value.
    * 
    * The Builder type is for constructing messages. It providers helper functions
    * for appending values and also for appending length-prefixed submessages –
    * without having to worry about calculating the length prefix ahead of time.
    * 
    * See the documentation and examples for the Builder and String types to get
    * started.
**/
class Cryptobyte {
    /**
        * NewBuilder creates a Builder that appends its output to the given buffer.
        * Like append(), the slice will be reallocated if its capacity is exceeded.
        * Use Bytes to get the final buffer.
    **/
    static public inline function newBuilder(_buffer:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> return _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_newbuilder.newBuilder(_buffer);
    /**
        * NewFixedBuilder creates a Builder that appends its output into the given
        * buffer. This builder does not reallocate the output buffer. Writes that
        * would exceed the buffer's capacity are treated as an error.
    **/
    static public inline function newFixedBuilder(_buffer:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> return _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_newfixedbuilder.newFixedBuilder(_buffer);
}
