package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:structInit @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter_static_extension.T_normWriter_static_extension) @:using(_internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter_static_extension.T_normWriter_static_extension) class T_normWriter {
    public var _rb : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer = ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_rb:_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer, ?_w:stdgo._internal.io.Io_writer.Writer, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_rb != null) this._rb = _rb;
        if (_w != null) this._w = _w;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_rb", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new T_normWriter(_rb, _w, _buf);
    }
}
