package stdgo._internal.os.exec;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
@:structInit @:using(stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension) @:using(stdgo._internal.os.exec.Exec_cmd_static_extension.Cmd_static_extension) class Cmd {
    public var path : stdgo.GoString = "";
    public var args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var dir : stdgo.GoString = "";
    public var stdin : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var stdout : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var stderr : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var extraFiles : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>);
    public var sysProcAttr : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr> = (null : stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>);
    public var process : stdgo.Ref<stdgo._internal.os.Os_process.Process> = (null : stdgo.Ref<stdgo._internal.os.Os_process.Process>);
    public var processState : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState> = (null : stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var err : stdgo.Error = (null : stdgo.Error);
    public var cancel : () -> stdgo.Error = null;
    public var waitDelay : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _childIOFiles : stdgo.Slice<stdgo._internal.io.Io_closer.Closer> = (null : stdgo.Slice<stdgo._internal.io.Io_closer.Closer>);
    public var _parentIOPipes : stdgo.Slice<stdgo._internal.io.Io_closer.Closer> = (null : stdgo.Slice<stdgo._internal.io.Io_closer.Closer>);
    public var _goroutine : stdgo.Slice<() -> stdgo.Error> = (null : stdgo.Slice<() -> stdgo.Error>);
    public var _goroutineErr : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public var _ctxResult : stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult> = (null : stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>);
    public var _createdByStack : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _lookPathErr : stdgo.Error = (null : stdgo.Error);
    public function new(?path:stdgo.GoString, ?args:stdgo.Slice<stdgo.GoString>, ?env:stdgo.Slice<stdgo.GoString>, ?dir:stdgo.GoString, ?stdin:stdgo._internal.io.Io_reader.Reader, ?stdout:stdgo._internal.io.Io_writer.Writer, ?stderr:stdgo._internal.io.Io_writer.Writer, ?extraFiles:stdgo.Slice<stdgo.Ref<stdgo._internal.os.Os_file.File>>, ?sysProcAttr:stdgo.Ref<stdgo._internal.syscall.Syscall_sysprocattr.SysProcAttr>, ?process:stdgo.Ref<stdgo._internal.os.Os_process.Process>, ?processState:stdgo.Ref<stdgo._internal.os.Os_processstate.ProcessState>, ?_ctx:stdgo._internal.context.Context_context.Context, ?err:stdgo.Error, ?cancel:() -> stdgo.Error, ?waitDelay:stdgo._internal.time.Time_duration.Duration, ?_childIOFiles:stdgo.Slice<stdgo._internal.io.Io_closer.Closer>, ?_parentIOPipes:stdgo.Slice<stdgo._internal.io.Io_closer.Closer>, ?_goroutine:stdgo.Slice<() -> stdgo.Error>, ?_goroutineErr:stdgo.Chan<stdgo.Error>, ?_ctxResult:stdgo.Chan<stdgo._internal.os.exec.Exec_t_ctxresult.T_ctxResult>, ?_createdByStack:stdgo.Slice<stdgo.GoUInt8>, ?_lookPathErr:stdgo.Error) {
        if (path != null) this.path = path;
        if (args != null) this.args = args;
        if (env != null) this.env = env;
        if (dir != null) this.dir = dir;
        if (stdin != null) this.stdin = stdin;
        if (stdout != null) this.stdout = stdout;
        if (stderr != null) this.stderr = stderr;
        if (extraFiles != null) this.extraFiles = extraFiles;
        if (sysProcAttr != null) this.sysProcAttr = sysProcAttr;
        if (process != null) this.process = process;
        if (processState != null) this.processState = processState;
        if (_ctx != null) this._ctx = _ctx;
        if (err != null) this.err = err;
        if (cancel != null) this.cancel = cancel;
        if (waitDelay != null) this.waitDelay = waitDelay;
        if (_childIOFiles != null) this._childIOFiles = _childIOFiles;
        if (_parentIOPipes != null) this._parentIOPipes = _parentIOPipes;
        if (_goroutine != null) this._goroutine = _goroutine;
        if (_goroutineErr != null) this._goroutineErr = _goroutineErr;
        if (_ctxResult != null) this._ctxResult = _ctxResult;
        if (_createdByStack != null) this._createdByStack = _createdByStack;
        if (_lookPathErr != null) this._lookPathErr = _lookPathErr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "args", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "env", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "stdin", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false },
{ name : "stdout", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false },
{ name : "stderr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false },
{ name : "extraFiles", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }) }) }, optional : false },
{ name : "sysProcAttr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_sysprocattrdotsysprocattr.__type__stdgodot_internaldotsyscalldotSyscall_sysprocattrdotSysProcAttr }) }, optional : false },
{ name : "process", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_processdotprocess.__type__stdgodot_internaldotosdotOs_processdotProcess }) }, optional : false },
{ name : "processState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_processstatedotprocessstate.__type__stdgodot_internaldotosdotOs_processstatedotProcessState }) }, optional : false },
{ name : "_ctx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false },
{ name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "cancel", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "waitDelay", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_durationdotduration.__type__stdgodot_internaldottimedotTime_durationdotDuration }, optional : false },
{ name : "_childIOFiles", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_closerdotcloser.__type__stdgodot_internaldotiodotIo_closerdotCloser }) }, optional : false },
{ name : "_parentIOPipes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_closerdotcloser.__type__stdgodot_internaldotiodotIo_closerdotCloser }) }, optional : false },
{ name : "_goroutine", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }) }, optional : false },
{ name : "_goroutineErr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }) }, optional : false },
{ name : "_ctxResult", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_t_ctxresultdott_ctxresult.__type__stdgodot_internaldotosdotexecdotExec_t_ctxresultdotT_ctxResult }) }, optional : false },
{ name : "_createdByStack", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_lookPathErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new Cmd(
path,
args,
env,
dir,
stdin,
stdout,
stderr,
extraFiles,
sysProcAttr,
process,
processState,
_ctx,
err,
cancel,
waitDelay,
_childIOFiles,
_parentIOPipes,
_goroutine,
_goroutineErr,
_ctxResult,
_createdByStack,
_lookPathErr);
    }
}
