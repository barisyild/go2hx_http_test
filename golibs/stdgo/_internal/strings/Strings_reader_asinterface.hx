package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
class Reader_asInterface {
    @:keep
    public dynamic function reset(_s:stdgo.GoString):Void @:_0 __self__.value.reset(_s);
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.writeTo(_w);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function unreadRune():stdgo.Error return @:_0 __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.readRune();
    @:keep
    public dynamic function unreadByte():stdgo.Error return @:_0 __self__.value.unreadByte();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value.readByte();
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.readAt(_b, _off);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_b);
    @:keep
    public dynamic function size():stdgo.GoInt64 return @:_0 __self__.value.size();
    @:keep
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.strings.Strings_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
