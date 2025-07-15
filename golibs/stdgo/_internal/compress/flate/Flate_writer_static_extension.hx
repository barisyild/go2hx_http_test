package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function reset( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>, _dst:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L737"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writer;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_dictwriterdott_dictwriter.__type__stdgodot_internaldotcompressdotflatedotFlate_t_dictwriterdotT_dictWriter })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictwriter.T_dictWriter>), _1 : false };
            }, _dw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _dw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w = _dst;
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L740"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._reset(stdgo.Go.asInterface(_dw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_dictwriterdott_dictwriter.__type__stdgodot_internaldotcompressdotflatedotFlate_t_dictwriterdotT_dictWriter })));
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L741"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._fillWindow((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L744"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._reset(_dst);
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L730"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._close();
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L725"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._syncFlush();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L710"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._d._write(_data);
    }
}
