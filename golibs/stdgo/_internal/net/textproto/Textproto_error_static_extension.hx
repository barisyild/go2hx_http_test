package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.textproto.Textproto_error.Error> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/textproto/textproto.go#L41"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%03d %s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
    }
}
