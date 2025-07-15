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
@:keep @:allow(stdgo._internal.net.Net.T_byPriorityWeight_asInterface) class T_byPriorityWeight_static_extension {
    @:keep
    @:tdfield
    static public function _sort( _addrs:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight):Void {
        @:recv var _addrs:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight = _addrs;
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L192"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_addrs, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_bypriorityweightdott_bypriorityweight.__type__stdgodot_internaldotnetdotNet_t_bypriorityweightdotT_byPriorityWeight));
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L194"
        {
            var _j = @:assignType (1 : stdgo.GoInt);
            while ((_j < (_addrs.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L195"
                if ((@:checkr _addrs[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority != ((@:checkr _addrs[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L196"
                    (_addrs.__slice__(_i, _j) : stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight)._shuffleByWeight();
                    _i = _j;
                };
                _j++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L200"
        (_addrs.__slice__(_i) : stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight)._shuffleByWeight();
    }
    @:keep
    @:tdfield
    static public function _shuffleByWeight( _addrs:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight):Void {
        @:recv var _addrs:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight = _addrs;
        var _sum = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L170"
        if (_addrs != null) for (__3 => _addr in _addrs) {
            _sum = (_sum + (((@:checkr _addr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).weight : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L173"
        while (((_sum > (0 : stdgo.GoInt) : Bool) && ((_addrs.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            var _s = @:assignType (0 : stdgo.GoInt);
            var _n = @:assignType (stdgo._internal.net.Net__randintn._randIntn(_sum) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L176"
            if (_addrs != null) for (_i => _ in _addrs) {
                _s = (_s + (((@:checkr _addrs[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).weight : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L178"
                if ((_s > _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L179"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        {
                            final __tmp__0 = _addrs[(_i : stdgo.GoInt)];
                            final __tmp__1 = _addrs[(0 : stdgo.GoInt)];
                            final __tmp__2 = _addrs;
                            final __tmp__3 = (0 : stdgo.GoInt);
                            final __tmp__4 = _addrs;
                            final __tmp__5 = (_i : stdgo.GoInt);
                            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L182"
                    break;
                };
            };
            _sum = (_sum - (((@:checkr _addrs[(0 : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).weight : stdgo.GoInt)) : stdgo.GoInt);
            _addrs = (_addrs.__slice__((1 : stdgo.GoInt)) : stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight);
        };
    }
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            final __tmp__2 = _s;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _s:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L162"
        return (((@:checkr _s[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority < (@:checkr _s[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority : Bool) || ((((@:checkr _s[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority == (@:checkr _s[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority) && ((@:checkr _s[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).weight < (@:checkr _s[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).weight : Bool) : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight):stdgo.GoInt {
        @:recv var _s:stdgo._internal.net.Net_t_bypriorityweight.T_byPriorityWeight = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L160"
        return (_s.length);
    }
}
