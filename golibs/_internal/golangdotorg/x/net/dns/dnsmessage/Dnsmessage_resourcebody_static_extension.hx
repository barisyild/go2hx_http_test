package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep class ResourceBody_static_extension {
    @:interfacetypeffun
    static public function goString(t:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody):stdgo.GoString return t.goString();
    @:interfacetypeffun
    static public function _realType(t:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ return t._realType();
    @:interfacetypeffun
    static public function _pack(t:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourcebody.ResourceBody, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return t._pack(_msg, _compression, _compressionOff);
}
