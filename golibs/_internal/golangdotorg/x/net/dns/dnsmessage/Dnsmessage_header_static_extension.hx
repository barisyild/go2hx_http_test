package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Header_asInterface) class Header_static_extension {
    @:keep
    @:tdfield
    static public function goString( _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header> = _m;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L356"
        return (((((((((((((((((((((((("dnsmessage.Header{ID: " : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Response: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printbool._printBool((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).response)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("OpCode: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opCode.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Authoritative: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printbool._printBool((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authoritative)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Truncated: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printbool._printBool((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).truncated)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("RecursionDesired: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printbool._printBool((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recursionDesired)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("RecursionAvailable: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printbool._printBool((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recursionAvailable)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("RCode: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rCode.goString()?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pack( _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } {
        @:recv var _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header> = _m;
        var _id = (0 : stdgo.GoUInt16), _bits = (0 : stdgo.GoUInt16);
        _id = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD;
        _bits = ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opCode : stdgo.GoUInt16) << (11i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rCode : stdgo.GoUInt16) : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L330"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recursionAvailable) {
            _bits = (_bits | ((128 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L333"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).recursionDesired) {
            _bits = (_bits | ((256 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L336"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).truncated) {
            _bits = (_bits | ((512 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L339"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authoritative) {
            _bits = (_bits | ((1024 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L342"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).response) {
            _bits = (_bits | ((32768 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L345"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authenticData) {
            _bits = (_bits | ((32 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L348"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).checkingDisabled) {
            _bits = (_bits | ((16 : stdgo.GoUInt16)) : stdgo.GoUInt16);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L351"
        return { _0 : _id, _1 : _bits };
    }
}
