package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
class Iter_asInterface {
    @:keep
    public dynamic function next():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.next();
    @:keep
    public dynamic function done():Bool return @:_0 __self__.value.done();
    @:keep
    public dynamic function _setDone():Void @:_0 __self__.value._setDone();
    @:keep
    public dynamic function pos():stdgo.GoInt return @:_0 __self__.value.pos();
    @:keep
    public dynamic function _returnSlice(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._returnSlice(_a, _b);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function initString(_f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.GoString):Void @:_0 __self__.value.initString(_f, _src);
    @:keep
    public dynamic function init(_f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.init(_f, _src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.text.unicode.norm.Norm_iterpointer.IterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
