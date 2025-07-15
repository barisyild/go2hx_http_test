package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.io.Io_offsetwriter_static_extension.OffsetWriter_static_extension) @:using(stdgo._internal.io.Io_offsetwriter_static_extension.OffsetWriter_static_extension) class OffsetWriter {
    public var _w : stdgo._internal.io.Io_writerat.WriterAt = (null : stdgo._internal.io.Io_writerat.WriterAt);
    public var _base : stdgo.GoInt64 = 0;
    public var _off : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io_writerat.WriterAt, ?_base:stdgo.GoInt64, ?_off:stdgo.GoInt64) {
        if (_w != null) this._w = _w;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writeratdotwriterat.__type__stdgodot_internaldotiodotIo_writeratdotWriterAt }, optional : false }, { name : "_base", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_off", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new OffsetWriter(_w, _base, _off);
    }
}
