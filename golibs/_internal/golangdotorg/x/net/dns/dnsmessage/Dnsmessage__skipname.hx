package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
function _skipName(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _newOff_44:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_45:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _newOff_44 = _off;
                    _gotoNext = 2784441i64;
                } else if (__value__ == (2784441i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 2784448i64;
                } else if (__value__ == (2784448i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 2784452i64;
                    } else {
                        _gotoNext = 2785020i64;
                    };
                } else if (__value__ == (2784452i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2095"
                    if ((_newOff_44 >= (_msg.length) : Bool)) {
                        _gotoNext = 2784478i64;
                    } else {
                        _gotoNext = 2784512i64;
                    };
                } else if (__value__ == (2784478i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2096"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errbaselen._errBaseLen };
                    _gotoNext = 2784512i64;
                } else if (__value__ == (2784512i64)) {
                    _c_45 = (_msg[(_newOff_44 : stdgo.GoInt)] : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2099"
                    _newOff_44++;
                    _gotoNext = 2784547i64;
                } else if (__value__ == (2784547i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2100"
                    {
                        final __value__ = (_c_45 & (192 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 2784567i64;
                        } else if (__value__ == ((192 : stdgo.GoInt))) {
                            _gotoNext = 2784762i64;
                        } else {
                            _gotoNext = 2784932i64;
                        };
                    };
                } else if (__value__ == (2784567i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2102"
                    if (_c_45 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 2784594i64;
                    } else {
                        _gotoNext = 2784690i64;
                    };
                } else if (__value__ == (2784594i64)) {
                    loopBreak = true;
                    _gotoNext = 2784448i64;
                } else if (__value__ == (2784690i64)) {
                    _newOff_44 = (_newOff_44 + (_c_45) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2108"
                    if ((_newOff_44 > (_msg.length) : Bool)) {
                        _gotoNext = 2784726i64;
                    } else {
                        _gotoNext = 2784448i64;
                    };
                } else if (__value__ == (2784726i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2109"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errcalclen._errCalcLen };
                    _gotoNext = 2784448i64;
                } else if (__value__ == (2784762i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2115"
                    _newOff_44++;
                    loopBreak = true;
                    _gotoNext = 2784448i64;
                } else if (__value__ == (2784932i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2121"
                    return { _0 : _off, _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errreserved._errReserved };
                    _gotoNext = 2784448i64;
                } else if (__value__ == (2785020i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2125"
                    return { _0 : _newOff_44, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
