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
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.MalformedCorpusError_asInterface) class MalformedCorpusError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_malformedcorpuserror.MalformedCorpusError> = _e;
        var _msgs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L967"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errs != null) for (__0 => _s in (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errs) {
            _msgs = (_msgs.__append__(_s.error()?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L970"
        return stdgo._internal.strings.Strings_join.join(_msgs, ("\n" : stdgo.GoString))?.__copy__();
    }
}
