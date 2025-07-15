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
function runFuzzWorker(_ctx:stdgo._internal.context.Context_context.Context, _fn:({ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }) -> stdgo.Error):stdgo.Error {
        var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__getworkercomm._getWorkerComm(), _comm:stdgo._internal.internal.fuzz.Fuzz_t_workercomm.T_workerComm = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L486"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L487"
            return _err;
        };
        var _srv = (stdgo.Go.setRef(({ _workerComm : _comm?.__copy__(), _fuzzFn : function(_e:{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }):{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Error; } {
            var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
            try {
                var _timer = stdgo._internal.time.Time_afterfunc.afterFunc((10000000000i64 : stdgo._internal.time.Time_duration.Duration), function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L493"
                    throw new stdgo.AnyInterface(("deadlocked!" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                });
                {
                    final __f__ = _timer.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                var _start = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
                var _err = @:assignType (_fn({
                    final x = _e;
                    { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
                }) : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L498"
                {
                    final __ret__:{ var _0 : stdgo._internal.time.Time_duration.Duration; var _1 : stdgo.Error; } = { _0 : stdgo._internal.time.Time_since.since(_start?.__copy__()), _1 : _err };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    if (stdgo.Go.recover_exception != null) {
                        final e = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        @:throw1 throw e;
                    };
                    return { _0 : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
                };
            } catch(__exception__) {
                {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                    };
                    stdgo.Go.recover_exception = exe;
                    {
                        function f() {
                            try {
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                };
                            } catch(__exception__2) {
                                var exe:Dynamic = __exception__2.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                                };
                                stdgo.Go.recover_exception = exe;
                                f();
                            };
                        };
                        f();
                    };
                    if (stdgo.Go.recover_exception != null) {
                        final e = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        @:throw3 throw e;
                    };
                    return { _0 : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration), _1 : (null : stdgo.Error) };
                };
            };
        }, _m : stdgo._internal.internal.fuzz.Fuzz__newmutator._newMutator() } : stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_workerserverdott_workerserver.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_workerserverdotT_workerServer })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerserver.T_workerServer>);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L502"
        return _srv._serve(_ctx);
    }
