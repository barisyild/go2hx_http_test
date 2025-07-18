package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:interface typedef State = stdgo.StructType & {
    /**
        * Write is the function to call to emit formatted output to be printed.
        
        
    **/
    @:interfacetypeffun
    public dynamic function write(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    /**
        * Width returns the value of the width option and whether it has been set.
        
        
    **/
    @:interfacetypeffun
    public dynamic function width():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    /**
        * Precision returns the value of the precision option and whether it has been set.
        
        
    **/
    @:interfacetypeffun
    public dynamic function precision():{ var _0 : stdgo.GoInt; var _1 : Bool; };
    /**
        * Flag reports whether the flag c, a character, has been set.
        
        
    **/
    @:interfacetypeffun
    public dynamic function flag(_c:stdgo.GoInt):Bool;
};
