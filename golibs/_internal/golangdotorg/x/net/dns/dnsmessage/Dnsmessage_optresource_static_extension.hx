package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.OPTResource_asInterface) class OPTResource_static_extension {
    @:keep
    @:tdfield
    static public function goString( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource> = _r;
        var _s = @:assignType (("dnsmessage.OPTResource{Options: []dnsmessage.Option{" : stdgo.GoString) : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2629"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).options.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2630"
            return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        _s = (_s + ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).options[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2633"
        if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).options.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option>) != null) for (__0 => _o in ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).options.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option>)) {
            _s = (_s + (((", " : stdgo.GoString) + _o.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2636"
        return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pack( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2617"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).options != null) for (__0 => _opt in (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).options) {
            _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, _opt.code);
            var _l = @:assignType (_opt.data.length : stdgo.GoUInt16);
            _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, _l);
            _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packbytes._packBytes(_msg, _opt.data);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2623"
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _realType( _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource>):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2613"
        return (41 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
    }
}
