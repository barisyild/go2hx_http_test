package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
class Reader_asInterface {
    @:keep
    public dynamic function _writeBuf(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._writeBuf(_w);
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.writeTo(_w);
    @:keep
    public dynamic function readString(_delim:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.readString(_delim);
    @:keep
    public dynamic function readBytes(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readBytes(_delim);
    @:keep
    public dynamic function _collectFragments(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_0 __self__.value._collectFragments(_delim);
    @:keep
    public dynamic function readLine():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return @:_0 __self__.value.readLine();
    @:keep
    public dynamic function readSlice(_delim:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.readSlice(_delim);
    @:keep
    public dynamic function buffered():stdgo.GoInt return @:_0 __self__.value.buffered();
    @:keep
    public dynamic function unreadRune():stdgo.Error return @:_0 __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_0 __self__.value.readRune();
    @:keep
    public dynamic function unreadByte():stdgo.Error return @:_0 __self__.value.unreadByte();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_0 __self__.value.readByte();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_p);
    @:keep
    public dynamic function discard(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.discard(_n);
    @:keep
    public dynamic function peek(_n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.peek(_n);
    @:keep
    public dynamic function _readErr():stdgo.Error return @:_0 __self__.value._readErr();
    @:keep
    public dynamic function _fill():Void @:_0 __self__.value._fill();
    @:keep
    public dynamic function _reset(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io_reader.Reader):Void @:_0 __self__.value._reset(_buf, _r);
    @:keep
    public dynamic function reset(_r:stdgo._internal.io.Io_reader.Reader):Void @:_0 __self__.value.reset(_r);
    @:keep
    public dynamic function size():stdgo.GoInt return @:_0 __self__.value.size();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.bufio.Bufio_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
