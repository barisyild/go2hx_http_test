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
@:keep @:allow(stdgo._internal.net.Net.IP_asInterface) class IP_static_extension {
    @:keep
    @:tdfield
    static public function _matchAddrFamily( _ip:stdgo._internal.net.Net_ip.IP, _x:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L373"
        return ((_ip.to4() != null && _x.to4() != null : Bool) || (((_ip.to16() != null && _ip.to4() == null : Bool) && _x.to16() != null : Bool) && _x.to4() == null : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function equal( _ip:stdgo._internal.net.Net_ip.IP, _x:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L360"
        if ((_ip.length) == ((_x.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L361"
            return stdgo._internal.internal.bytealg.Bytealg_equal.equal(_ip, _x);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L363"
        if (((_ip.length == (4 : stdgo.GoInt)) && (_x.length == (16 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L364"
            return (stdgo._internal.internal.bytealg.Bytealg_equal.equal((_x.__slice__((0 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP), stdgo._internal.net.Net__v4inv6prefix._v4InV6Prefix) && stdgo._internal.internal.bytealg.Bytealg_equal.equal(_ip, (_x.__slice__((12 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP)) : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L366"
        if (((_ip.length == (16 : stdgo.GoInt)) && (_x.length == (4 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L367"
            return (stdgo._internal.internal.bytealg.Bytealg_equal.equal((_ip.__slice__((0 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP), stdgo._internal.net.Net__v4inv6prefix._v4InV6Prefix) && stdgo._internal.internal.bytealg.Bytealg_equal.equal((_ip.__slice__((12 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP), _x) : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L369"
        return false;
    }
    @:keep
    @:tdfield
    static public function unmarshalText( _ip:stdgo.Ref<stdgo._internal.net.Net_ip.IP>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _ip:stdgo.Ref<stdgo._internal.net.Net_ip.IP> = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L343"
        if ((_text.length) == ((0 : stdgo.GoInt))) {
            @:_1 (_ip : stdgo._internal.net.Net_ip.IP).__setData__(null);
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L345"
            return (null : stdgo.Error);
        };
        var _s = @:assignType ((_text : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _x = @:assignType (stdgo._internal.net.Net_parseip.parseIP(_s?.__copy__()) : stdgo._internal.net.Net_ip.IP);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L349"
        if (_x == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L350"
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ type : ("IP address" : stdgo.GoString), text : _s?.__copy__() } : stdgo._internal.net.Net_parseerror.ParseError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError })) : stdgo.Ref<stdgo._internal.net.Net_parseerror.ParseError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_parseerrordotparseerror.__type__stdgodot_internaldotnetdotNet_parseerrordotParseError }));
        };
        @:_1 (_ip : stdgo._internal.net.Net_ip.IP).__setData__(_x);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L353"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _ip:stdgo._internal.net.Net_ip.IP):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L331"
        if ((_ip.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L332"
            return { _0 : ((stdgo.Go.str() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L334"
        if (((_ip.length != (4 : stdgo.GoInt)) && (_ip.length != (16 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L335"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ err : ("invalid IP address" : stdgo.GoString), addr : stdgo._internal.net.Net__hexstring._hexString(_ip)?.__copy__() } : stdgo._internal.net.Net_addrerror.AddrError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) : stdgo.Ref<stdgo._internal.net.Net_addrerror.AddrError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrerrordotaddrerror.__type__stdgodot_internaldotnetdotNet_addrerrordotAddrError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L337"
        return { _0 : ((_ip.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function string( _ip:stdgo._internal.net.Net_ip.IP):stdgo.GoString {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L296"
        if ((_ip.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L297"
            return ("<nil>" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L300"
        if (((_ip.length != (4 : stdgo.GoInt)) && (_ip.length != (16 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L301"
            return (("?" : stdgo.GoString) + stdgo._internal.net.Net__hexstring._hexString(_ip)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L304"
        {
            var _p4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
            if ((_p4.length) == ((4 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L305"
                return (stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4((_p4 : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()).string() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L307"
        return (stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16((_ip : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__()).string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function mask( _ip:stdgo._internal.net.Net_ip.IP, _mask:stdgo._internal.net.Net_ipmask.IPMask):stdgo._internal.net.Net_ip.IP {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L272"
        if ((((_mask.length) == ((16 : stdgo.GoInt)) && (_ip.length) == ((4 : stdgo.GoInt)) : Bool) && stdgo._internal.net.Net__allff._allFF((_mask.__slice__(0, (12 : stdgo.GoInt)) : stdgo._internal.net.Net_ipmask.IPMask)) : Bool)) {
            _mask = (_mask.__slice__((12 : stdgo.GoInt)) : stdgo._internal.net.Net_ipmask.IPMask);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L275"
        if ((((_mask.length) == ((4 : stdgo.GoInt)) && (_ip.length) == ((16 : stdgo.GoInt)) : Bool) && stdgo._internal.internal.bytealg.Bytealg_equal.equal((_ip.__slice__(0, (12 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP), stdgo._internal.net.Net__v4inv6prefix._v4InV6Prefix) : Bool)) {
            _ip = (_ip.__slice__((12 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP);
        };
        var _n = @:assignType (_ip.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L279"
        if (_n != ((_mask.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L280"
            return null;
        };
        var _out = @:assignType (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.net.Net_ip.IP);
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L283"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _out[(_i : stdgo.GoInt)] = (_ip[(_i : stdgo.GoInt)] & _mask[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L286"
        return _out;
    }
    @:keep
    @:tdfield
    static public function defaultMask( _ip:stdgo._internal.net.Net_ip.IP):stdgo._internal.net.Net_ipmask.IPMask {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L248"
        {
            _ip = _ip.to4();
            if (_ip == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L249"
                return null;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L251"
        if ((_ip[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L253"
            return stdgo._internal.net.Net__classamask._classAMask;
        } else if ((_ip[(0 : stdgo.GoInt)] < (192 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L255"
            return stdgo._internal.net.Net__classbmask._classBMask;
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L257"
            return stdgo._internal.net.Net__classcmask._classCMask;
        };
    }
    @:keep
    @:tdfield
    static public function to16( _ip:stdgo._internal.net.Net_ip.IP):stdgo._internal.net.Net_ip.IP {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L228"
        if ((_ip.length) == ((4 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L229"
            return stdgo._internal.net.Net_ipv4.iPv4(_ip[(0 : stdgo.GoInt)], _ip[(1 : stdgo.GoInt)], _ip[(2 : stdgo.GoInt)], _ip[(3 : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L231"
        if ((_ip.length) == ((16 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L232"
            return _ip;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L234"
        return null;
    }
    @:keep
    @:tdfield
    static public function to4( _ip:stdgo._internal.net.Net_ip.IP):stdgo._internal.net.Net_ip.IP {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L213"
        if ((_ip.length) == ((4 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L214"
            return _ip;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L216"
        if (((((_ip.length) == ((16 : stdgo.GoInt)) && stdgo._internal.net.Net__iszeros._isZeros((_ip.__slice__((0 : stdgo.GoInt), (10 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP)) : Bool) && _ip[(10 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && (_ip[(11 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L220"
            return (_ip.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo._internal.net.Net_ip.IP);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L222"
        return null;
    }
    @:keep
    @:tdfield
    static public function isGlobalUnicast( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L192"
        return ((((((((_ip.length == (4 : stdgo.GoInt)) || (_ip.length == (16 : stdgo.GoInt)) : Bool)) && !_ip.equal(stdgo._internal.net.Net_ipv4bcast.iPv4bcast) : Bool) && !_ip.isUnspecified() : Bool) && !_ip.isLoopback() : Bool) && !_ip.isMulticast() : Bool) && !_ip.isLinkLocalUnicast() : Bool);
    }
    @:keep
    @:tdfield
    static public function isLinkLocalUnicast( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L177"
        {
            var _ip4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
            if (_ip4 != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L178"
                return ((_ip4[(0 : stdgo.GoInt)] == (169 : stdgo.GoUInt8)) && (_ip4[(1 : stdgo.GoInt)] == (254 : stdgo.GoUInt8)) : Bool);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L180"
        return (((_ip.length) == ((16 : stdgo.GoInt)) && _ip[(0 : stdgo.GoInt)] == ((254 : stdgo.GoUInt8)) : Bool) && ((_ip[(1 : stdgo.GoInt)] & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) == (128 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isLinkLocalMulticast( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L168"
        {
            var _ip4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
            if (_ip4 != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L169"
                return ((_ip4[(0 : stdgo.GoInt)] == ((224 : stdgo.GoUInt8)) && _ip4[(1 : stdgo.GoInt)] == ((0 : stdgo.GoUInt8)) : Bool) && (_ip4[(2 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L171"
        return (((_ip.length) == ((16 : stdgo.GoInt)) && _ip[(0 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && ((_ip[(1 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) == (2 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isInterfaceLocalMulticast( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L162"
        return (((_ip.length) == ((16 : stdgo.GoInt)) && _ip[(0 : stdgo.GoInt)] == ((255 : stdgo.GoUInt8)) : Bool) && ((_ip[(1 : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) == (1 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isMulticast( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L153"
        {
            var _ip4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
            if (_ip4 != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L154"
                return (_ip4[(0 : stdgo.GoInt)] & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((224 : stdgo.GoUInt8));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L156"
        return ((_ip.length == (16 : stdgo.GoInt)) && (_ip[(0 : stdgo.GoInt)] == (255 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isPrivate( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L135"
        {
            var _ip4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
            if (_ip4 != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L142"
                return ((_ip4[(0 : stdgo.GoInt)] == ((10 : stdgo.GoUInt8)) || (((_ip4[(0 : stdgo.GoInt)] == (172 : stdgo.GoUInt8)) && ((_ip4[(1 : stdgo.GoInt)] & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == (16 : stdgo.GoUInt8)) : Bool)) : Bool) || (((_ip4[(0 : stdgo.GoInt)] == (192 : stdgo.GoUInt8)) && (_ip4[(1 : stdgo.GoInt)] == (168 : stdgo.GoUInt8)) : Bool)) : Bool);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L148"
        return ((_ip.length == (16 : stdgo.GoInt)) && ((_ip[(0 : stdgo.GoInt)] & (254 : stdgo.GoUInt8) : stdgo.GoUInt8) == (252 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function isLoopback( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L126"
        {
            var _ip4 = @:assignType (_ip.to4() : stdgo._internal.net.Net_ip.IP);
            if (_ip4 != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L127"
                return _ip4[(0 : stdgo.GoInt)] == ((127 : stdgo.GoUInt8));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L129"
        return _ip.equal(stdgo._internal.net.Net_ipv6loopback.iPv6loopback);
    }
    @:keep
    @:tdfield
    static public function isUnspecified( _ip:stdgo._internal.net.Net_ip.IP):Bool {
        @:recv var _ip:stdgo._internal.net.Net_ip.IP = _ip;
        //"file:///Users/o/.go/go1.21.3/src/net/ip.go#L121"
        return (_ip.equal(stdgo._internal.net.Net_ipv4zero.iPv4zero) || _ip.equal(stdgo._internal.net.Net_ipv6unspecified.iPv6unspecified) : Bool);
    }
}
