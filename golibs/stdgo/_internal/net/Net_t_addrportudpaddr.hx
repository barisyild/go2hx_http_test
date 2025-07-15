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
@:structInit @:using(stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension) @:using(stdgo._internal.net.Net_t_addrportudpaddr_static_extension.T_addrPortUDPAddr_static_extension) class T_addrPortUDPAddr {
    @:embedded
    public var addrPort : stdgo._internal.net.netip.Netip_addrport.AddrPort = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort);
    public function new(?addrPort:stdgo._internal.net.netip.Netip_addrport.AddrPort) {
        if (addrPort != null) this.addrPort = addrPort;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "addrPort", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_addrportdotaddrport.__type__stdgodot_internaldotnetdotnetipdotNetip_addrportdotAddrPort }, optional : false }])));
    public var addr(get, never) : () -> stdgo._internal.net.netip.Netip_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_addr():() -> stdgo._internal.net.netip.Netip_addr.Addr return @:check31 (this.addrPort ?? throw stdgo.Error._nullPointerDereference.__underlying__()).addr;
    public var appendTo(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_appendTo():stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoUInt8> return @:check31 (this.addrPort ?? throw stdgo.Error._nullPointerDereference.__underlying__()).appendTo;
    public var isValid(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_isValid():() -> Bool return @:check31 (this.addrPort ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isValid;
    public var marshalBinary(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_marshalBinary():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.addrPort ?? throw stdgo.Error._nullPointerDereference.__underlying__()).marshalBinary;
    public var marshalText(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_marshalText():() -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.addrPort ?? throw stdgo.Error._nullPointerDereference.__underlying__()).marshalText;
    public var port(get, never) : () -> stdgo.GoUInt16;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_port():() -> stdgo.GoUInt16 return @:check31 (this.addrPort ?? throw stdgo.Error._nullPointerDereference.__underlying__()).port;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check31 (this.addrPort ?? throw stdgo.Error._nullPointerDereference.__underlying__()).string;
    public var unmarshalBinary(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_unmarshalBinary():stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error return @:check32 this.addrPort.unmarshalBinary;
    public var unmarshalText(get, never) : stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_unmarshalText():stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error return @:check32 this.addrPort.unmarshalText;
    public function __copy__() {
        return new T_addrPortUDPAddr(addrPort);
    }
}
