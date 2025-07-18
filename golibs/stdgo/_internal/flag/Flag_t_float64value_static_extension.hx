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
@:keep @:allow(stdgo._internal.flag.Flag.T_float64Value_asInterface) class T_float64Value_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _f:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L275"
        return stdgo._internal.strconv.Strconv_formatfloat.formatFloat((_f.value : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _f:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>):stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L273"
        return new stdgo.AnyInterface((_f.value : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _f:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(_s?.__copy__(), (64 : stdgo.GoInt)), _v:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L266"
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numerror._numError(_err);
        };
        _f.value = (_v : stdgo._internal.flag.Flag_t_float64value.T_float64Value);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L270"
        return _err;
    }
}
