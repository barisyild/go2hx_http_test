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
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_contextReader_asInterface) class T_contextReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_contextreader.T_contextReader> = _cr;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1175"
        {
            var _ctxErr = @:assignType ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx.err() : stdgo.Error);
            if (_ctxErr != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1176"
                return { _0 : (0 : stdgo.GoInt), _1 : _ctxErr };
            };
        };
        var _done = (new stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t__struct_28.T__struct_28>(0, () -> ({  } : stdgo._internal.internal.fuzz.Fuzz_t__struct_28.T__struct_28)) : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t__struct_28.T__struct_28>);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1184"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var __tmp__ = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_b);
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1186"
                if (_done != null) _done.__close__();
            };
            a();
        }));
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1189"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1191"
                                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx.err() };
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _done;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/worker.go#L1193"
                                return { _0 : _n, _1 : _err };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
    }
}
