package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_t_dotreader_static_extension.T_dotReader_static_extension) @:using(stdgo._internal.net.textproto.Textproto_t_dotreader_static_extension.T_dotReader_static_extension) class T_dotReader {
    public var _r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
    public var _state : stdgo.GoInt = 0;
    public function new(?_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, ?_state:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_r", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdottextprotodottextproto_readerdotreader.__type__stdgodot_internaldotnetdottextprotodotTextproto_readerdotReader }) }, optional : false }, { name : "_state", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_dotReader(_r, _state);
    }
}
