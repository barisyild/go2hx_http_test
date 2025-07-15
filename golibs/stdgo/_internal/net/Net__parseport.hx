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
function _parsePort(_service:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _port = (0 : stdgo.GoInt), _needsLookup = false;
        //"file:///Users/o/.go/go1.21.3/src/net/port.go#L16"
        if (_service == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/port.go#L19"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : false };
                _port = __tmp__._0;
                _needsLookup = __tmp__._1;
                __tmp__;
            };
        };
        {};
        var _neg = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/port.go#L26"
        if (_service[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _service = (_service.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (_service[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _neg = true;
            _service = (_service.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _n:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/port.go#L33"
        if (_service != null) for (__3 => _d in _service) {
            //"file:///Users/o/.go/go1.21.3/src/net/port.go#L34"
            if ((((48 : stdgo.GoInt32) <= _d : Bool) && (_d <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                _d = (_d - ((48 : stdgo.GoInt32)) : stdgo.GoInt32);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/port.go#L37"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : true };
                    _port = __tmp__._0;
                    _needsLookup = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/port.go#L39"
            if ((_n >= (1073741824u32 : stdgo.GoUInt32) : Bool)) {
                _n = (-1u32 : stdgo.GoUInt32);
                //"file:///Users/o/.go/go1.21.3/src/net/port.go#L41"
                break;
            };
            _n = (_n * ((10u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            var _nn = @:assignType (_n + (_d : stdgo.GoUInt32) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/port.go#L45"
            if (((_nn < _n : Bool) || (_nn > (-1u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                _n = (-1u32 : stdgo.GoUInt32);
                //"file:///Users/o/.go/go1.21.3/src/net/port.go#L47"
                break;
            };
            _n = _nn;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/port.go#L51"
        if ((!_neg && (_n >= (1073741824u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            _port = ((1073741823u32 : stdgo.GoUInt32) : stdgo.GoInt);
        } else if ((_neg && (_n > (1073741824u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            _port = ((1073741824u32 : stdgo.GoUInt32) : stdgo.GoInt);
        } else {
            _port = (_n : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/port.go#L58"
        if (_neg) {
            _port = -_port;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/port.go#L61"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _port, _1 : false };
            _port = __tmp__._0;
            _needsLookup = __tmp__._1;
            __tmp__;
        };
    }
