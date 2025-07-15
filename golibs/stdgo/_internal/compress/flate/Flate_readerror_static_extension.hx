package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.ReadError_asInterface) class ReadError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_readerror.ReadError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_readerror.ReadError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L53"
        return (((("flate: read error at offset " : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).offset, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
