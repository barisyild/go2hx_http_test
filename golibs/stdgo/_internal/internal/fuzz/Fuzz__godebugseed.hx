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
function _godebugSeed():stdgo.Pointer<stdgo.GoInt> {
        var _debug = stdgo._internal.strings.Strings_split.split(stdgo._internal.os.Os_getenv.getenv(("GODEBUG" : stdgo.GoString))?.__copy__(), ("," : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L47"
        if (_debug != null) for (__0 => _f in _debug) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L48"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(stdgo._internal.strings.Strings_trimprefix.trimPrefix(_f?.__copy__(), ("fuzzseed=" : stdgo.GoString))?.__copy__()), _seed:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                var _seed__pointer__ = stdgo.Go.pointer(_seed);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L50"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L51"
                    throw new stdgo.AnyInterface(("malformed fuzzseed" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L53"
                return _seed__pointer__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/pcg.go#L56"
        return (null : stdgo.Pointer<stdgo.GoInt>);
    }
