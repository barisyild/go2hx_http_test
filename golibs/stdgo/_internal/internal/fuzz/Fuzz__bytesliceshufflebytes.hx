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
function _byteSliceShuffleBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L259"
        if (((_b.length) <= (1 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L260"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _dst = @:assignType (_m._rand((_b.length)) : stdgo.GoInt);
        var _n = @:assignType (_m._chooseLen(((_b.length) - _dst : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L264"
        if ((_n <= (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L265"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L270"
        {
            var _i = @:assignType (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var _j = @:assignType (_m._rand((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
{
                    final __tmp__0 = _b[(_dst + _j : stdgo.GoInt)];
                    final __tmp__1 = _b[(_dst + _i : stdgo.GoInt)];
                    final __tmp__2 = _b;
                    final __tmp__3 = (_dst + _i : stdgo.GoInt);
                    final __tmp__4 = _b;
                    final __tmp__5 = (_dst + _j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L274"
        return _b;
    }
