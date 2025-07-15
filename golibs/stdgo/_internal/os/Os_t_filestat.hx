package stdgo._internal.os;
@:structInit @:using(stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension) @:using(stdgo._internal.os.Os_t_filestat_static_extension.T_fileStat_static_extension) class T_fileStat {
    public var _name : stdgo.GoString = "";
    public var _size : stdgo.GoInt64 = 0;
    public var _mode : stdgo._internal.io.fs.Fs_filemode.FileMode = ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode);
    public var _modTime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var _sys : stdgo._internal.syscall.Syscall_stat_t.Stat_t = ({} : stdgo._internal.syscall.Syscall_stat_t.Stat_t);
    public function new(?_name:stdgo.GoString, ?_size:stdgo.GoInt64, ?_mode:stdgo._internal.io.fs.Fs_filemode.FileMode, ?_modTime:stdgo._internal.time.Time_time.Time, ?_sys:stdgo._internal.syscall.Syscall_stat_t.Stat_t) {
        if (_name != null) this._name = _name;
        if (_size != null) this._size = _size;
        if (_mode != null) this._mode = _mode;
        if (_modTime != null) this._modTime = _modTime;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_mode", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode }, optional : false }, { name : "_modTime", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime }, optional : false }, { name : "_sys", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotsyscall_stat_tdotstat_t.__type__stdgodot_internaldotsyscalldotSyscall_stat_tdotStat_t }, optional : false }])));
    public function __copy__() {
        return new T_fileStat(_name, _size, _mode, _modTime, _sys);
    }
}
