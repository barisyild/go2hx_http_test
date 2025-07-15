package stdgo._internal.os.exec;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
@:keep @:allow(stdgo._internal.os.exec.Exec.ExitError_asInterface) class ExitError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.os.exec.Exec_exiterror.ExitError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.os.exec.Exec_exiterror.ExitError> = _e;
        trace("funclit");
        throw "not implemented: error";
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _userTime( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration return @:_5 __self__._userTime();
    @:embedded
    @:embeddededffieldsffun
    public static function _systemTime( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration return @:_5 __self__._systemTime();
    @:embedded
    @:embeddededffieldsffun
    public static function _sysUsage( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface return @:_5 __self__._sysUsage();
    @:embedded
    @:embeddededffieldsffun
    public static function _sys( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface return @:_5 __self__._sys();
    @:embedded
    @:embeddededffieldsffun
    public static function _success( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool return @:_5 __self__._success();
    @:embedded
    @:embeddededffieldsffun
    public static function _exited( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool return @:_5 __self__._exited();
    @:embedded
    @:embeddededffieldsffun
    public static function userTime( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration return @:_5 __self__.userTime();
    @:embedded
    @:embeddededffieldsffun
    public static function systemTime( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo._internal.time.Time_duration.Duration return @:_5 __self__.systemTime();
    @:embedded
    @:embeddededffieldsffun
    public static function sysUsage( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface return @:_5 __self__.sysUsage();
    @:embedded
    @:embeddededffieldsffun
    public static function sys( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.AnyInterface return @:_5 __self__.sys();
    @:embedded
    @:embeddededffieldsffun
    public static function success( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool return @:_5 __self__.success();
    @:embedded
    @:embeddededffieldsffun
    public static function string( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.GoString return @:_5 __self__.string();
    @:embedded
    @:embeddededffieldsffun
    public static function pid( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.GoInt return @:_5 __self__.pid();
    @:embedded
    @:embeddededffieldsffun
    public static function exited( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):Bool return @:_5 __self__.exited();
    @:embedded
    @:embeddededffieldsffun
    public static function exitCode( __self__:stdgo._internal.os.exec.Exec_exiterror.ExitError):stdgo.GoInt return @:_5 __self__.exitCode();
}
