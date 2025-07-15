package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.TXTResource_asInterface) class TXTResource_static_extension {
    @:keep
    @:tdfield
    static public function goString( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource> = _r;
        var _s = @:assignType (("dnsmessage.TXTResource{TXT: []string{" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2450"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tXT.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2451"
            return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        _s = (_s + ((("\"" : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printstring._printString(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tXT[(0 : stdgo.GoInt)] : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2454"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tXT.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) != null) for (__0 => _t in ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tXT.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            _s = (_s + ((("\", \"" : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printstring._printString((_t : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2457"
        return (_s + ("\"}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pack( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource> = _r;
        var _oldMsg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2437"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tXT != null) for (__0 => _s in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tXT) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packtext._packText(_msg, _s?.__copy__());
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2440"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2441"
                return { _0 : _oldMsg, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2444"
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _realType( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource>):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2431"
        return (16 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
    }
}
