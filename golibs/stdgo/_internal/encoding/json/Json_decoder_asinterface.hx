package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
class Decoder_asInterface {
    @:keep
    public dynamic function inputOffset():stdgo.GoInt64 return @:_0 __self__.value.inputOffset();
    @:keep
    public dynamic function _peek():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value._peek();
    @:keep
    public dynamic function more():Bool return @:_0 __self__.value.more();
    @:keep
    public dynamic function _tokenError(_c:stdgo.GoUInt8):{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } return @:_0 __self__.value._tokenError(_c);
    @:keep
    public dynamic function token():{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } return @:_0 __self__.value.token();
    @:keep
    public dynamic function _tokenValueEnd():Void @:_0 __self__.value._tokenValueEnd();
    @:keep
    public dynamic function _tokenValueAllowed():Bool return @:_0 __self__.value._tokenValueAllowed();
    @:keep
    public dynamic function _tokenPrepareForDecode():stdgo.Error return @:_0 __self__.value._tokenPrepareForDecode();
    @:keep
    public dynamic function _refill():stdgo.Error return @:_0 __self__.value._refill();
    @:keep
    public dynamic function _readValue():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._readValue();
    @:keep
    public dynamic function buffered():stdgo._internal.io.Io_reader.Reader return @:_0 __self__.value.buffered();
    @:keep
    public dynamic function decode(_v:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.decode(_v);
    @:keep
    public dynamic function disallowUnknownFields():Void @:_0 __self__.value.disallowUnknownFields();
    @:keep
    public dynamic function useNumber():Void @:_0 __self__.value.useNumber();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_decoderpointer.DecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
