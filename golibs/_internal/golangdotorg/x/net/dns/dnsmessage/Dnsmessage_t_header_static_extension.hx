package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.T_header_asInterface) class T_header_static_extension {
    @:keep
    @:tdfield
    static public function _header( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header>):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header> = _h;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L463"
        return ({ iD : (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, response : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (32768 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), opCode : ((((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits >> (11i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode) & (15 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode), authoritative : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (1024 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), truncated : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (512 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), recursionDesired : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (256 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), recursionAvailable : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (128 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), authenticData : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (32 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), checkingDisabled : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (16 : stdgo.GoUInt16) : stdgo.GoUInt16)) != ((0 : stdgo.GoUInt16)), rCode : (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits & (15 : stdgo.GoUInt16) : stdgo.GoUInt16) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode) } : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header);
    }
    @:keep
    @:tdfield
    static public function _unpack( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header> = _h;
        var _newOff = @:assignType (_off : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L441"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L442"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("id" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L444"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L445"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("bits" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L447"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._questions = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L448"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("questions" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L450"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._answers = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L451"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("answers" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L453"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._authorities = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L454"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("authorities" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L456"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._additionals = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L457"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("additionals" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L459"
        return { _0 : _newOff, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _pack( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header>, _msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header> = _h;
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._questions);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._answers);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._authorities);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L435"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._additionals);
    }
    @:keep
    @:tdfield
    static public function _count( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header>, _sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.GoUInt16 {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header> = _h;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L415"
        {
            final __value__ = _sec;
            if (__value__ == ((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L417"
                return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._questions;
            } else if (__value__ == ((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L419"
                return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._answers;
            } else if (__value__ == ((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L421"
                return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._authorities;
            } else if (__value__ == ((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L423"
                return (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._additionals;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L425"
        return (0 : stdgo.GoUInt16);
    }
}
