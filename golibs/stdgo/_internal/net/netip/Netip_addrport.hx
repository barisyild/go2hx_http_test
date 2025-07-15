package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.net.netip.Netip_addrport_static_extension.AddrPort_static_extension) @:using(stdgo._internal.net.netip.Netip_addrport_static_extension.AddrPort_static_extension) class AddrPort {
    public var _ip : stdgo._internal.net.netip.Netip_addr.Addr = ({} : stdgo._internal.net.netip.Netip_addr.Addr);
    public var _port : stdgo.GoUInt16 = 0;
    public function new(?_ip:stdgo._internal.net.netip.Netip_addr.Addr, ?_port:stdgo.GoUInt16) {
        if (_ip != null) this._ip = _ip;
        if (_port != null) this._port = _port;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_ip", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_addrdotaddr.__type__stdgodot_internaldotnetdotnetipdotNetip_addrdotAddr }, optional : false }, { name : "_port", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new AddrPort(_ip, _port);
    }
}
