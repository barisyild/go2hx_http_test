package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
@:structInit @:using(stdgo._internal.net.netip.Netip_t_parseaddrerror_static_extension.T_parseAddrError_static_extension) @:using(stdgo._internal.net.netip.Netip_t_parseaddrerror_static_extension.T_parseAddrError_static_extension) class T_parseAddrError {
    public var _in : stdgo.GoString = "";
    public var _msg : stdgo.GoString = "";
    public var _at : stdgo.GoString = "";
    public function new(?_in:stdgo.GoString, ?_msg:stdgo.GoString, ?_at:stdgo.GoString) {
        if (_in != null) this._in = _in;
        if (_msg != null) this._msg = _msg;
        if (_at != null) this._at = _at;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_in", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_msg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_at", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_parseAddrError(_in, _msg, _at);
    }
}
