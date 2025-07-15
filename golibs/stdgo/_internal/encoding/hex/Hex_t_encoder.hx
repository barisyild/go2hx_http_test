package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.encoding.hex.Hex_t_encoder_static_extension.T_encoder_static_extension) @:using(stdgo._internal.encoding.hex.Hex_t_encoder_static_extension.T_encoder_static_extension) class T_encoder {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _out : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024).__setNumber32__();
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_err:stdgo.Error, ?_out:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 1024) }, optional : false }])));
    public function __copy__() {
        return new T_encoder(_w, _err, _out);
    }
}
