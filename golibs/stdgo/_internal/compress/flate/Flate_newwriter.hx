package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function newWriter(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>; var _1 : stdgo.Error; } {
        var _dw:stdgo._internal.compress.flate.Flate_writer.Writer = ({} : stdgo._internal.compress.flate.Flate_writer.Writer);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L667"
        {
            var _err = @:assignType (_dw._d._init(_w, _level) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L668"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L670"
        return { _0 : (stdgo.Go.setRef(_dw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_writerdotwriter.__type__stdgodot_internaldotcompressdotflatedotFlate_writerdotWriter })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>), _1 : (null : stdgo.Error) };
    }
