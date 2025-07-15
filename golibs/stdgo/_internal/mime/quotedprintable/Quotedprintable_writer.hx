package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.mime.quotedprintable.Quotedprintable_writer_static_extension.Writer_static_extension) @:using(stdgo._internal.mime.quotedprintable.Quotedprintable_writer_static_extension.Writer_static_extension) class Writer {
    public var binary : Bool = false;
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _i : stdgo.GoInt = 0;
    public var _line : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(78, 78).__setNumber32__();
    public var _cr : Bool = false;
    public function new(?binary:Bool, ?_w:stdgo._internal.io.Io_writer.Writer, ?_i:stdgo.GoInt, ?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_cr:Bool) {
        if (binary != null) this.binary = binary;
        if (_w != null) this._w = _w;
        if (_i != null) this._i = _i;
        if (_line != null) this._line = _line;
        if (_cr != null) this._cr = _cr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "binary", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_i", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_line", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 78) }, optional : false }, { name : "_cr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new Writer(binary, _w, _i, _line, _cr);
    }
}
