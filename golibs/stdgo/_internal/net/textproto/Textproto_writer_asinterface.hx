package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
class Writer_asInterface {
    @:keep
    public dynamic function _closeDot():Void @:_0 __self__.value._closeDot();
    @:keep
    public dynamic function dotWriter():stdgo._internal.io.Io_writecloser.WriteCloser return @:_0 __self__.value.dotWriter();
    @:keep
    public dynamic function printfLine(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return @:_0 __self__.value.printfLine(_format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.textproto.Textproto_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
