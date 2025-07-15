package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.net.netip.Netip_addr_static_extension.Addr_static_extension) @:using(stdgo._internal.net.netip.Netip_addr_static_extension.Addr_static_extension) class Addr {
    public var _addr : stdgo._internal.net.netip.Netip_t_uint128.T_uint128 = ({} : stdgo._internal.net.netip.Netip_t_uint128.T_uint128);
    public var _z : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value> = (null : stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>);
    public function new(?_addr:stdgo._internal.net.netip.Netip_t_uint128.T_uint128, ?_z:stdgo.Ref<stdgo._internal.internal.intern.Intern_value.Value>) {
        if (_addr != null) this._addr = _addr;
        if (_z != null) this._z = _z;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_addr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnetipdotnetip_t_uint128dott_uint128.__type__stdgodot_internaldotnetdotnetipdotNetip_t_uint128dotT_uint128 }, optional : false }, { name : "_z", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotinterndotintern_valuedotvalue.__type__stdgodot_internaldotinternaldotinterndotIntern_valuedotValue }) }, optional : false }])));
    public function __copy__() {
        return new Addr(_addr, _z);
    }
}
