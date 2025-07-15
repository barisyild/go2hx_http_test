package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_t_multireader_static_extension.T_multiReader_static_extension) @:using(stdgo._internal.io.Io_t_multireader_static_extension.T_multiReader_static_extension) class T_multiReader {
    public var _readers : stdgo.Slice<stdgo._internal.io.Io_reader.Reader> = (null : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>);
    public function new(?_readers:stdgo.Slice<stdgo._internal.io.Io_reader.Reader>) {
        if (_readers != null) this._readers = _readers;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_readers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }) }, optional : false }])));
    public function __copy__() {
        return new T_multiReader(_readers);
    }
}
