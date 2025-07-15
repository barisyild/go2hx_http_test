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
function _newPcgRand():stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_pcgranddott_pcgrand.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_pcgranddotT_pcgRand })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pcgrand.T_pcgRand>);
        var _now = @:assignType (stdgo._internal.time.Time_now.now().unixNano() : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L63"
        {
            var _seed = stdgo._internal.internal.fuzz.Fuzz__godebugseed._godebugSeed();
            if (_seed != null) {
                _now = (_seed.value : stdgo.GoUInt64);
            };
        };
        var _inc = @:assignType (stdgo._internal.sync.atomic_.Atomic__adduint64.addUint64(stdgo.Go.pointer(stdgo._internal.internal.fuzz.Fuzz__globalinc._globalInc), (1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = _now;
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inc = (((_inc << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L69"
        _r._step();
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state + (_now) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L71"
        _r._step();
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L72"
        return _r;
    }
