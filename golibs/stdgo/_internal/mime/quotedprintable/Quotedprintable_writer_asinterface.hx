package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
class Writer_asInterface {
    @:keep
    public dynamic function _flush():stdgo.Error return @:_0 __self__.value._flush();
    @:keep
    public dynamic function _insertCRLF():stdgo.Error return @:_0 __self__.value._insertCRLF();
    @:keep
    public dynamic function _insertSoftLineBreak():stdgo.Error return @:_0 __self__.value._insertSoftLineBreak();
    @:keep
    public dynamic function _checkLastByte():stdgo.Error return @:_0 __self__.value._checkLastByte();
    @:keep
    public dynamic function _encode(_b:stdgo.GoUInt8):stdgo.Error return @:_0 __self__.value._encode(_b);
    @:keep
    public dynamic function _write(_p:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._write(_p);
    @:keep
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.mime.quotedprintable.Quotedprintable_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
