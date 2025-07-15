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
function _diffCoverage(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L39"
        if ((_base.length) != ((_snapshot.length))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L40"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("the number of coverage bits changed: before=%d, after=%d" : stdgo.GoString), new stdgo.AnyInterface((_base.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_snapshot.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _found = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L43"
        if (_snapshot != null) for (_i => _ in _snapshot) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L44"
            if ((_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _found = true;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L46"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L49"
        if (!_found) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L50"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _diff = (new stdgo.Slice<stdgo.GoUInt8>((_snapshot.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L53"
        if (_diff != null) for (_i => _ in _diff) {
            _diff[(_i : stdgo.GoInt)] = (_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/coverage.go#L56"
        return _diff;
    }
