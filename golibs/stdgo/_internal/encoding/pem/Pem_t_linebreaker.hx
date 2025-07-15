package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.encoding.pem.Pem_t_linebreaker_static_extension.T_lineBreaker_static_extension) @:using(stdgo._internal.encoding.pem.Pem_t_linebreaker_static_extension.T_lineBreaker_static_extension) class T_lineBreaker {
    public var _line : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64).__setNumber32__();
    public var _used : stdgo.GoInt = 0;
    public var _out : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public function new(?_line:stdgo.GoArray<stdgo.GoUInt8>, ?_used:stdgo.GoInt, ?_out:stdgo._internal.io.Io_writer.Writer) {
        if (_line != null) this._line = _line;
        if (_used != null) this._used = _used;
        if (_out != null) this._out = _out;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_line", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 64) }, optional : false }, { name : "_used", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_out", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }])));
    public function __copy__() {
        return new T_lineBreaker(_line, _used, _out);
    }
}
