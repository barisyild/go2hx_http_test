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
@:keep @:allow(stdgo._internal.flag.Flag.T_funcValue_asInterface) class T_funcValue_static_extension {
    @:keep
    @:tdfield
    static public function string( _f:stdgo._internal.flag.Flag_t_funcvalue.T_funcValue):stdgo.GoString {
        @:recv var _f:stdgo._internal.flag.Flag_t_funcvalue.T_funcValue = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L339"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function set( _f:stdgo._internal.flag.Flag_t_funcvalue.T_funcValue, _s:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo._internal.flag.Flag_t_funcvalue.T_funcValue = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L337"
        return _f(_s?.__copy__());
    }
}
