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
@:keep @:allow(stdgo._internal.net.Net.T_addrPortUDPAddr_asInterface) class T_addrPortUDPAddr_static_extension {
    @:keep
    @:tdfield
    static public function network( _:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.GoString {
        @:recv var _:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/udpsock.go#L118"
        return ("udp" : stdgo.GoString);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function unmarshalText( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_5 __self__.unmarshalText(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unmarshalBinary( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_5 __self__.unmarshalBinary(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function port( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo.GoUInt16 return @:_5 __self__.port();
    @:embedded
    @:embeddededffieldsffun
    public static function marshalText( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.marshalText();
    @:embedded
    @:embeddededffieldsffun
    public static function marshalBinary( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.marshalBinary();
    @:embedded
    @:embeddededffieldsffun
    public static function isValid( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):Bool return @:_5 __self__.isValid();
    @:embedded
    @:embeddededffieldsffun
    public static function appendTo( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_5 __self__.appendTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.net.Net_t_addrportudpaddr.T_addrPortUDPAddr):stdgo._internal.net.netip.Netip_addr.Addr return @:_5 __self__.addr();
}
