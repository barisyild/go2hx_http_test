package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
class MIMEHeader_asInterface {
    @:keep
    public dynamic function del(_key:stdgo.GoString):Void @:_0 __self__.value.del(_key);
    @:keep
    public dynamic function values(_key:stdgo.GoString):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.values(_key);
    @:keep
    public dynamic function get(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.get(_key);
    @:keep
    public dynamic function set(_key:stdgo.GoString, _value:stdgo.GoString):Void @:_0 __self__.value.set(_key, _value);
    @:keep
    public dynamic function add(_key:stdgo.GoString, _value:stdgo.GoString):Void @:_0 __self__.value.add(_key, _value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.textproto.Textproto_mimeheaderpointer.MIMEHeaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
