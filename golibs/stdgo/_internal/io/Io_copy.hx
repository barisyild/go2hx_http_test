package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function copy(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L389"
        return ({
            @:explicitConversion final __tmp__ = stdgo._internal.io.Io__copybuffer._copyBuffer(_dst, _src, (null : stdgo.Slice<stdgo.GoUInt8>));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
