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
@:keep @:allow(stdgo._internal.flag.Flag.T_int64Value_asInterface) class T_int64Value_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_int64value.T_int64Value>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L195"
        return stdgo._internal.strconv.Strconv_formatint.formatInt((_i.value : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_int64value.T_int64Value>):stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L193"
        return new stdgo.AnyInterface((_i.value : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _i:stdgo.Pointer<stdgo._internal.flag.Flag_t_int64value.T_int64Value>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_s?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L186"
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__numerror._numError(_err);
        };
        _i.value = (_v : stdgo._internal.flag.Flag_t_int64value.T_int64Value);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L190"
        return _err;
    }
}
