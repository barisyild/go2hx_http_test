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
function coordinateFuzzing(_ctx:stdgo._internal.context.Context_context.Context, _opts:stdgo._internal.internal.fuzz.Fuzz_coordinatefuzzingopts.CoordinateFuzzingOpts):stdgo.Error {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L86"
            {
                var _err = @:assignType (_ctx.err() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L87"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L89"
            if (_opts.log == null) {
                _opts.log = stdgo._internal.io.Io_discard.discard;
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L92"
            if (_opts.parallel == ((0 : stdgo.GoInt))) {
                _opts.parallel = stdgo._internal.runtime.Runtime_gomaxprocs.gOMAXPROCS((0 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L95"
            if (((_opts.limit > (0i64 : stdgo.GoInt64) : Bool) && ((_opts.parallel : stdgo.GoInt64) > _opts.limit : Bool) : Bool)) {
                _opts.parallel = (_opts.limit : stdgo.GoInt);
            };
            var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__newcoordinator._newCoordinator(_opts?.__copy__()), _c:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L101"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L102"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L105"
            if ((_opts.timeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                var _cancel:() -> Void = null;
                {
                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, _opts.timeout);
                    _ctx = @:tmpset0 __tmp__._0;
                    _cancel = @:tmpset0 __tmp__._1;
                };
                {
                    final __f__ = _cancel;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _fuzzCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelWorkers:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            {
                final __f__ = _cancelWorkers;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _doneC = _ctx.done();
            var _fuzzErr:stdgo.Error = (null : stdgo.Error);
            var _stopping = @:assignType (false : Bool);
            var _stop = @:assignType (function(_err:stdgo.Error):Void {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L120"
                if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                    var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((1 : stdgo.GoInt)), __0:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L122"
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L123"
                        _c._debugLogf(("stop called at %s:%d. stopping: %t" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_stopping, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L125"
                        _c._debugLogf(("stop called at unknown. stopping: %t" : stdgo.GoString), new stdgo.AnyInterface(_stopping, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L129"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = _fuzzCtx.err();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) || stdgo._internal.internal.fuzz.Fuzz__isinterrupterror._isInterruptError(_err) : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L135"
                if (((_err != null) && (((_fuzzErr == null) || (({
                    final __t__ = _fuzzErr;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = _ctx.err();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) : Bool)) : Bool)) {
                    _fuzzErr = _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L138"
                if (_stopping) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L139"
                    return;
                };
                _stopping = true;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L142"
                _cancelWorkers();
                _doneC = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t__struct_28.T__struct_28>);
            } : stdgo.Error -> Void);
            var _crashWritten = @:assignType (false : Bool);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L150"
                        if ((({
                            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing;
                            (value == null || (value : Dynamic).__nil__);
                        }) || _crashWritten : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L151"
                            return;
                        };
                        var _werr = @:assignType (stdgo._internal.internal.fuzz.Fuzz__writetocorpus._writeToCorpus((stdgo.Go.setRef((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing ?? throw stdgo.Error._nullPointerDereference.__underlying__())._entry, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }]) })) : stdgo.Ref<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _opts.corpusDir?.__copy__()) : stdgo.Error);
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L154"
                        if (_werr != null) {
                            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("%w\n%v" : stdgo.GoString), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), ({
                                final __t__ = _werr;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }));
                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L156"
                            return;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L158"
                        if (_err == null) {
                            _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _path : (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing ?? throw stdgo.Error._nullPointerDereference.__underlying__())._entry.path?.__copy__(), _err : stdgo._internal.errors.Errors_new_.new_((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crasherMsg?.__copy__()) } : stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_crasherrordott_crasherror.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_crasherrordotT_crashError })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_crasherrordott_crasherror.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_crasherrordotT_crashError }));
                        };
                    };
                    a();
                }) });
            };
            var _dir = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            var _binPath = @:assignType (stdgo._internal.os.Os_args.args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
            var _args = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("-test.fuzzworker" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((stdgo._internal.os.Os_args.args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
            var _env = stdgo._internal.os.Os_environ_.environ_();
            var _errC = (new stdgo.Chan<stdgo.Error>(0, () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            var _workers = (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>>((_opts.parallel : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_worker.T_worker>>);
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L175"
            if (_workers != null) for (_i => _ in _workers) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.internal.fuzz.Fuzz__newworker._newWorker(_c, _dir?.__copy__(), _binPath?.__copy__(), _args, _env);
                    _workers[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L178"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L179"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L182"
            if (_workers != null) for (_i => _ in _workers) {
                var _w = _workers[(_i : stdgo.GoInt)];
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L184"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var _err = @:assignType (_w._coordinate(_fuzzCtx) : stdgo.Error);
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L186"
                        if (((_fuzzCtx.err() != null) || stdgo._internal.internal.fuzz.Fuzz__isinterrupterror._isInterruptError(_err) : Bool)) {
                            _err = (null : stdgo.Error);
                        };
                        var _cleanErr = @:assignType (_w._cleanup() : stdgo.Error);
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L190"
                        if (_err == null) {
                            _err = _cleanErr;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L193"
                        _errC.__send__(_err);
                    };
                    a();
                }));
            };
            var _activeWorkers = @:assignType (_workers.length : stdgo.GoInt);
            var _statTicker = stdgo._internal.time.Time_newticker.newTicker((3000000000i64 : stdgo._internal.time.Time_duration.Duration));
            {
                final __f__ = _statTicker.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = _c._logStats;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L205"
            _c._logStats();
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L206"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L208"
                if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit > (0i64 : stdgo.GoInt64) : Bool) && ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count >= (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.limit : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L209"
                    _stop((null : stdgo.Error));
                };
                var _inputC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput>);
                var __tmp__ = _c._peekInput(), _input:stdgo._internal.internal.fuzz.Fuzz_t_fuzzinput.T_fuzzInput = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L214"
                if (((_ok && ({
                    final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing;
                    (value == null || (value : Dynamic).__nil__);
                }) : Bool) && !_stopping : Bool)) {
                    _inputC = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputC;
                };
                var _minimizeC:stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput> = (null : stdgo.Chan<stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput>);
                var __tmp__ = _c._peekMinimizeInput(), _minimizeInput:stdgo._internal.internal.fuzz.Fuzz_t_fuzzminimizeinput.T_fuzzMinimizeInput = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L220"
                if ((_ok && !_stopping : Bool)) {
                    _minimizeC = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minimizeC;
                };
                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L224"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = _inputC;
var __c__4 = _minimizeC;
var __c__5 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _doneC;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L228"
                                    _stop(_ctx.err());
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _errC;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _err = __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L232"
                                    _stop(_err);
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L233"
                                    _activeWorkers--;
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L234"
                                    if (_activeWorkers == ((0 : stdgo.GoInt))) {
                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L235"
                                        {
                                            final __ret__:stdgo.Error = _err = _fuzzErr;
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return __ret__;
                                        };
                                    };
                                };
                            };
                        } else if ({
                            if (__c__2 == null) {
                                __c__2 = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resultC;
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _result = __c__2.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L240"
                                    if (_stopping) {
                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L241"
                                        break;
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L243"
                                    _c._updateStats(_result?.__copy__());
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L245"
                                    if (_result._crasherMsg != ((stdgo.Go.str() : stdgo.GoString))) {
                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L246"
                                        if ((_c._warmupRun() && _result._entry.isSeed : Bool)) {
                                            var _target = @:assignType (stdgo._internal.path.filepath.Filepath_base.base((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.corpusDir?.__copy__())?.__copy__() : stdgo.GoString);
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L248"
                                            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("failure while testing seed corpus entry: %s/%s\n" : stdgo.GoString), new stdgo.AnyInterface(_target, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.internal.fuzz.Fuzz__testname._testName(_result._entry.parent?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L249"
                                            _stop(stdgo._internal.errors.Errors_new_.new_(_result._crasherMsg?.__copy__()));
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L250"
                                            break;
                                        };
                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L252"
                                        if ((_c._canMinimize() && _result._canMinimize : Bool)) {
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L253"
                                            if (({
                                                final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing;
                                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                            })) {
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L256"
                                                if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L257"
                                                    _c._debugLogf(("found unminimized crasher, skipping in favor of minimizable crasher" : stdgo.GoString));
                                                };
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L259"
                                                break;
                                            };
                                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing = (stdgo.Go.setRef(_result, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_fuzzresultdott_fuzzresult.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_fuzzresultdotT_fuzzResult })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_fuzzresult.T_fuzzResult>);
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L265"
                                            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: minimizing %d-byte failing input file\n" : stdgo.GoString), new stdgo.AnyInterface((_result._entry.data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L266"
                                            _c._queueForMinimization(_result?.__copy__(), (null : stdgo.Slice<stdgo.GoUInt8>));
                                        } else if (!_crashWritten) {
                                            var _err = @:assignType (stdgo._internal.internal.fuzz.Fuzz__writetocorpus._writeToCorpus((stdgo.Go.setRef(_result._entry, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }]) })) : stdgo.Ref<{ var parent : stdgo.GoString; var path : stdgo.GoString; var data : stdgo.Slice<stdgo.GoUInt8>; var values : stdgo.Slice<stdgo.AnyInterface>; var generation : stdgo.GoInt; var isSeed : Bool; }>), _opts.corpusDir?.__copy__()) : stdgo.Error);
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L271"
                                            if (_err == null) {
                                                _crashWritten = true;
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ _path : _result._entry.path?.__copy__(), _err : stdgo._internal.errors.Errors_new_.new_(_result._crasherMsg?.__copy__()) } : stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_crasherrordott_crasherror.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_crasherrordotT_crashError })) : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_crasherror.T_crashError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_crasherrordott_crasherror.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_crasherrordotT_crashError }));
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L278"
                                            if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L279"
                                                _c._debugLogf(("found crasher, id: %s, parent: %s, gen: %d, size: %d, exec time: %s" : stdgo.GoString), new stdgo.AnyInterface(_result._entry.path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result._entry.parent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result._entry.generation, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_result._entry.data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_result._entryDuration, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L288"
                                            _stop(_err);
                                        };
                                    } else if (_result._coverageData != null) {
                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L291"
                                        if (_c._warmupRun()) {
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L292"
                                            if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L293"
                                                _c._debugLogf(("processed an initial input, id: %s, new bits: %d, size: %d, exec time: %s" : stdgo.GoString), new stdgo.AnyInterface(_result._entry.parent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.internal.fuzz.Fuzz__countbits._countBits(stdgo._internal.internal.fuzz.Fuzz__diffcoverage._diffCoverage((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask, _result._coverageData)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_result._entry.data.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_result._entryDuration, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                                            };
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L301"
                                            _c._updateCoverage(_result._coverageData);
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L302"
                                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputLeft--;
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L303"
                                            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputLeft == ((0 : stdgo.GoInt))) {
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L304"
                                                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: elapsed: %s, gathering baseline coverage: %d/%d completed, now fuzzing with %d workers\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_c._elapsed(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.parallel, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L305"
                                                if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L306"
                                                    _c._debugLogf(("finished processing input corpus, entries: %d, initial coverage bits: %d" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.internal.fuzz.Fuzz__countbits._countBits((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                                };
                                            };
                                        } else {
                                            var _keepCoverage = stdgo._internal.internal.fuzz.Fuzz__diffcoverage._diffCoverage((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask, _result._coverageData);
                                            if (_keepCoverage != null) {
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L322"
                                                if (((_c._canMinimize() && _result._canMinimize : Bool) && ({
                                                    final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._crashMinimizing;
                                                    (value == null || (value : Dynamic).__nil__);
                                                }) : Bool)) {
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L325"
                                                    _c._queueForMinimization(_result?.__copy__(), _keepCoverage);
                                                } else {
                                                    var _inputSize = @:assignType (_result._entry.data.length : stdgo.GoInt);
                                                    var __tmp__ = _c._addCorpusEntries(true, {
                                                        final x = _result._entry;
                                                        { parent : x.parent?.__copy__(), path : x.path?.__copy__(), data : x.data, values : x.values, generation : x.generation, isSeed : x.isSeed };
                                                    }), _entryNew:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L330"
                                                    if (_err != null) {
                                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L331"
                                                        _stop(_err);
                                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L332"
                                                        break;
                                                    };
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L334"
                                                    if (!_entryNew) {
                                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L335"
                                                        if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L336"
                                                            _c._debugLogf(("ignoring duplicate input which increased coverage, id: %s" : stdgo.GoString), new stdgo.AnyInterface(_result._entry.path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                                        };
                                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L341"
                                                        break;
                                                    };
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L343"
                                                    _c._updateCoverage(_keepCoverage);
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L344"
                                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inputQueue._enqueue(new stdgo.AnyInterface(_result._entry, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "values", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false }, { name : "generation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "isSeed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }]))));
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L345"
                                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._interestingCount++;
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L346"
                                                    if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L347"
                                                        _c._debugLogf(("new interesting input, id: %s, parent: %s, gen: %d, new bits: %d, total bits: %d, size: %d, exec time: %s" : stdgo.GoString), new stdgo.AnyInterface(_result._entry.path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result._entry.parent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result._entry.generation, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.internal.fuzz.Fuzz__countbits._countBits(_keepCoverage), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.internal.fuzz.Fuzz__countbits._countBits((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._coverageMask), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_inputSize, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_result._entryDuration, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)));
                                                    };
                                                };
                                            } else {
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L360"
                                                if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L361"
                                                    _c._debugLogf(("worker reported interesting input that doesn\'t expand coverage, id: %s, parent: %s, canMinimize: %t" : stdgo.GoString), new stdgo.AnyInterface(_result._entry.path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result._entry.parent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_result._canMinimize, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                                                };
                                            };
                                        };
                                    } else if (_c._warmupRun()) {
                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L372"
                                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputLeft--;
                                        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L373"
                                        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputLeft == ((0 : stdgo.GoInt))) {
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L374"
                                            stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.log, ("fuzz: elapsed: %s, testing seed corpus: %d/%d completed, now fuzzing with %d workers\n" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_c._elapsed(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration)), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._warmupInputCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opts.parallel, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L375"
                                            if (stdgo._internal.internal.fuzz.Fuzz__shouldprintdebuginfo._shouldPrintDebugInfo()) {
                                                //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L376"
                                                _c._debugLogf(("finished testing-only phase, entries: %d" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._corpus._entries.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                                            };
                                        };
                                    };
                                };
                            };
                        } else if (_inputC != null && __c__3.__isSend__(true)) {
                            __select__ = false;
                            {
                                __c__3.__send__(_input?.__copy__());
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L386"
                                    _c._sentInput(_input?.__copy__());
                                };
                            };
                        } else if (_minimizeC != null && __c__4.__isSend__(true)) {
                            __select__ = false;
                            {
                                __c__4.__send__(_minimizeInput?.__copy__());
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L390"
                                    _c._sentMinimizeInput(_minimizeInput?.__copy__());
                                };
                            };
                        } else if ({
                            if (__c__5 == null) {
                                __c__5 = (@:checkr _statTicker ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                            };
                            __c__5 != null && __c__5.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__5.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/fuzz.go#L393"
                                    _c._logStats();
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
__c__4.__reset__();
__c__5.__reset__();
                };
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
                return _err;
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
                return _err;
            };
        };
    }
