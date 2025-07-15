package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.compress.flate.Flate_t_hcode_static_extension.T_hcode_static_extension) @:using(stdgo._internal.compress.flate.Flate_t_hcode_static_extension.T_hcode_static_extension) class T_hcode {
    public var _code : stdgo.GoUInt16 = 0;
    public var _len : stdgo.GoUInt16 = 0;
    public function new(?_code:stdgo.GoUInt16, ?_len:stdgo.GoUInt16) {
        if (_code != null) this._code = _code;
        if (_len != null) this._len = _len;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_code", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "_len", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }])));
    public function __copy__() {
        return new T_hcode(_code, _len);
    }
}
