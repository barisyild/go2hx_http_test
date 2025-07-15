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
@:keep @:allow(stdgo._internal.flag.Flag.T_boolValue_asInterface) class T_boolValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function isBoolFlag( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L146"
        return true;
    }
    @:keep
    @:pointer
    @:tdfield
    static public function string( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L144"
        return stdgo._internal.strconv.Strconv_formatbool.formatBool((_b.value : Bool))?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>):stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L142"
        return new stdgo.AnyInterface((_b.value : Bool), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _b:stdgo.Pointer<stdgo._internal.flag.Flag_t_boolvalue.T_boolValue>, _s:stdgo.GoString):stdgo.Error {
        var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool(_s?.__copy__()), _v:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L135"
        if (_err != null) {
            _err = stdgo._internal.flag.Flag__errparse._errParse;
        };
        _b.value = (_v : stdgo._internal.flag.Flag_t_boolvalue.T_boolValue);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L139"
        return _err;
    }
}
