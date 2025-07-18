package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
class WordEncoder_asInterface {
    @:keep
    public dynamic function _splitWord(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString):Void @:_0 __self__.value._splitWord(_buf, _charset);
    @:keep
    public dynamic function _openWord(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString):Void @:_0 __self__.value._openWord(_buf, _charset);
    @:keep
    public dynamic function _qEncode(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString, _s:stdgo.GoString):Void @:_0 __self__.value._qEncode(_buf, _charset, _s);
    @:keep
    public dynamic function _bEncode(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _charset:stdgo.GoString, _s:stdgo.GoString):Void @:_0 __self__.value._bEncode(_buf, _charset, _s);
    @:keep
    public dynamic function _encodeWord(_charset:stdgo.GoString, _s:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._encodeWord(_charset, _s);
    @:keep
    public dynamic function encode(_charset:stdgo.GoString, _s:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.encode(_charset, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.mime.Mime_wordencoderpointer.WordEncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
