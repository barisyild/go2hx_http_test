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
function _commonPrefixLen(_a:stdgo._internal.net.netip.Netip_addr.Addr, _b:stdgo._internal.net.Net_ip.IP):stdgo.GoInt {
        var _cpl = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L344"
        {
            var _b4 = @:assignType (_b.to4() : stdgo._internal.net.Net_ip.IP);
            if (_b4 != null) {
                _b = _b4;
            };
        };
        var _aAsSlice = _a.asSlice();
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L348"
        if ((_aAsSlice.length) != ((_b.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L349"
            return _cpl = (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L352"
        if (((_aAsSlice.length) > (8 : stdgo.GoInt) : Bool)) {
            _aAsSlice = (_aAsSlice.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__slice__(0, (8 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L356"
        while (((_aAsSlice.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L357"
            if (_aAsSlice[(0 : stdgo.GoInt)] == (_b[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                _cpl = (_cpl + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                _aAsSlice = (_aAsSlice.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP);
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L361"
                continue;
            };
            var _bits = @:assignType (8 : stdgo.GoInt);
            var __0 = @:assignType (_aAsSlice[(0 : stdgo.GoInt)] : stdgo.GoUInt8), __1 = @:assignType (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
var _bb = __1, _ab = __0;
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L365"
            while (true) {
                _ab = (_ab >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                _bb = (_bb >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L368"
                _bits--;
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L369"
                if (_ab == (_bb)) {
                    _cpl = (_cpl + (_bits) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L371"
                    return _cpl;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L375"
        return _cpl;
    }
