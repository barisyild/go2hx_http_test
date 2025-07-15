package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension) @:using(stdgo._internal.net.textproto.Textproto_reader_static_extension.Reader_static_extension) class Reader {
    public var r : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_dot:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotreader.T_dotReader>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (r != null) this.r = r;
        if (_dot != null) this._dot = _dot;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }) }, optional : false }, { name : "_dot", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_dotreaderdott_dotreader.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_dotreaderdotT_dotReader }) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Reader(r, _dot, _buf);
    }
}
