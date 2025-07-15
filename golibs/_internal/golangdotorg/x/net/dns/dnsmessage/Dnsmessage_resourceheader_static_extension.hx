package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.ResourceHeader_asInterface) class ResourceHeader_static_extension {
    @:keep
    @:tdfield
    static public function extendedRCode( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader>, _rcode:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode):_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader> = _h;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1754"
        if (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL & (16711680u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1755"
            return (((((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode) | _rcode : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1757"
        return _rcode;
    }
    @:keep
    @:tdfield
    static public function dNSSECAllowed( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader>):Bool {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader> = _h;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1747"
        return ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL & (16744448u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((32768u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function setEDNS0( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader>, _udpPayloadLen:stdgo.GoInt, _extRCode:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode, _dnssecOK:Bool):stdgo.Error {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader> = _h;
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name = ({ data : (new stdgo.GoArray<stdgo.GoUInt8>(255, 255, ...[(46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__(), length_ : (1 : stdgo.GoUInt8) } : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type = (41 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).class_ = (_udpPayloadLen : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL = (((_extRCode : stdgo.GoUInt32) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1739"
        if (_dnssecOK) {
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL | ((32768u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1742"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _fixLen( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader>, _msg:stdgo.Slice<stdgo.GoUInt8>, _lenOff:stdgo.GoInt, _preLen:stdgo.GoInt):stdgo.Error {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader> = _h;
        var _conLen = @:assignType ((_msg.length) - _preLen : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1711"
        if ((_conLen > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1712"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errrestoolong._errResTooLong;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1716"
        _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16((_msg.__slice__(_lenOff, _lenOff) : stdgo.Slice<stdgo.GoUInt8>), (_conLen : stdgo.GoUInt16));
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ = (_conLen : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1719"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _unpack( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader> = _h;
        var _newOff = @:assignType (_off : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1685"
        {
            {
                var __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name._unpack(_msg, _newOff);
                _newOff = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1686"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Name" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1688"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacktype._unpackType(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1689"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Type" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1691"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackclass._unpackClass(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).class_ = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1692"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Class" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1694"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint32._unpackUint32(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1695"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("TTL" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1697"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackuint16._unpackUint16(_msg, _newOff);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ = @:tmpset0 __tmp__._0;
                _newOff = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1698"
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Length" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1700"
        return { _0 : _newOff, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _pack( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader>, _oldMsg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader> = _h;
        var _msg = (null : stdgo.Slice<stdgo.GoUInt8>), _lenOff = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _msg = _oldMsg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1671"
        {
            {
                var __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name._pack(_msg, _compression, _compressionOff);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1672"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _oldMsg, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Name" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                    _msg = __tmp__._0;
                    _lenOff = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packtype._packType(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packclass._packClass(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).class_);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint32._packUint32(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL);
        _lenOff = (_msg.length);
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packuint16._packUint16(_msg, (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1679"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _msg, _1 : _lenOff, _2 : (null : stdgo.Error) };
            _msg = __tmp__._0;
            _lenOff = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function goString( _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader>):stdgo.GoString {
        @:recv var _h:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader> = _h;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1658"
        return ((((((((((((((("dnsmessage.ResourceHeader{Name: " : stdgo.GoString) + (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Type: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Class: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).class_.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("TTL: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint32._printUint32((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tTL)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Length: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_)?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
