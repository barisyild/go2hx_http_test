package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_dictWriter_asInterface) class T_dictWriter_static_extension {
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L695"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(_b);
    }
}
