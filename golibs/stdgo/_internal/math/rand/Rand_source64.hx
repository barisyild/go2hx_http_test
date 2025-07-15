package stdgo._internal.math.rand;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.math.Math;
@:interface typedef Source64 = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function uint64():stdgo.GoUInt64;
    public dynamic function int63():stdgo.GoInt64;
    public dynamic function seed(_0:stdgo.GoInt64):Void;
};
