package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
class T_dictDecoder_asInterface {
    @:keep
    public dynamic function _readFlush():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._readFlush();
    @:keep
    public dynamic function _tryWriteCopy(_dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._tryWriteCopy(_dist, _length);
    @:keep
    public dynamic function _writeCopy(_dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._writeCopy(_dist, _length);
    @:keep
    public dynamic function _writeByte(_c:stdgo.GoUInt8):Void @:_0 __self__.value._writeByte(_c);
    @:keep
    public dynamic function _writeMark(_cnt:stdgo.GoInt):Void @:_0 __self__.value._writeMark(_cnt);
    @:keep
    public dynamic function _writeSlice():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._writeSlice();
    @:keep
    public dynamic function _availWrite():stdgo.GoInt return @:_0 __self__.value._availWrite();
    @:keep
    public dynamic function _availRead():stdgo.GoInt return @:_0 __self__.value._availRead();
    @:keep
    public dynamic function _histSize():stdgo.GoInt return @:_0 __self__.value._histSize();
    @:keep
    public dynamic function _init(_size:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._init(_size, _dict);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.compress.flate.Flate_t_dictdecoderpointer.T_dictDecoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
