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
@:keep @:allow(stdgo._internal.net.Net.T_addrList_asInterface) class T_addrList_static_extension {
    @:keep
    @:tdfield
    static public function _partition( _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList, _strategy:stdgo._internal.net.Net_addr.Addr -> Bool):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo._internal.net.Net_t_addrlist.T_addrList; } {
        @:recv var _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList = _addrs;
        var _primaries = (new stdgo._internal.net.Net_t_addrlist.T_addrList(0, 0) : stdgo._internal.net.Net_t_addrlist.T_addrList), _fallbacks = (new stdgo._internal.net.Net_t_addrlist.T_addrList(0, 0) : stdgo._internal.net.Net_t_addrlist.T_addrList);
        var _primaryLabel:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L116"
        if (_addrs != null) for (_i => _addr in _addrs) {
            var _label = @:assignType (_strategy(_addr) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L118"
            if (((_i == (0 : stdgo.GoInt)) || (_label == _primaryLabel) : Bool)) {
                _primaryLabel = _label;
                _primaries = (_primaries.__append__(_addr) : stdgo._internal.net.Net_t_addrlist.T_addrList);
            } else {
                _fallbacks = (_fallbacks.__append__(_addr) : stdgo._internal.net.Net_t_addrlist.T_addrList);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L125"
        return { _0 : _primaries, _1 : _fallbacks };
    }
    @:keep
    @:tdfield
    static public function _first( _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList, _strategy:stdgo._internal.net.Net_addr.Addr -> Bool):stdgo._internal.net.Net_addr.Addr {
        @:recv var _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList = _addrs;
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L100"
        if (_addrs != null) for (__3 => _addr in _addrs) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L101"
            if (_strategy(_addr)) {
                //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L102"
                return _addr;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L105"
        return _addrs[(0 : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _forResolve( _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList, _network:stdgo.GoString, _addr:stdgo.GoString):stdgo._internal.net.Net_addr.Addr {
        @:recv var _addrs:stdgo._internal.net.Net_t_addrlist.T_addrList = _addrs;
        var _want6:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L83"
        {
            final __value__ = _network;
            if (__value__ == (("ip" : stdgo.GoString))) {
                _want6 = (stdgo._internal.net.Net__count._count(_addr?.__copy__(), (58 : stdgo.GoUInt8)) > (0 : stdgo.GoInt) : Bool);
            } else if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("udp" : stdgo.GoString))) {
                _want6 = (stdgo._internal.net.Net__count._count(_addr?.__copy__(), (91 : stdgo.GoUInt8)) > (0 : stdgo.GoInt) : Bool);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L91"
        if (_want6) {
            //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L92"
            return _addrs._first(stdgo._internal.net.Net__isnotipv4._isNotIPv4);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/ipsock.go#L94"
        return _addrs._first(stdgo._internal.net.Net__isipv4._isIPv4);
    }
}
