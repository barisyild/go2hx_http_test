package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.InvalidByteError_asInterface) class InvalidByteError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.encoding.hex.Hex_invalidbyteerror.InvalidByteError):stdgo.GoString {
        @:recv var _e:stdgo._internal.encoding.hex.Hex_invalidbyteerror.InvalidByteError = _e;
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L63"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("encoding/hex: invalid byte: %#U" : stdgo.GoString), new stdgo.AnyInterface((_e : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))))?.__copy__();
    }
}
