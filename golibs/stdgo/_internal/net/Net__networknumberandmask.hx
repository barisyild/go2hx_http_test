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
function _networkNumberAndMask(_n:stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>):{ var _0 : stdgo._internal.net.Net_ip.IP; var _1 : stdgo._internal.net.Net_ipmask.IPMask; } {
        var _ip = (new stdgo._internal.net.Net_ip.IP(0, 0) : stdgo._internal.net.Net_ip.IP), _m = (new stdgo._internal.net.Net_ipmask.IPMask(0, 0) : stdgo._internal.net.Net_ipmask.IPMask);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L425"
        {
            _ip = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP.to4();
            if (_ip == null) {
                _ip = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iP;
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L427"
                if ((_ip.length) != ((16 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L428"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_ip.IP; var _1 : stdgo._internal.net.Net_ipmask.IPMask; } = { _0 : null, _1 : null };
                        _ip = __tmp__._0;
                        _m = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        _m = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__()).mask;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L432"
        {
            final __value__ = (_m.length);
            if (__value__ == ((4 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L434"
                if ((_ip.length) != ((4 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L435"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_ip.IP; var _1 : stdgo._internal.net.Net_ipmask.IPMask; } = { _0 : null, _1 : null };
                        _ip = __tmp__._0;
                        _m = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((16 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L438"
                if ((_ip.length) == ((4 : stdgo.GoInt))) {
                    _m = (_m.__slice__((12 : stdgo.GoInt)) : stdgo._internal.net.Net_ipmask.IPMask);
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L442"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_ip.IP; var _1 : stdgo._internal.net.Net_ipmask.IPMask; } = { _0 : null, _1 : null };
                    _ip = __tmp__._0;
                    _m = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L444"
        return { _0 : _ip, _1 : _m };
    }
