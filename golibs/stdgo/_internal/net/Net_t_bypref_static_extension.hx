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
@:keep @:allow(stdgo._internal.net.Net.T_byPref_asInterface) class T_byPref_static_extension {
    @:keep
    @:tdfield
    static public function _sort( _s:stdgo._internal.net.Net_t_bypref.T_byPref):Void {
        @:recv var _s:stdgo._internal.net.Net_t_bypref.T_byPref = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L218"
        if (_s != null) for (_i => _ in _s) {
            var _j = @:assignType (stdgo._internal.net.Net__randintn._randIntn((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
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
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L222"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_byprefdott_bypref.__type__stdgodot_internaldotnetdotNet_t_byprefdotT_byPref));
    }
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.net.Net_t_bypref.T_byPref, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.net.Net_t_bypref.T_byPref = _s;
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
    static public function less( _s:stdgo._internal.net.Net_t_bypref.T_byPref, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.net.Net_t_bypref.T_byPref = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L213"
        return ((@:checkr _s[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pref < (@:checkr _s[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pref : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.net.Net_t_bypref.T_byPref):stdgo.GoInt {
        @:recv var _s:stdgo._internal.net.Net_t_bypref.T_byPref = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L212"
        return (_s.length);
    }
}
