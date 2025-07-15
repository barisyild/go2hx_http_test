package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_writer_static_extension.Writer_static_extension) @:using(stdgo._internal.net.textproto.Textproto_writer_static_extension.Writer_static_extension) class Writer {
    public var w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>);
    public function new(?w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_dot:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>) {
        if (w != null) this.w = w;
        if (_dot != null) this._dot = _dot;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter }) }, optional : false }, { name : "_dot", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_t_dotwriterdott_dotwriter.__type__stdgodot_internaldotnetdottextprotodotTextproto_t_dotwriterdotT_dotWriter }) }, optional : false }])));
    public function __copy__() {
        return new Writer(w, _dot);
    }
}
