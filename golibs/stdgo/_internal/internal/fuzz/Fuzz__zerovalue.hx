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
function _zeroValue(_t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.AnyInterface {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1065"
        if (stdgo._internal.internal.fuzz.Fuzz__zerovals._zeroVals != null) for (__0 => _v in stdgo._internal.internal.fuzz.Fuzz__zerovals._zeroVals) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1066"
            if ((stdgo._internal.reflect.Reflect_typeof.typeOf(_v).string() : String) == (_t.string() : String)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1067"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1070"
        throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported type: %v" : stdgo.GoString), ({
            final __t__ = _t;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
