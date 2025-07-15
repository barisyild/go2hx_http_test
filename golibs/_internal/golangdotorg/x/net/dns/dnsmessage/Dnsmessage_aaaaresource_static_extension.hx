package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.AAAAResource_asInterface) class AAAAResource_static_extension {
    @:keep
    @:tdfield
    static public function _pack( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2577"
        return { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packbytes._packBytes(_msg, ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).aAAA.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function goString( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2571"
        return ((("dnsmessage.AAAAResource{AAAA: [16]byte{" : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printbyteslice._printByteSlice(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).aAAA.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString) + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _realType( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource>):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2566"
        return (28 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
    }
}
