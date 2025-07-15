package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:interface typedef ResourceBody = stdgo.StructType & {
    /**
        * pack packs a Resource except for its header.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _pack(_msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    /**
        * realType returns the actual type of the Resource. This is used to
        * fill in the header Type field.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _realType():_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_;
    /**
        * GoString implements fmt.GoStringer.GoString.
        
        
    **/
    @:interfacetypeffun
    public dynamic function goString():stdgo.GoString;
};
