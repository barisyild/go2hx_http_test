package stdgo.cmp;
typedef Ordered = stdgo._internal.cmp.Cmp_ordered.Ordered;
typedef OrderedPointer = stdgo._internal.cmp.Cmp_orderedpointer.OrderedPointer;
typedef OrderedPointerPointer = stdgo._internal.cmp.Cmp_orderedpointerpointer.OrderedPointerPointer;
/**
    * Package cmp provides types and functions related to comparing
    * ordered values.
**/
class Cmp {
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoInt8, _y:stdgo.GoInt8):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoInt16, _y:stdgo.GoInt16):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoInt32, _y:stdgo.GoInt32):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoInt64, _y:stdgo.GoInt64):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoUInt16, _y:stdgo.GoUInt16):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoUIntptr, _y:stdgo.GoUIntptr):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Less reports whether x is less than y.
        * For floating-point types, a NaN is considered less than any non-NaN,
        * and -0.0 is not less than (is equal to) 0.0.
    **/
    static public inline extern overload function less(_x:stdgo.GoString, _y:stdgo.GoString):Bool return stdgo._internal.cmp.Cmp_less.less(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoInt8, _y:stdgo.GoInt8):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoInt16, _y:stdgo.GoInt16):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoInt32, _y:stdgo.GoInt32):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoInt64, _y:stdgo.GoInt64):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoUInt8, _y:stdgo.GoUInt8):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoUInt16, _y:stdgo.GoUInt16):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoUInt32, _y:stdgo.GoUInt32):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoUInt64, _y:stdgo.GoUInt64):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoUIntptr, _y:stdgo.GoUIntptr):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoFloat32, _y:stdgo.GoFloat32):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
    /**
        * Compare returns
        * 
        * 	-1 if x is less than y,
        * 	 0 if x equals y,
        * 	+1 if x is greater than y.
        * 
        * For floating-point types, a NaN is considered less than any non-NaN,
        * a NaN is considered equal to a NaN, and -0.0 is equal to 0.0.
    **/
    static public inline extern overload function compare(_x:stdgo.GoString, _y:stdgo.GoString):stdgo.GoInt return stdgo._internal.cmp.Cmp_compare.compare(_x, _y);
}
