package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.encoding.hex.Hex_t_dumper_static_extension.T_dumper_static_extension) @:using(stdgo._internal.encoding.hex.Hex_t_dumper_static_extension.T_dumper_static_extension) class T_dumper {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _rightChars : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(18, 18).__setNumber32__();
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(14, 14).__setNumber32__();
    public var _used : stdgo.GoInt = 0;
    public var _n : stdgo.GoUInt = 0;
    public var _closed : Bool = false;
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_rightChars:stdgo.GoArray<stdgo.GoUInt8>, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_n:stdgo.GoUInt, ?_closed:Bool) {
        if (_w != null) this._w = _w;
        if (_rightChars != null) this._rightChars = _rightChars;
        if (_buf != null) this._buf = _buf;
        if (_used != null) this._used = _used;
        if (_n != null) this._n = _n;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_rightChars", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 18) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 14) }, optional : false }, { name : "_used", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) }, optional : false }, { name : "_closed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_dumper(_w, _rightChars, _buf, _used, _n, _closed);
    }
}
