package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_t_multiwriter_static_extension.T_multiWriter_static_extension) @:using(stdgo._internal.io.Io_t_multiwriter_static_extension.T_multiWriter_static_extension) class T_multiWriter {
    public var _writers : stdgo.Slice<stdgo._internal.io.Io_writer.Writer> = (null : stdgo.Slice<stdgo._internal.io.Io_writer.Writer>);
    public function new(?_writers:stdgo.Slice<stdgo._internal.io.Io_writer.Writer>) {
        if (_writers != null) this._writers = _writers;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_writers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }) }, optional : false }])));
    public function __copy__() {
        return new T_multiWriter(_writers);
    }
}
