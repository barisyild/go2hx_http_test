package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
function newReader(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>; var _1 : stdgo.Error; } {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.compress.gzip.Gzip_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotgzipdotgzip_readerdotreader.__type__stdgodot_internaldotcompressdotgzipdotGzip_readerdotReader })) : stdgo.Ref<stdgo._internal.compress.gzip.Gzip_reader.Reader>);
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L94"
        {
            var _err = @:assignType (_z.reset(_r) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L95"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/gzip/gunzip.go#L97"
        return { _0 : _z, _1 : (null : stdgo.Error) };
    }
