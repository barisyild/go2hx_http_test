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
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs_static_extension.T_minimizeArgs_static_extension) @:using(stdgo._internal.internal.fuzz.Fuzz_t_minimizeargs_static_extension.T_minimizeArgs_static_extension) class T_minimizeArgs {
    public var timeout : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var limit : stdgo.GoInt64 = 0;
    public var keepCoverage : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var index : stdgo.GoInt = 0;
    public function new(?timeout:stdgo._internal.time.Time_duration.Duration, ?limit:stdgo.GoInt64, ?keepCoverage:stdgo.Slice<stdgo.GoUInt8>, ?index:stdgo.GoInt) {
        if (timeout != null) this.timeout = timeout;
        if (limit != null) this.limit = limit;
        if (keepCoverage != null) this.keepCoverage = keepCoverage;
        if (index != null) this.index = index;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "timeout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false }, { name : "limit", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "keepCoverage", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_minimizeArgs(timeout, limit, keepCoverage, index);
    }
}
