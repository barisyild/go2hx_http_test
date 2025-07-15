package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.SOAResource_asInterface) class SOAResource_static_extension {
    @:keep
    @:tdfield
    static public function goString( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2382"
        return ((((((((((((((((((((("dnsmessage.SOAResource{NS: " : stdgo.GoString) + (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nS.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("MBox: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mBox.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Serial: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint32._printUint32((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serial)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Refresh: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint32._printUint32((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).refresh)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Retry: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint32._printUint32((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).retry)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Expire: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint32._printUint32((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expire)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("MinTTL: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint32._printUint32((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minTTL)?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pack( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource> = _r;
        var _oldMsg = _msg;
        var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nS._pack(_msg, _compression, _compressionOff), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2366"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2367"
            return { _0 : _oldMsg, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("SOAResource.NS" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        {
            var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mBox._pack(_msg, _compression, _compressionOff);
            _msg = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2370"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2371"
            return { _0 : _oldMsg, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("SOAResource.MBox" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint32._packUint32(_msg, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serial);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint32._packUint32(_msg, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).refresh);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint32._packUint32(_msg, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).retry);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint32._packUint32(_msg, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expire);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2377"
        return { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint32._packUint32(_msg, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minTTL), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _realType( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource>):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2359"
        return (6 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
    }
}
