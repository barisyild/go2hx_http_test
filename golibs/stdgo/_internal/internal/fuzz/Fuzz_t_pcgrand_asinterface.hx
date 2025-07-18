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
class T_pcgRand_asInterface {
    @:keep
    public dynamic function _bool():Bool return @:_0 __self__.value._bool();
    @:keep
    public dynamic function _exp2():stdgo.GoInt return @:_0 __self__.value._exp2();
    @:keep
    public dynamic function _uint32n(_n:stdgo.GoUInt32):stdgo.GoUInt32 return @:_0 __self__.value._uint32n(_n);
    @:keep
    public dynamic function _intn(_n:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._intn(_n);
    @:keep
    public dynamic function _uint32():stdgo.GoUInt32 return @:_0 __self__.value._uint32();
    @:keep
    public dynamic function _restore(_randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void @:_0 __self__.value._restore(_randState, _randInc);
    @:keep
    public dynamic function _save(_randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void @:_0 __self__.value._save(_randState, _randInc);
    @:keep
    public dynamic function _step():Void @:_0 __self__.value._step();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.fuzz.Fuzz_t_pcgrandpointer.T_pcgRandPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
