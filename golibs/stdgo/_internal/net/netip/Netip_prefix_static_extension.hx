package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
@:keep @:allow(stdgo._internal.net.netip.Netip.Prefix_asInterface) class Prefix_static_extension {
    @:keep
    @:tdfield
    static public function string( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo.GoString {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1478"
        if (!_p.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1479"
            return ("invalid Prefix" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1481"
        return (((_p._ip.string() : stdgo.GoString) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_itoa.itoa(_p.bits())?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unmarshalBinary( _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1464"
        if (((_b.length) < (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1465"
            return stdgo._internal.errors.Errors_new_.new_(("unexpected slice size" : stdgo.GoString));
        };
        var _addr:stdgo._internal.net.netip.Netip_addr.Addr = ({} : stdgo._internal.net.netip.Netip_addr.Addr);
        var _err = @:assignType (_addr.unmarshalBinary((_b.__slice__(0, ((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1469"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1470"
            return _err;
        };
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_prefixfrom.prefixFrom(_addr?.__copy__(), (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt))?.__copy__();
            var x = (_p : stdgo._internal.net.netip.Netip_prefix.Prefix);
            x._ip = __tmp__?._ip;
            x._bitsPlusOne = __tmp__?._bitsPlusOne;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1473"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalBinary( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        var _b = _p.addr()._withoutZone()._marshalBinaryWithTrailingBytes((1 : stdgo.GoInt));
        _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_p.bits() : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1458"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.net.netip.Netip_prefix.Prefix> = _p;
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1443"
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix);
                var x = (_p : stdgo._internal.net.netip.Netip_prefix.Prefix);
                x._ip = __tmp__?._ip;
                x._bitsPlusOne = __tmp__?._bitsPlusOne;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1445"
            return (null : stdgo.Error);
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_parseprefix.parsePrefix((_text : stdgo.GoString)?.__copy__());
            var x = _p;
            x._ip = @:tmpset0 __tmp__._0?.__copy__()?._ip;
            x._bitsPlusOne = @:tmpset0 __tmp__._0?.__copy__()?._bitsPlusOne;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1449"
        return _err;
    }
    @:keep
    @:tdfield
    static public function marshalText( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        var _max:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1427"
        {
            final __value__ = _p._ip._z;
            if (__value__ == (stdgo._internal.net.netip.Netip__z0._z0)) {} else if (__value__ == (stdgo._internal.net.netip.Netip__z4._z4)) {
                _max = ((("255.255.255.255/32" : stdgo.GoString) : stdgo.GoString).length);
            } else {
                _max = ((("ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff%enp5s0/128" : stdgo.GoString) : stdgo.GoString).length);
            };
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _max).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = _p.appendTo(_b);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1436"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function appendTo( _p:stdgo._internal.net.netip.Netip_prefix.Prefix, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1398"
        if (_p._isZero()) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1399"
            return _b;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1401"
        if (!_p.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1402"
            return (_b.__append__(...((("invalid Prefix" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1406"
        if (_p._ip._z == (stdgo._internal.net.netip.Netip__z4._z4)) {
            _b = _p._ip._appendTo4(_b);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1409"
            if (_p._ip.is4In6()) {
                _b = (_b.__append__(...((("::ffff:" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _b = _p._ip.unmap()._appendTo4(_b);
            } else {
                _b = _p._ip._appendTo6(_b);
            };
        };
        _b = (_b.__append__((47 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = stdgo._internal.net.netip.Netip__appenddecimal._appendDecimal(_b, (_p.bits() : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1419"
        return _b;
    }
    @:keep
    @:tdfield
    static public function overlaps( _p:stdgo._internal.net.netip.Netip_prefix.Prefix, _o:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1362"
        if ((!_p.isValid() || !_o.isValid() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1363"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1365"
        if (new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_prefixdotprefix.__type__stdgodot_internaldotnetdotnetipdotNetip_prefixdotPrefix)) == new stdgo.AnyInterface(_o, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_prefixdotprefix.__type__stdgodot_internaldotnetdotnetipdotNetip_prefixdotPrefix))) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1366"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1368"
        if (_p._ip.is4() != (_o._ip.is4())) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1369"
            return false;
        };
        var _minBits:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1372"
        {
            var __0 = @:assignType (_p.bits() : stdgo.GoInt), __1 = @:assignType (_o.bits() : stdgo.GoInt);
var _ob = __1, _pb = __0;
            if ((_pb < _ob : Bool)) {
                _minBits = _pb;
            } else {
                _minBits = _ob;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1377"
        if (_minBits == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1378"
            return true;
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1385"
        {
            {
                var __tmp__ = _p._ip.prefix(_minBits);
                _p = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1386"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1388"
        {
            {
                var __tmp__ = _o._ip.prefix(_minBits);
                _o = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1389"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1391"
        return new stdgo.AnyInterface(_p._ip, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_addrdotaddr.__type__stdgodot_internaldotnetdotnetipdotNetip_addrdotAddr)) == new stdgo.AnyInterface(_o._ip, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_addrdotaddr.__type__stdgodot_internaldotnetdotnetipdotNetip_addrdotAddr));
    }
    @:keep
    @:tdfield
    static public function contains( _p:stdgo._internal.net.netip.Netip_prefix.Prefix, _ip:stdgo._internal.net.netip.Netip_addr.Addr):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1332"
        if ((!_p.isValid() || _ip._hasZone() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1333"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1335"
        {
            var __0 = @:assignType (_p._ip.bitLen() : stdgo.GoInt), __1 = @:assignType (_ip.bitLen() : stdgo.GoInt);
var _f2 = __1, _f1 = __0;
            if (((_f1 == ((0 : stdgo.GoInt)) || _f2 == ((0 : stdgo.GoInt)) : Bool) || (_f1 != _f2) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1336"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1338"
        if (_ip.is4()) {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1347"
            return ((((_ip._addr._lo ^ _p._ip._addr._lo : stdgo.GoUInt64)) >> (((((32 : stdgo.GoInt) - _p.bits() : stdgo.GoInt)) & (63 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt64) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1352"
            return _ip._addr._xor(_p._ip._addr?.__copy__())._and(stdgo._internal.net.netip.Netip__mask6._mask6(_p.bits())?.__copy__())._isZero();
        };
    }
    @:keep
    @:tdfield
    static public function masked( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo._internal.net.netip.Netip_prefix.Prefix {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        var __tmp__ = _p._ip.prefix(_p.bits()), _m:stdgo._internal.net.netip.Netip_prefix.Prefix = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1321"
        return _m?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isSingleIP( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1267"
        return (_p.isValid() && (_p.bits() == _p._ip.bitLen()) : Bool);
    }
    @:keep
    @:tdfield
    static public function _isZero( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1264"
        return new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_prefixdotprefix.__type__stdgodot_internaldotnetdotnetipdotNetip_prefixdotPrefix)) == new stdgo.AnyInterface((new stdgo._internal.net.netip.Netip_prefix.Prefix() : stdgo._internal.net.netip.Netip_prefix.Prefix), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_prefixdotprefix.__type__stdgodot_internaldotnetdotnetipdotNetip_prefixdotPrefix));
    }
    @:keep
    @:tdfield
    static public function isValid( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):Bool {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1262"
        return (_p._bitsPlusOne > (0 : stdgo.GoUInt8) : Bool);
    }
    @:keep
    @:tdfield
    static public function bits( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo.GoInt {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1257"
        return ((_p._bitsPlusOne : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function addr( _p:stdgo._internal.net.netip.Netip_prefix.Prefix):stdgo._internal.net.netip.Netip_addr.Addr {
        @:recv var _p:stdgo._internal.net.netip.Netip_prefix.Prefix = _p?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/netip/netip.go#L1252"
        return _p._ip?.__copy__();
    }
}
