package stdgo._internal.internal.testenv;
import stdgo._internal.os.Os;
import stdgo._internal.flag.Flag;
import stdgo._internal.testing.Testing;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.time.Time;
import stdgo._internal.context.Context;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.internal.platform.Platform;
import stdgo._internal.io.fs.Fs;
function commandContext(_t:stdgo._internal.testing.Testing_tb.TB, _ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString, _args:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> {
        var _args = new stdgo.Slice<stdgo.GoString>(_args.length, 0, ..._args);
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L131"
        _t.helper();
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L132"
        stdgo._internal.internal.testenv.Testenv_musthaveexec.mustHaveExec(_t);
        var _cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc = (null : stdgo._internal.context.Context_cancelfunc.CancelFunc), _gracePeriod:stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L139"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _t;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottestingdottesting_tbdottb.__type__stdgodot_internaldottestingdotTesting_tbdotTB)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [
new stdgo._internal.internal.reflect.MethodType("cleanup", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("deadline", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime, stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("error", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("errorf", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("fail", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("failNow", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("failed", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("fatal", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("fatalf", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("helper", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("log", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("logf", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("name", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("setenv", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("skip", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("skipNow", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("skipf", { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("skipped", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("tempDir", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }),
new stdgo._internal.internal.reflect.MethodType("_private", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.internal.testenv.Testenv_t__interface_7.T__interface_7), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.internal.testenv.Testenv_t__interface_7.T__interface_7), _1 : false };
            }, _t = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L143"
                {
                    var __tmp__ = _t.deadline(), _td:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        _gracePeriod = (100000000i64 : stdgo._internal.time.Time_duration.Duration);
                        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L147"
                        {
                            var _s = @:assignType (stdgo._internal.os.Os_getenv.getenv(("GO_TEST_TIMEOUT_SCALE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_s?.__copy__()), _scale:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L149"
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L150"
                                    _t.fatalf(("invalid GO_TEST_TIMEOUT_SCALE: %v" : stdgo.GoString), ({
                                        final __t__ = _err;
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    }));
                                };
                                _gracePeriod = (_gracePeriod * ((_scale : stdgo._internal.time.Time_duration.Duration)) : stdgo._internal.time.Time_duration.Duration);
                            };
                        };
                        var _testTimeout = @:assignType (stdgo._internal.time.Time_until.until(_td?.__copy__()) : stdgo._internal.time.Time_duration.Duration);
                        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L158"
                        {
                            var _gp = @:assignType (_testTimeout / (20i64 : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                            if ((_gp > _gracePeriod : Bool)) {
                                _gracePeriod = _gp;
                            };
                        };
                        var _cmdTimeout = @:assignType (_testTimeout - ((2i64 : stdgo._internal.time.Time_duration.Duration) * _gracePeriod : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L173"
                        {
                            var __tmp__ = _ctx.deadline(), _cd:stdgo._internal.time.Time_time.Time = __tmp__._0, _ok:Bool = __tmp__._1;
                            if ((!_ok || (stdgo._internal.time.Time_until.until(_cd?.__copy__()) > _cmdTimeout : Bool) : Bool)) {
                                {
                                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, _cmdTimeout);
                                    _ctx = @:tmpset0 __tmp__._0;
                                    _cancelCtx = @:tmpset0 __tmp__._1;
                                };
                            };
                        };
                    };
                };
            };
        };
        var _cmd = stdgo._internal.os.exec.Exec_commandcontext.commandContext(_ctx, _name?.__copy__(), ...(_args : Array<stdgo.GoString>));
        (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel = function():stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L184"
            if (((_cancelCtx != null) && (({
                final __t__ = _ctx.err();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == ({
                final __t__ = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L190"
                _t.errorf(("test timed out while running command: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cmd, _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd }))));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L196"
                _t.logf(("%v: terminating command: %v" : stdgo.GoString), ({
                    final __t__ = _ctx.err();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(stdgo.Go.asInterface(_cmd, _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L198"
            return (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).process.signal(stdgo._internal.internal.testenv.Testenv_sigquit.sigquit);
        };
        (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).waitDelay = _gracePeriod;
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L202"
        _t.cleanup(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L203"
            if (_cancelCtx != null) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L204"
                _cancelCtx();
            };
            //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L206"
            if ((({
                final value = (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).process;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ({
                final value = (@:checkr _cmd ?? throw stdgo.Error._nullPointerDereference.__underlying__()).processState;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L207"
                _t.errorf(("command was started, but test did not wait for it to complete: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cmd, _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd }))));
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/internal/testenv/exec.go#L211"
        return _cmd;
    }
