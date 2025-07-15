package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function newWriterDict(_w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>; var _1 : stdgo.Error; } {
        var _dw = (stdgo.Go.setRef((new stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter(_w) : stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_dictwriterdott_dictwriter.__type__stdgodot_internaldotcompressdotflatedotFlate_t_dictwriterdotT_dictWriter })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>);
        var __tmp__ = stdgo._internal.compress.flate.Flate_newwriter.newWriter(stdgo.Go.asInterface(_dw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_dictwriterdott_dictwriter.__type__stdgodot_internaldotcompressdotflatedotFlate_t_dictwriterdotT_dictWriter })), _level), _zw:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L682"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L683"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L685"
        (@:checkr _zw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._fillWindow(_dict);
        (@:checkr _zw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict = ((@:checkr _zw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict.__append__(...(_dict : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L687"
        return { _0 : _zw, _1 : _err };
    }
