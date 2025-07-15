package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_t_file_static_extension.T_file_static_extension) @:using(stdgo._internal.os.Os_t_file_static_extension.T_file_static_extension) class T_file {
    public var _pfd : stdgo._internal.internal.poll.Poll_fd.FD = ({} : stdgo._internal.internal.poll.Poll_fd.FD);
    public var _name : stdgo.GoString = "";
    public var _dirinfo : stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo> = (null : stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo>);
    public var _nonblock : Bool = false;
    public var _stdoutOrErr : Bool = false;
    public var _appendMode : Bool = false;
    public function new(?_pfd:stdgo._internal.internal.poll.Poll_fd.FD, ?_name:stdgo.GoString, ?_dirinfo:stdgo.Ref<stdgo._internal.os.Os_t_dirinfo.T_dirInfo>, ?_nonblock:Bool, ?_stdoutOrErr:Bool, ?_appendMode:Bool) {
        if (_pfd != null) this._pfd = _pfd;
        if (_name != null) this._name = _name;
        if (_dirinfo != null) this._dirinfo = _dirinfo;
        if (_nonblock != null) this._nonblock = _nonblock;
        if (_stdoutOrErr != null) this._stdoutOrErr = _stdoutOrErr;
        if (_appendMode != null) this._appendMode = _appendMode;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_pfd", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotpolldotpoll_fddotfd.__type__stdgodot_internaldotinternaldotpolldotPoll_fddotFD }, optional : false }, { name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_dirinfo", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_t_dirinfodott_dirinfo.__type__stdgodot_internaldotosdotOs_t_dirinfodotT_dirInfo }) }, optional : false }, { name : "_nonblock", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_stdoutOrErr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_appendMode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_file(_pfd, _name, _dirinfo, _nonblock, _stdoutOrErr, _appendMode);
    }
}
