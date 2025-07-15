package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Name_asInterface) class Name_static_extension {
    @:keep
    @:tdfield
    static public function _unpackCompressed( _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _allowCompression:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name> = _n;
        var _currOff_35:stdgo.GoInt = (0 : stdgo.GoInt);
        var _v_42:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _iterator_2783336_41:stdgo.GoInt = (0 : stdgo.GoInt);
        var _endOff_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _ptr_37:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newOff_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c1_43:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_39:stdgo.GoInt = (0 : stdgo.GoInt);
        var _name_38:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _currOff_35 = _off;
                    _newOff_36 = _off;
                    _name_38 = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 2782923i64;
                } else if (__value__ == (2782923i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 2782930i64;
                } else if (__value__ == (2782930i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 2782934i64;
                    } else {
                        _gotoNext = 2783993i64;
                    };
                } else if (__value__ == (2782934i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2025"
                    if ((_currOff_35 >= (_msg.length) : Bool)) {
                        _gotoNext = 2782961i64;
                    } else {
                        _gotoNext = 2782995i64;
                    };
                } else if (__value__ == (2782961i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2026"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errbaselen._errBaseLen };
                    _gotoNext = 2782995i64;
                } else if (__value__ == (2782995i64)) {
                    _c_39 = (_msg[(_currOff_35 : stdgo.GoInt)] : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2029"
                    _currOff_35++;
                    _gotoNext = 2783032i64;
                } else if (__value__ == (2783032i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2030"
                    {
                        final __value__ = (_c_39 & (192 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 2783052i64;
                        } else if (__value__ == ((192 : stdgo.GoInt))) {
                            _gotoNext = 2783523i64;
                        } else {
                            _gotoNext = 2783906i64;
                        };
                    };
                } else if (__value__ == (2783052i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2032"
                    if (_c_39 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2783097i64;
                    } else {
                        _gotoNext = 2783172i64;
                    };
                } else if (__value__ == (2783097i64)) {
                    loopBreak = true;
                    _gotoNext = 2782930i64;
                } else if (__value__ == (2783172i64)) {
                    _endOff_40 = (_currOff_35 + _c_39 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2037"
                    if ((_endOff_40 > (_msg.length) : Bool)) {
                        _gotoNext = 2783218i64;
                    } else {
                        _gotoNext = 2783324i64;
                    };
                } else if (__value__ == (2783218i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2038"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errcalclen._errCalcLen };
                    _gotoNext = 2783324i64;
                } else if (__value__ == (2783324i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2043"
                    if ((0i64 : stdgo.GoInt) < ((_msg.__slice__(_currOff_35, _endOff_40) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 2783422i64;
                    } else {
                        _gotoNext = 2783429i64;
                    };
                } else if (__value__ == (2783328i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2043"
                    _iterator_2783336_41++;
                    _gotoNext = 2783423i64;
                } else if (__value__ == (2783362i64)) {
                    _v_42 = (_msg.__slice__(_currOff_35, _endOff_40) : stdgo.Slice<stdgo.GoUInt8>)[(_iterator_2783336_41 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2044"
                    if (_v_42 == ((46 : stdgo.GoUInt8))) {
                        _gotoNext = 2783380i64;
                    } else {
                        _gotoNext = 2783328i64;
                    };
                } else if (__value__ == (2783380i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2045"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errinvalidname._errInvalidName };
                    _gotoNext = 2783328i64;
                } else if (__value__ == (2783422i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = (_msg.__slice__(_currOff_35, _endOff_40) : stdgo.Slice<stdgo.GoUInt8>)[(0i64 : stdgo.GoInt)];
                        _iterator_2783336_41 = @:binopAssign __tmp__0;
                        _v_42 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 2783423i64;
                } else if (__value__ == (2783423i64)) {
                    //"file://#L0"
                    if (_iterator_2783336_41 < ((_msg.__slice__(_currOff_35, _endOff_40) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 2783362i64;
                    } else {
                        _gotoNext = 2783429i64;
                    };
                } else if (__value__ == (2783429i64)) {
                    _name_38 = (_name_38.__append__(...((_msg.__slice__(_currOff_35, _endOff_40) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _name_38 = (_name_38.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _currOff_35 = _endOff_40;
                    _gotoNext = 2782930i64;
                } else if (__value__ == (2783523i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2053"
                    if (!_allowCompression) {
                        _gotoNext = 2783569i64;
                    } else {
                        _gotoNext = 2783612i64;
                    };
                } else if (__value__ == (2783569i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2054"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errcompressedsrv._errCompressedSRV };
                    _gotoNext = 2783612i64;
                } else if (__value__ == (2783612i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2056"
                    if ((_currOff_35 >= (_msg.length) : Bool)) {
                        _gotoNext = 2783635i64;
                    } else {
                        _gotoNext = 2783675i64;
                    };
                } else if (__value__ == (2783635i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2057"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errinvalidptr._errInvalidPtr };
                    _gotoNext = 2783675i64;
                } else if (__value__ == (2783675i64)) {
                    _c1_43 = _msg[(_currOff_35 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2060"
                    _currOff_35++;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2061"
                    if (_ptr_37 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2783722i64;
                    } else {
                        _gotoNext = 2783813i64;
                    };
                } else if (__value__ == (2783722i64)) {
                    _newOff_36 = _currOff_35;
                    _gotoNext = 2783813i64;
                } else if (__value__ == (2783813i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2065"
                    {
                        _ptr_37++;
                        if ((_ptr_37 > (10 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 2783832i64;
                        } else {
                            _gotoNext = 2783872i64;
                        };
                    };
                } else if (__value__ == (2783832i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2066"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyptr._errTooManyPtr };
                    _gotoNext = 2783872i64;
                } else if (__value__ == (2783872i64)) {
                    _currOff_35 = ((((_c_39 ^ (192 : stdgo.GoInt) : stdgo.GoInt)) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (_c1_43 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 2782930i64;
                } else if (__value__ == (2783906i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2071"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errreserved._errReserved };
                    _gotoNext = 2782930i64;
                } else if (__value__ == (2783993i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2074"
                    if ((_name_38.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2784011i64;
                    } else {
                        _gotoNext = 2784044i64;
                    };
                } else if (__value__ == (2784011i64)) {
                    _name_38 = (_name_38.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 2784044i64;
                } else if (__value__ == (2784044i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2077"
                    if (((_name_38.length) > (254 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 2784077i64;
                    } else {
                        _gotoNext = 2784112i64;
                    };
                } else if (__value__ == (2784077i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2078"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errnametoolong._errNameTooLong };
                    _gotoNext = 2784112i64;
                } else if (__value__ == (2784112i64)) {
                    (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ = (_name_38.length : stdgo.GoUInt8);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2081"
                    if (_ptr_37 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2784153i64;
                    } else {
                        _gotoNext = 2784178i64;
                    };
                } else if (__value__ == (2784153i64)) {
                    _newOff_36 = _currOff_35;
                    _gotoNext = 2784178i64;
                } else if (__value__ == (2784178i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2084"
                    return { _0 : _newOff_36, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _unpack( _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name>, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name> = _n;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2005"
        return _n._unpackCompressed(_msg, _off, true);
    }
    @:keep
    @:tdfield
    static public function _pack( _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name> = _n;
        var _oldMsg = _msg;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1943"
        if (((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ > (254 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1944"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errnametoolong._errNameTooLong };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1948"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ == (0 : stdgo.GoUInt8)) || ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data[(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1949"
            return { _0 : _oldMsg, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errnoncanonicalname._errNonCanonicalName };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1953"
        if ((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ == (1 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1954"
            return { _0 : (_msg.__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1958"
        {
            var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _begin = __1, _i = __0;
            while ((_i < ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_ : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1960"
                if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1964"
                    if (((_i - _begin : stdgo.GoInt) >= (64 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1965"
                        return { _0 : _oldMsg, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errsegtoolong._errSegTooLong };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1969"
                    if ((_i - _begin : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1970"
                        return { _0 : _oldMsg, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errzeroseglen._errZeroSegLen };
                    };
                    _msg = (_msg.__append__(((_i - _begin : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1975"
                    {
                        var _j = @:assignType (_begin : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            _msg = (_msg.__append__((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data[(_j : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                            _j++;
                        };
                    };
                    _begin = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1980"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1986"
                if (((((_i == (0 : stdgo.GoInt)) || ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) && (_compression != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1987"
                    {
                        var __tmp__ = (_compression != null && _compression.__exists__((((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__()) ? { _0 : _compression[(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _ptr:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1990"
                            return { _0 : (_msg.__append__((((_ptr >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) | (192 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8), (_ptr : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1995"
                    if (((_msg.length) <= ((16383 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
                        _compression[(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)] = ((_msg.length) - _compressionOff : stdgo.GoInt);
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2000"
        return { _0 : (_msg.__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function goString( _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name>):stdgo.GoString {
        @:recv var _n:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name> = _n;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1930"
        return ((("dnsmessage.MustNewName(\"" : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printstring._printString(((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data.__slice__(0, (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).length_) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__() : stdgo.GoString) + ("\")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _n:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name):stdgo.GoString {
        @:recv var _n:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = _n?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1925"
        return ((_n.data.__slice__(0, _n.length_) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
}
