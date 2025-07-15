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
@:keep @:allow(stdgo._internal.net.Net.T_byRFC6724_asInterface) class T_byRFC6724_static_extension {
    @:keep
    @:tdfield
    static public function less( _s:stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724> = _s;
        var dA = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrs[(_i : stdgo.GoInt)].iP : stdgo._internal.net.Net_ip.IP);
        var dB = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrs[(_j : stdgo.GoInt)].iP : stdgo._internal.net.Net_ip.IP);
        var sourceDA = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcs[(_i : stdgo.GoInt)] : stdgo._internal.net.netip.Netip_addr.Addr);
        var sourceDB = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcs[(_j : stdgo.GoInt)] : stdgo._internal.net.netip.Netip_addr.Addr);
        var _attrDA = (stdgo.Go.setRef((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrAttr[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_ipattrdott_ipattr.__type__stdgodot_internaldotnetdotNet_t_ipattrdotT_ipAttr })) : stdgo.Ref<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
        var _attrDB = (stdgo.Go.setRef((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrAttr[(_j : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_ipattrdott_ipattr.__type__stdgodot_internaldotnetdotNet_t_ipattrdotT_ipAttr })) : stdgo.Ref<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
        var _attrSourceDA = (stdgo.Go.setRef((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcAttr[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_ipattrdott_ipattr.__type__stdgodot_internaldotnetdotNet_t_ipattrdotT_ipAttr })) : stdgo.Ref<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
        var _attrSourceDB = (stdgo.Go.setRef((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcAttr[(_j : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_ipattrdott_ipattr.__type__stdgodot_internaldotnetdotNet_t_ipattrdotT_ipAttr })) : stdgo.Ref<stdgo._internal.net.Net_t_ipattr.T_ipAttr>);
        {};
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L115"
        if ((!sourceDA.isValid() && !sourceDB.isValid() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L116"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L118"
        if (!sourceDB.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L119"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L121"
        if (!sourceDA.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L122"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L129"
        if ((((@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope == (@:checkr _attrSourceDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope) && ((@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope != (@:checkr _attrSourceDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L130"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L132"
        if ((((@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope != (@:checkr _attrSourceDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope) && ((@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope == (@:checkr _attrSourceDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L133"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L155"
        if ((((@:checkr _attrSourceDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label == (@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label) && ((@:checkr _attrSourceDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label != (@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L157"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L159"
        if ((((@:checkr _attrSourceDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label != (@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label) && ((@:checkr _attrSourceDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label == (@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).label) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L161"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L167"
        if (((@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precedence > (@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precedence : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L168"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L170"
        if (((@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precedence < (@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).precedence : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L171"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L184"
        if (((@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope < (@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L185"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L187"
        if (((@:checkr _attrDA ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope > (@:checkr _attrDB ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scope : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L188"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L200"
        if (((dA.to4() == null) && (dB.to4() == null) : Bool)) {
            var _commonA = @:assignType (stdgo._internal.net.Net__commonprefixlen._commonPrefixLen(sourceDA?.__copy__(), dA) : stdgo.GoInt);
            var _commonB = @:assignType (stdgo._internal.net.Net__commonprefixlen._commonPrefixLen(sourceDB?.__copy__(), dB) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L204"
            if ((_commonA > _commonB : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L205"
                return true;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L207"
            if ((_commonA < _commonB : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L208"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L215"
        return false;
    }
    @:keep
    @:tdfield
    static public function swap( _s:stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724> = _s;
        {
            final __tmp__0 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrs[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrs[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrs;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrs;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        {
            final __tmp__0 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcs[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcs[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcs;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcs;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        {
            final __tmp__0 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrAttr[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrAttr[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrAttr;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrAttr;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
        {
            final __tmp__0 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcAttr[(_j : stdgo.GoInt)];
            final __tmp__1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcAttr[(_i : stdgo.GoInt)];
            final __tmp__2 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcAttr;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srcAttr;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.Net_t_byrfc6724.T_byRFC6724> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/addrselect.go#L85"
        return ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._addrs.length);
    }
}
