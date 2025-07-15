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
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_sharedMem_asInterface) class T_sharedMem_static_extension {
    @:keep
    @:tdfield
    static public function close( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Error {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/sys_unimplemented.go#L23"
        throw new stdgo.AnyInterface(("not implemented" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
    @:keep
    @:tdfield
    static public function _setValueLen( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>, _n:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _v = _m._valueRef();
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L129"
        if ((_n > _v.capacity : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L130"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("length %d larger than shared memory capacity %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_v.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        _m._header()._valueLen = _n;
    }
    @:keep
    @:tdfield
    static public function _setValue( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _v = _m._valueRef();
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L114"
        if (((_b.length) > _v.capacity : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L115"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("value length %d larger than shared memory capacity %d" : stdgo.GoString), new stdgo.AnyInterface((_b.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_v.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        _m._header()._valueLen = (_b.length);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L118"
        (_v.__slice__(0, _v.capacity) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
    }
    @:keep
    @:tdfield
    static public function _valueCopy( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _ref = _m._valueRef();
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L106"
        return stdgo._internal.bytes.Bytes_clone.clone(_ref);
    }
    @:keep
    @:tdfield
    static public function _valueRef( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        var _length = @:assignType (_m._header()._valueLen : stdgo.GoInt);
        var _valueOffset = @:assignType (stdgo._internal.unsafe.Unsafe_sizeof.sizeof(new stdgo.AnyInterface((new stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader() : stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType))) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L100"
        return ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._region.__slice__(_valueOffset, (_valueOffset + _length : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _header( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>):stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader> {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem> = _m;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mem.go#L92"
        return ((new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._region[(0 : stdgo.GoInt)]), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind))) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.GoType.invalidType) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmemheader.T_sharedMemHeader>);
    }
}
