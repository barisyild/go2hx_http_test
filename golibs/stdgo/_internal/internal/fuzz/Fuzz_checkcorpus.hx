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
function checkCorpus(_vals:stdgo.Slice<stdgo.AnyInterface>, _types:stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1028"
        if ((_vals.length) != ((_types.length))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1029"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("wrong number of values in corpus entry: %d, want %d" : stdgo.GoString), new stdgo.AnyInterface((_vals.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_types.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        var _valsT = (new stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>((_vals.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.reflect.Reflect_type_.Type_>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1032"
        if (_vals != null) for (_valsI => _v in _vals) {
            _valsT[(_valsI : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_typeof.typeOf(_v);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1035"
        if (_types != null) for (_i => _ in _types) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1036"
            if (!((_valsT[(_i : stdgo.GoInt)].string() : String) == (_types[(_i : stdgo.GoInt)].string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1037"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched types in corpus entry: %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_valsT, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }))), new stdgo.AnyInterface(_types, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L1040"
        return (null : stdgo.Error);
    }
