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
function _readCorpusData(_data:stdgo.Slice<stdgo.GoUInt8>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):{ var _0 : stdgo.Slice<stdgo.AnyInterface>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__unmarshalcorpusfile._unmarshalCorpusFile(_data), _vals:stdgo.Slice<stdgo.AnyInterface> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1016"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1017"
            return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("unmarshal: %v" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1019"
        {
            _err = stdgo._internal.internal.fuzz.Fuzz_checkcorpus.checkCorpus(_vals, _types);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1020"
                return { _0 : (null : stdgo.Slice<stdgo.AnyInterface>), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1022"
        return { _0 : _vals, _1 : (null : stdgo.Error) };
    }
