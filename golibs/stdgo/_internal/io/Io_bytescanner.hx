package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef ByteScanner = stdgo.StructType & {
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function unreadByte():stdgo.Error;
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
};
