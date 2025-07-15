package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
function parseMAC(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_hardwareaddr.HardwareAddr; var _1 : stdgo.Error; } {
        var _hw = (new stdgo._internal.net.Net_hardwareaddr.HardwareAddr(0, 0) : stdgo._internal.net.Net_hardwareaddr.HardwareAddr), _err = (null : stdgo.Error);
        var _x_80:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_79:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_86:Bool = false;
        var _i_85:stdgo.GoInt = (0 : stdgo.GoInt);
        var _x_84:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_83:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_82:Bool = false;
        var _i_81:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L40"
                    if (((_s.length) < (14 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4481746i64;
                    } else {
                        _gotoNext = 4481766i64;
                    };
                } else if (__value__ == (4481746i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4481766i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L44"
                    if (((_s[(2 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) || (_s[(2 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4481796i64;
                    } else if (_s[(4 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                        _gotoNext = 4482096i64;
                    } else {
                        _gotoNext = 4482456i64;
                    };
                } else if (__value__ == (4481796i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L45"
                    if (((((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) % (3 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _gotoNext = 4481821i64;
                    } else {
                        _gotoNext = 4481843i64;
                    };
                } else if (__value__ == (4481821i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4481843i64)) {
                    _n_79 = ((((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) / (3 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L49"
                    if (((_n_79 != ((6 : stdgo.GoInt)) && _n_79 != ((8 : stdgo.GoInt)) : Bool) && (_n_79 != (20 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4481898i64;
                    } else {
                        _gotoNext = 4481920i64;
                    };
                } else if (__value__ == (4481898i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4481920i64)) {
                    _hw = (new stdgo.Slice<stdgo.GoUInt8>((_n_79 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_hardwareaddr.HardwareAddr);
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _x_80 = @:binopAssign __tmp__0;
                        _i_81 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4481949i64;
                } else if (__value__ == (4481949i64)) {
                    //"file://#L0"
                    if ((_i_81 < _n_79 : Bool)) {
                        _gotoNext = 4481978i64;
                    } else {
                        _gotoNext = 4482475i64;
                    };
                } else if (__value__ == (4481978i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L55"
                    {
                        {
                            var __tmp__ = stdgo._internal.net.Net__xtoi2._xtoi2((_s.__slice__(_x_80) : stdgo.GoString)?.__copy__(), _s[(2 : stdgo.GoInt)]);
                            _hw[(_i_81 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _ok_82 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_82) {
                            _gotoNext = 4482037i64;
                        } else {
                            _gotoNext = 4482062i64;
                        };
                    };
                } else if (__value__ == (4482037i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4482062i64)) {
                    _x_80 = (_x_80 + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L53"
                    _i_81++;
                    _gotoNext = 4481949i64;
                } else if (__value__ == (4482096i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L61"
                    if (((((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) % (5 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                        _gotoNext = 4482121i64;
                    } else {
                        _gotoNext = 4482143i64;
                    };
                } else if (__value__ == (4482121i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4482143i64)) {
                    _n_83 = (((2 : stdgo.GoInt) * (((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) / (5 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L65"
                    if (((_n_83 != ((6 : stdgo.GoInt)) && _n_83 != ((8 : stdgo.GoInt)) : Bool) && (_n_83 != (20 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4482202i64;
                    } else {
                        _gotoNext = 4482224i64;
                    };
                } else if (__value__ == (4482202i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4482224i64)) {
                    _hw = (new stdgo.Slice<stdgo.GoUInt8>((_n_83 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_hardwareaddr.HardwareAddr);
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        _x_84 = @:binopAssign __tmp__0;
                        _i_85 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4482253i64;
                } else if (__value__ == (4482253i64)) {
                    //"file://#L0"
                    if ((_i_85 < _n_83 : Bool)) {
                        _gotoNext = 4482285i64;
                    } else {
                        _gotoNext = 4482475i64;
                    };
                } else if (__value__ == (4482285i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L71"
                    {
                        {
                            var __tmp__ = stdgo._internal.net.Net__xtoi2._xtoi2((_s.__slice__(_x_84, (_x_84 + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoUInt8));
                            _hw[(_i_85 : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _ok_86 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_86) {
                            _gotoNext = 4482344i64;
                        } else {
                            _gotoNext = 4482369i64;
                        };
                    };
                } else if (__value__ == (4482344i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4482369i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L74"
                    {
                        {
                            var __tmp__ = stdgo._internal.net.Net__xtoi2._xtoi2((_s.__slice__((_x_84 + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _s[(4 : stdgo.GoInt)]);
                            _hw[(_i_85 + (1 : stdgo.GoInt) : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                            _ok_86 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_86) {
                            _gotoNext = 4482412i64;
                        } else {
                            _gotoNext = 4482437i64;
                        };
                    };
                } else if (__value__ == (4482412i64)) {
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4482437i64)) {
                    _x_84 = (_x_84 + ((5 : stdgo.GoInt)) : stdgo.GoInt);
                    _i_85 = (_i_85 + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 4482253i64;
                } else if (__value__ == (4482456i64)) {
                    _gotoNext = 4482456i64;
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4482475i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L82"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_hardwareaddr.HardwareAddr; var _1 : stdgo.Error; } = { _0 : _hw, _1 : (null : stdgo.Error) };
                        _hw = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 4482491i64;
                } else if (__value__ == (4482491i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/mac.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_hardwareaddr.HardwareAddr; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("invalid MAC address" : stdgo.GoString), addr : _s?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
                        _hw = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
