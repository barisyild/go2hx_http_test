package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
class Buffer_asInterface {
    @:keep
    public dynamic function readString(_delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readString(_delim);
    @:keep
    public dynamic function _readSlice(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._readSlice(_delim);
    @:keep
    public dynamic function readBytes(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readBytes(_delim);
    @:keep
    public dynamic function unreadByte():stdgo.Error return @:_0 __self__.value.unreadByte();
    @:keep
    public dynamic function unreadRune():stdgo.Error return @:_0 __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.readRune();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value.readByte();
    @:keep
    public dynamic function next(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.next(_n);
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_p);
    @:keep
    public dynamic function writeRune(_r:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeRune(_r);
    @:keep
    public dynamic function writeByte(_c:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value.writeByte(_c);
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.writeTo(_w);
    @:keep
    public dynamic function readFrom(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.readFrom(_r);
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    public dynamic function grow(_n:stdgo.GoInt):Void @:_0 __self__.value.grow(_n);
    @:keep
    public dynamic function _grow(_n:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._grow(_n);
    @:keep
    public dynamic function _tryGrowByReslice(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_0 __self__.value._tryGrowByReslice(_n);
    @:keep
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    public dynamic function truncate(_n:stdgo.GoInt):Void @:_0 __self__.value.truncate(_n);
    @:keep
    public dynamic function available():stdgo.GoInt return @:_0 __self__.value.available();
    @:keep
    public dynamic function cap():stdgo.GoInt return @:_0 __self__.value.cap();
    @:keep
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    public dynamic function _empty():Bool return @:_0 __self__.value._empty();
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function availableBuffer():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.availableBuffer();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.bytes.Bytes_bufferpointer.BufferPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
