package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.MXResource_asInterface) class MXResource_static_extension {
    @:keep
    @:tdfield
    static public function goString( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2272"
        return (((((("dnsmessage.MXResource{Pref: " : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pref)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("MX: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mX.goString()?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pack( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource> = _r;
        var _oldMsg = _msg;
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pref);
        var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mX._pack(_msg, _compression, _compressionOff), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2264"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2265"
            return { _0 : _oldMsg, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("MXResource.MX" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2267"
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _realType( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource>):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2256"
        return (15 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
    }
}
