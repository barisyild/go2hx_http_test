package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.net.http.internal.Internal_t_chunkedwriter_static_extension.T_chunkedWriter_static_extension) @:using(stdgo._internal.net.http.internal.Internal_t_chunkedwriter_static_extension.T_chunkedWriter_static_extension) class T_chunkedWriter {
    public var wire : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?wire:stdgo._internal.io.Io_writer.Writer) {
        if (wire != null) this.wire = wire;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "wire", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }])));
    public function __copy__() {
        return new T_chunkedWriter(wire);
    }
}
