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
@:keep @:allow(stdgo._internal.flag.Flag.T_stringValue_asInterface) class T_stringValue_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function string( _s:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L254"
        return (_s.value : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:pointer
    @:tdfield
    static public function get( _s:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>):stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L252"
        return new stdgo.AnyInterface((_s.value : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:pointer
    @:tdfield
    static public function set( _s:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>, _val:stdgo.GoString):stdgo.Error {
        _s.value = (_val : stdgo._internal.flag.Flag_t_stringvalue.T_stringValue);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L249"
        return (null : stdgo.Error);
    }
}
