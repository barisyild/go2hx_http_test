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
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension) @:using(stdgo._internal.internal.fuzz.Fuzz_t_worker_static_extension.T_worker_static_extension) class T_worker {
    public var _dir : stdgo.GoString = "";
    public var _binPath : stdgo.GoString = "";
    public var _args : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _env : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _coordinator : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>);
    public var _memMu : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>);
    public var _cmd : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd> = (null : stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>);
    public var _client : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient> = (null : stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>);
    public var _waitErr : stdgo.Error = (null : stdgo.Error);
    public var _interrupted : Bool = false;
    public var _termC : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public function new(?_dir:stdgo.GoString, ?_binPath:stdgo.GoString, ?_args:stdgo.Slice<stdgo.GoString>, ?_env:stdgo.Slice<stdgo.GoString>, ?_coordinator:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_coordinator.T_coordinator>, ?_memMu:stdgo.Chan<stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_sharedmem.T_sharedMem>>, ?_cmd:stdgo.Ref<stdgo._internal.os.exec.Exec_cmd.Cmd>, ?_client:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_workerclient.T_workerClient>, ?_waitErr:stdgo.Error, ?_interrupted:Bool, ?_termC:stdgo.Chan<{ }>) {
        if (_dir != null) this._dir = _dir;
        if (_binPath != null) this._binPath = _binPath;
        if (_args != null) this._args = _args;
        if (_env != null) this._env = _env;
        if (_coordinator != null) this._coordinator = _coordinator;
        if (_memMu != null) this._memMu = _memMu;
        if (_cmd != null) this._cmd = _cmd;
        if (_client != null) this._client = _client;
        if (_waitErr != null) this._waitErr = _waitErr;
        if (_interrupted != null) this._interrupted = _interrupted;
        if (_termC != null) this._termC = _termC;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_dir", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_binPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_args", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_env", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_coordinator", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_coordinatordott_coordinator.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_coordinatordotT_coordinator }) }, optional : false },
{ name : "_memMu", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_sharedmemdott_sharedmem.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_sharedmemdotT_sharedMem }) }) }, optional : false },
{ name : "_cmd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotexecdotexec_cmddotcmd.__type__stdgodot_internaldotosdotexecdotExec_cmddotCmd }) }, optional : false },
{ name : "_client", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_workerclientdott_workerclient.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_workerclientdotT_workerClient }) }, optional : false },
{ name : "_waitErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_interrupted", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_termC", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }])));
    public function __copy__() {
        return new T_worker(
_dir,
_binPath,
_args,
_env,
_coordinator,
_memMu,
_cmd,
_client,
_waitErr,
_interrupted,
_termC);
    }
}
