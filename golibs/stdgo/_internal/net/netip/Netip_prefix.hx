package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.net.netip.Netip_prefix_static_extension.Prefix_static_extension) @:using(stdgo._internal.net.netip.Netip_prefix_static_extension.Prefix_static_extension) class Prefix {
    public var _ip : stdgo._internal.net.netip.Netip_addr.Addr = ({} : stdgo._internal.net.netip.Netip_addr.Addr);
    public var _bitsPlusOne : stdgo.GoUInt8 = 0;
    public function new(?_ip:stdgo._internal.net.netip.Netip_addr.Addr, ?_bitsPlusOne:stdgo.GoUInt8) {
        if (_ip != null) this._ip = _ip;
        if (_bitsPlusOne != null) this._bitsPlusOne = _bitsPlusOne;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_ip", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_addrdotaddr.__type__stdgodot_internaldotnetdotnetipdotNetip_addrdotAddr }, optional : false }, { name : "_bitsPlusOne", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }])));
    public function __copy__() {
        return new Prefix(_ip, _bitsPlusOne);
    }
}
