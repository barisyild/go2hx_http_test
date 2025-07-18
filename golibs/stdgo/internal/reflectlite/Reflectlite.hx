package stdgo.internal.reflectlite;
var ptr : stdgo._internal.internal.abi.Abi_kind.Kind = 22i64;
var interface_ : stdgo._internal.internal.abi.Abi_kind.Kind = 20i64;
var slice : stdgo._internal.internal.abi.Abi_kind.Kind = 23i64;
var string : stdgo._internal.internal.abi.Abi_kind.Kind = 24i64;
var struct_ : stdgo._internal.internal.abi.Abi_kind.Kind = 25i64;
typedef Type_ = stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_;
typedef Value = stdgo._internal.internal.reflectlite.Reflectlite_value.Value;
typedef ValueError = stdgo._internal.internal.reflectlite.Reflectlite_valueerror.ValueError;
typedef Kind = stdgo._internal.internal.reflectlite.Reflectlite_kind.Kind;
typedef Type_Pointer = stdgo._internal.internal.reflectlite.Reflectlite_type_pointer.Type_Pointer;
typedef ValuePointer = stdgo._internal.internal.reflectlite.Reflectlite_valuepointer.ValuePointer;
typedef ValueErrorPointer = stdgo._internal.internal.reflectlite.Reflectlite_valueerrorpointer.ValueErrorPointer;
typedef KindPointer = stdgo._internal.internal.reflectlite.Reflectlite_kindpointer.KindPointer;
typedef Type_PointerPointer = stdgo._internal.internal.reflectlite.Reflectlite_type_pointerpointer.Type_PointerPointer;
typedef ValuePointerPointer = stdgo._internal.internal.reflectlite.Reflectlite_valuepointerpointer.ValuePointerPointer;
typedef ValueErrorPointerPointer = stdgo._internal.internal.reflectlite.Reflectlite_valueerrorpointerpointer.ValueErrorPointerPointer;
typedef KindPointerPointer = stdgo._internal.internal.reflectlite.Reflectlite_kindpointerpointer.KindPointerPointer;
/**
    * Package reflectlite implements lightweight version of reflect, not using
    * any package except for "runtime", "unsafe", and "internal/abi"
**/
class Reflectlite {
    /**
        * Swapper returns a function that swaps the elements in the provided
        * slice.
        * 
        * Swapper panics if the provided interface is not a slice.
    **/
    static public inline function swapper(_slice:stdgo.AnyInterface):(stdgo.GoInt, stdgo.GoInt) -> Void return stdgo._internal.internal.reflectlite.Reflectlite_swapper.swapper(_slice);
    /**
        * TypeOf returns the reflection Type that represents the dynamic type of i.
        * If i is a nil interface value, TypeOf returns nil.
    **/
    static public inline function typeOf(_i:stdgo.AnyInterface):stdgo._internal.internal.reflectlite.Reflectlite_type_.Type_ return stdgo._internal.internal.reflectlite.Reflectlite_typeof.typeOf(_i);
    /**
        * ValueOf returns a new Value initialized to the concrete value
        * stored in the interface i. ValueOf(nil) returns the zero Value.
    **/
    static public inline function valueOf(_i:stdgo.AnyInterface):stdgo._internal.internal.reflectlite.Reflectlite_value.Value return stdgo._internal.internal.reflectlite.Reflectlite_valueof.valueOf(_i);
}
