package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
function newWriterLevel(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gzip.go#L61"
        if (((_level < (-2 : stdgo.GoInt) : Bool) || (_level > (9 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gzip.go#L62"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("gzip: invalid compression level: %d" : stdgo.GoString), new stdgo.AnyInterface(_level, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
        };
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_writer.Writer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotgzipdotgzip_writerdotwriter.__type__stdgodot_internaldotcompressdotgzipdotGzip_writerdotWriter })) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_writer.Writer>);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gzip.go#L65"
        _z._init(_w, _level);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gzip.go#L66"
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
