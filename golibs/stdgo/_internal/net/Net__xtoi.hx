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
function _xtoi(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _n = (0 : stdgo.GoInt), _i = (0 : stdgo.GoInt), _ok = false;
        _n = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L148"
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L149"
                if ((((48 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _n = (_n * ((16 : stdgo.GoInt)) : stdgo.GoInt);
                    _n = (_n + (((_s[(_i : stdgo.GoInt)] - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)) : stdgo.GoInt);
                } else if ((((97 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _n = (_n * ((16 : stdgo.GoInt)) : stdgo.GoInt);
                    _n = (_n + ((((_s[(_i : stdgo.GoInt)] - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) + (10 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                } else if ((((65 : stdgo.GoUInt8) <= _s[(_i : stdgo.GoInt)] : Bool) && (_s[(_i : stdgo.GoInt)] <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _n = (_n * ((16 : stdgo.GoInt)) : stdgo.GoInt);
                    _n = (_n + ((((_s[(_i : stdgo.GoInt)] - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt) + (10 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L159"
                    break;
                };
//"file:///Users/o/.go/go1.21.3/src/net/parse.go#L161"
                if ((_n >= (16777215 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L162"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : _i, _2 : false };
                        _n = __tmp__._0;
                        _i = __tmp__._1;
                        _ok = __tmp__._2;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L165"
        if (_i == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L166"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : _i, _2 : false };
                _n = __tmp__._0;
                _i = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L168"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _n, _1 : _i, _2 : true };
            _n = __tmp__._0;
            _i = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
