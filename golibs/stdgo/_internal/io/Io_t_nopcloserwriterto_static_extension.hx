package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.T_nopCloserWriterTo_asInterface) class T_nopCloserWriterTo_static_extension {
    @:keep
    @:tdfield
    static public function writeTo( _c:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo = _c?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L694"
        return ({
            @:explicitConversion final __tmp__ = (stdgo.Go.typeAssert(({
                final __t__ = _c.reader;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writertodotwriterto.__type__stdgodot_internaldotiodotIo_writertodotWriterTo) : stdgo._internal.io.Io_writerto.WriterTo).writeTo(_w);
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function close( _:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo):stdgo.Error {
        @:recv var _:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L691"
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.io.Io_t_nopcloserwriterto.T_nopCloserWriterTo, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}
