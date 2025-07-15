package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_t_dotwriter_static_extension.T_dotWriter_static_extension) @:using(stdgo._internal.net.textproto.Textproto_t_dotwriter_static_extension.T_dotWriter_static_extension) class T_dotWriter {
    public var _w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
    public var _state : stdgo.GoInt = 0;
    public function new(?_w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>, ?_state:stdgo.GoInt) {
        if (_w != null) this._w = _w;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_writerdotwriter.__type__stdgodot_internaldotnetdottextprotodotTextproto_writerdotWriter }) }, optional : false }, { name : "_state", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_dotWriter(_w, _state);
    }
}
