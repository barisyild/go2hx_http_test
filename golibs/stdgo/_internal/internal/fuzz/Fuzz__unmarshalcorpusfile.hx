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
function _unmarshalCorpusFile(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.AnyInterface>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L103"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L104"
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot unmarshal empty string" : stdgo.GoString)) };
        };
        var _lines = stdgo._internal.bytes.Bytes_split.split(_b, ((("\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L107"
        if (((_lines.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L108"
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("must include version and at least one value" : stdgo.GoString)) };
        };
        var _version = @:assignType (stdgo._internal.strings.Strings_trimsuffix.trimSuffix((_lines[(0 : stdgo.GoInt)] : stdgo.GoString)?.__copy__(), ("\r" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L111"
        if (_version != (stdgo._internal.internal.fuzz.Fuzz__encversion1._encVersion1)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L112"
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unknown encoding version: %s" : stdgo.GoString), new stdgo.AnyInterface(_version, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        var _vals:stdgo.Slice<stdgo.AnyInterface> = (null : stdgo.Slice<stdgo.AnyInterface>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L115"
        if ((_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>) != null) for (__0 => _line in (_lines.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>)) {
            _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L117"
            if ((_line.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L118"
                continue;
            };
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__parsecorpusvalue._parseCorpusValue(_line), _v:stdgo.AnyInterface = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L121"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L122"
                return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("malformed line %q: %v" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) };
            };
            _vals = (_vals.__append__(_v) : stdgo.Slice<stdgo.AnyInterface>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/encoding.go#L126"
        return { _0 : _vals, _1 : (null : stdgo.Error) };
    }
