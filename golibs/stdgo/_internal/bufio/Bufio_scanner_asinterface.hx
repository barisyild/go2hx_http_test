package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
class Scanner_asInterface {
    @:keep
    public dynamic function split(_split:stdgo._internal.bufio.Bufio_splitfunc.SplitFunc):Void @:_0 __self__.value.split(_split);
    @:keep
    public dynamic function buffer(_buf:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):Void @:_0 __self__.value.buffer(_buf, _max);
    @:keep
    public dynamic function _setErr(_err:stdgo.Error):Void @:_0 __self__.value._setErr(_err);
    @:keep
    public dynamic function _advance(_n:stdgo.GoInt):Bool return @:_0 __self__.value._advance(_n);
    @:keep
    public dynamic function scan():Bool return @:_0 __self__.value.scan();
    @:keep
    public dynamic function text():stdgo.GoString return @:_0 __self__.value.text();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.bufio.Bufio_scannerpointer.ScannerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
