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
function _byteSliceInsertRandomBytes(_m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _pos = @:assignType (_m._rand(((_b.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        var _n = @:assignType (_m._chooseLen((1024 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L24"
        if ((((_b.length) + _n : stdgo.GoInt) >= _b.capacity : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L25"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L28"
        (_b.__slice__((_pos + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_b.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L29"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _b[(_pos + _i : stdgo.GoInt)] = (_m._rand((256 : stdgo.GoInt)) : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/mutators_byteslice.go#L32"
        return _b;
    }
