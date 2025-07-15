package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:structInit @:using(stdgo._internal.flag.Flag_t_textvalue_static_extension.T_textValue_static_extension) @:using(stdgo._internal.flag.Flag_t_textvalue_static_extension.T_textValue_static_extension) class T_textValue {
    public var _p : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler = (null : stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler);
    public function new(?_p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotencoding_textunmarshalerdottextunmarshaler.__type__stdgodot_internaldotencodingdotEncoding_textunmarshalerdotTextUnmarshaler }, optional : false }])));
    public function __copy__() {
        return new T_textValue(_p);
    }
}
