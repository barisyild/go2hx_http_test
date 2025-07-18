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
function _hasCoverageBit(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L83"
        if (_snapshot != null) for (_i => _ in _snapshot) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L84"
            if ((_snapshot[(_i : stdgo.GoInt)] & _base[(_i : stdgo.GoInt)] : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L85"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L88"
        return false;
    }
