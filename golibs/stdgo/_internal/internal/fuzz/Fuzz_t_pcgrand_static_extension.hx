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
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_pcgRand_asInterface) class T_pcgRand_static_extension {
    @:keep
    @:tdfield
    static public function _bool( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L133"
        return (_r._uint32() & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
    @:keep
    @:tdfield
    static public function _exp2( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L128"
        return stdgo._internal.math.bits.Bits_trailingzeros32.trailingZeros32(_r._uint32());
    }
    @:keep
    @:tdfield
    static public function _uint32n( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>, _n:stdgo.GoUInt32):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        var _v = @:assignType (_r._uint32() : stdgo.GoUInt32);
        var _prod = @:assignType ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _low = @:assignType (_prod : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L115"
        if ((_low < _n : Bool)) {
            var _thresh = @:assignType ((-(_n : stdgo.GoInt32) : stdgo.GoUInt32) % _n : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L117"
            while ((_low < _thresh : Bool)) {
                _v = _r._uint32();
                _prod = ((_v : stdgo.GoUInt64) * (_n : stdgo.GoUInt64) : stdgo.GoUInt64);
                _low = (_prod : stdgo.GoUInt32);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L123"
        return ((_prod >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _intn( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L100"
        if (((_n : stdgo.GoUInt32) : stdgo.GoInt) != (_n)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L101"
            throw new stdgo.AnyInterface(("large Intn" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L103"
        return (_r._uint32n((_n : stdgo.GoUInt32)) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _uint32( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>):stdgo.GoUInt32 {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        var _x = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L93"
        _r._step();
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L94"
        return stdgo._internal.math.bits.Bits_rotateleft32.rotateLeft32(((((((_x >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) ^ _x : stdgo.GoUInt64)) >> (27i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), -((_x >> (59i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _restore( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>, _randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _randState;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inc = _randInc;
    }
    @:keep
    @:tdfield
    static public function _save( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>, _randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        _randState.value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state;
        _randInc.value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inc;
    }
    @:keep
    @:tdfield
    static public function _step( _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> = _r;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state * ((6364136223846793005i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state + ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inc) : stdgo.GoUInt64);
    }
}
