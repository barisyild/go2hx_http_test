package stdgo._internal.crypto.ecdh;
@:interface typedef T_nistPoint<T_> = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function bytes<T_>():stdgo.Slice<stdgo.GoUInt8>;
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function bytesX<T_>():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function setBytes<T_>(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : T_; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarMult<T_>(_0:T_, _1:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : T_; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function scalarBaseMult<T_>(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : T_; var _1 : stdgo.Error; };
};
