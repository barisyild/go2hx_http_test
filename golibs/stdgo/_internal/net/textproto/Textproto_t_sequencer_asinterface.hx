package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
class T_sequencer_asInterface {
    @:keep
    public dynamic function end(_id:stdgo.GoUInt):Void @:_0 __self__.value.end(_id);
    @:keep
    public dynamic function start(_id:stdgo.GoUInt):Void @:_0 __self__.value.start(_id);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.textproto.Textproto_t_sequencerpointer.T_sequencerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
