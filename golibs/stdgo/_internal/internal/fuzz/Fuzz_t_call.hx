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
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_call_static_extension.T_call_static_extension) @:using(stdgo._internal.internal.fuzz.Fuzz_t_call_static_extension.T_call_static_extension) class T_call {
    public var ping : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>);
    public var fuzz : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>);
    public var minimize : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>);
    public function new(?ping:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_pingargs.T_pingArgs>, ?fuzz:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzargs.T_fuzzArgs>, ?minimize:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs.T_minimizeArgs>) {
        if (ping != null) this.ping = ping;
        if (fuzz != null) this.fuzz = fuzz;
        if (minimize != null) this.minimize = minimize;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "ping", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_pingargsdott_pingargs.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_pingargsdotT_pingArgs }) }, optional : false }, { name : "fuzz", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzargsdott_fuzzargs.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzargsdotT_fuzzArgs }) }, optional : false }, { name : "minimize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_minimizeargsdott_minimizeargs.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_minimizeargsdotT_minimizeArgs }) }, optional : false }])));
    public function __copy__() {
        return new T_call(ping, fuzz, minimize);
    }
}
