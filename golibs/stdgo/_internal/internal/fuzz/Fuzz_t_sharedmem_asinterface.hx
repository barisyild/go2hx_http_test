package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
class T_sharedMem_asInterface {
    @:keep
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    public dynamic function _setValueLen(_n:stdgo.GoInt):Void @:_0 __self__.value._setValueLen(_n);
    @:keep
    public dynamic function _setValue(_b:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._setValue(_b);
    @:keep
    public dynamic function _valueCopy():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._valueCopy();
    @:keep
    public dynamic function _valueRef():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._valueRef();
    @:keep
    public dynamic function _header():stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader> return @:_0 __self__.value._header();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_sharedmempointer.T_sharedMemPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
