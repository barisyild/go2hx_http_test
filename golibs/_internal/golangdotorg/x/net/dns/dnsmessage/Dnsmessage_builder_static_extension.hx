package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Builder_asInterface) class Builder_static_extension {
    @:keep
    @:tdfield
    static public function finish( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1621"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section < (1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1622"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section = (6 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1626"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._pack(((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg.__slice__((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1627"
        return { _0 : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unknownResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1597"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1598"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1602"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1603"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1606"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1607"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("UnknownResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1609"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1610"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1612"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1613"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1616"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function oPTResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1573"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1574"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1578"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1579"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1582"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1583"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("OPTResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1585"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1586"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1588"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1589"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1592"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function aAAAResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1549"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1550"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1554"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1555"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1558"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1559"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("AAAAResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1561"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1562"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1564"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1565"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1568"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function aResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1525"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1526"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1530"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1531"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1534"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1535"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("AResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1537"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1538"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1540"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1541"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1544"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function sRVResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1501"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1502"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1506"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1507"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1510"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1511"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("SRVResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1513"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1514"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1516"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1517"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1520"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function tXTResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1477"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1478"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1482"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1483"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1486"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1487"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("TXTResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1489"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1490"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1492"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1493"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1496"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function sOAResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1453"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1454"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1458"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1459"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1462"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1463"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("SOAResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1465"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1466"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1468"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1469"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1472"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function pTRResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1429"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1430"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1434"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1435"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1438"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1439"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("PTRResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1441"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1442"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1444"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1445"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1448"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function nSResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1405"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1406"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1410"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1411"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1414"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1415"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("NSResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1417"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1418"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1420"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1421"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1424"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function mXResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1381"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1382"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1386"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1387"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1390"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1391"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("MXResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1393"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1394"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1396"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1397"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1400"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function cNAMEResource( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader, _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1357"
        {
            var _err = @:assignType (_b._checkResourceSection() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1358"
                return _err;
            };
        };
        _h.type = _r._realType();
        var __tmp__ = _h._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _lenOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1362"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1363"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("ResourceHeader" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        var _preLen = @:assignType (_msg.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1366"
        {
            {
                var __tmp__ = _r._pack(_msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start);
                _msg = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1367"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("CNAMEResource body" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1369"
        {
            var _err = @:assignType (_h._fixLen(_msg, _lenOff, _preLen) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1370"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1372"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1373"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1376"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkResourceSection( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1346"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section < (3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1347"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1349"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section > (5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1350"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1352"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function question( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _q:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1328"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section < (2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1329"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1331"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section > (2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1332"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
        };
        var __tmp__ = _q._pack((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._start), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1335"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1336"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1338"
        {
            var _err = @:assignType (_b._incrementSectionCount() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1339"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1342"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _incrementSectionCount( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        var _count:stdgo.Pointer<stdgo.GoUInt16> = (null : stdgo.Pointer<stdgo.GoUInt16>);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1305"
        {
            final __value__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section;
            if (__value__ == ((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                _count = stdgo.Go.pointer((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._questions);
                _err = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyquestions._errTooManyQuestions;
            } else if (__value__ == ((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                _count = stdgo.Go.pointer((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._answers);
                _err = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyanswers._errTooManyAnswers;
            } else if (__value__ == ((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                _count = stdgo.Go.pointer((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._authorities);
                _err = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyauthorities._errTooManyAuthorities;
            } else if (__value__ == ((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section))) {
                _count = stdgo.Go.pointer((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._additionals);
                _err = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyadditionals._errTooManyAdditionals;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1319"
        if (_count.value == ((65535 : stdgo.GoUInt16))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1320"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1322"
        _count.value++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1323"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function startAdditionals( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1295"
        {
            var _err = @:assignType (_b._startCheck((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1296"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section = (5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1299"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function startAuthorities( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1286"
        {
            var _err = @:assignType (_b._startCheck((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1287"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section = (4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1290"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function startAnswers( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1277"
        {
            var _err = @:assignType (_b._startCheck((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1278"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section = (3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1281"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function startQuestions( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1268"
        {
            var _err = @:assignType (_b._startCheck((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1269"
                return _err;
            };
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section = (2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1272"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _startCheck( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>, _s:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.Error {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1257"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section <= (0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1258"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1260"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section > _s : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1261"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1263"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function enableCompression( _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder.Builder> = _b;
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compression = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    }
}
