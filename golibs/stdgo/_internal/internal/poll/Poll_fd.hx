package stdgo._internal.internal.poll;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
@:structInit @:using(stdgo._internal.internal.poll.Poll_fd_static_extension.FD_static_extension) @:using(stdgo._internal.internal.poll.Poll_fd_static_extension.FD_static_extension) class FD {
    public var _fdmu : stdgo._internal.internal.poll.Poll_t_fdmutex.T_fdMutex = ({} : stdgo._internal.internal.poll.Poll_t_fdmutex.T_fdMutex);
    public var sysfd : stdgo.GoInt = 0;
    @:embedded
    public var sysFile : stdgo._internal.internal.poll.Poll_sysfile.SysFile = ({} : stdgo._internal.internal.poll.Poll_sysfile.SysFile);
    public var _pd : stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc = ({} : stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc);
    public var _csema : stdgo.GoUInt32 = 0;
    public var _isBlocking : stdgo.GoUInt32 = 0;
    public var isStream : Bool = false;
    public var zeroReadIsEOF : Bool = false;
    public var _isFile : Bool = false;
    public function new(?_fdmu:stdgo._internal.internal.poll.Poll_t_fdmutex.T_fdMutex, ?sysfd:stdgo.GoInt, ?sysFile:stdgo._internal.internal.poll.Poll_sysfile.SysFile, ?_pd:stdgo._internal.internal.poll.Poll_t_polldesc.T_pollDesc, ?_csema:stdgo.GoUInt32, ?_isBlocking:stdgo.GoUInt32, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool) {
        if (_fdmu != null) this._fdmu = _fdmu;
        if (sysfd != null) this.sysfd = sysfd;
        if (sysFile != null) this.sysFile = sysFile;
        if (_pd != null) this._pd = _pd;
        if (_csema != null) this._csema = _csema;
        if (_isBlocking != null) this._isBlocking = _isBlocking;
        if (isStream != null) this.isStream = isStream;
        if (zeroReadIsEOF != null) this.zeroReadIsEOF = zeroReadIsEOF;
        if (_isFile != null) this._isFile = _isFile;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_fdmu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotpolldotpoll_t_fdmutexdott_fdmutex.__type__stdgodot_internaldotinternaldotpolldotPoll_t_fdmutexdotT_fdMutex }, optional : false }, { name : "sysfd", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "sysFile", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotpolldotpoll_sysfiledotsysfile.__type__stdgodot_internaldotinternaldotpolldotPoll_sysfiledotSysFile }, optional : false }, { name : "_pd", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotpolldotpoll_t_polldescdott_polldesc.__type__stdgodot_internaldotinternaldotpolldotPoll_t_polldescdotT_pollDesc }, optional : false }, { name : "_csema", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_isBlocking", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "isStream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "zeroReadIsEOF", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_isFile", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public var _init(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__init():() -> Void return @:check32 this.sysFile._init;
    public function __copy__() {
        return new FD(_fdmu, sysfd, sysFile, _pd, _csema, _isBlocking, isStream, zeroReadIsEOF, _isFile);
    }
}
