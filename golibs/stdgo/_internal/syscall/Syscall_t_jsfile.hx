package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_t_jsfile_static_extension.T_jsFile_static_extension) @:using(stdgo._internal.syscall.Syscall_t_jsfile_static_extension.T_jsFile_static_extension) class T_jsFile {
    public var _path : stdgo.GoString = "";
    public var _entries : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _dirIdx : stdgo.GoInt = 0;
    public var _pos : stdgo.GoInt64 = 0;
    public var _seeked : Bool = false;
    public function new(?_path:stdgo.GoString, ?_entries:stdgo.Slice<stdgo.GoString>, ?_dirIdx:stdgo.GoInt, ?_pos:stdgo.GoInt64, ?_seeked:Bool) {
        if (_path != null) this._path = _path;
        if (_entries != null) this._entries = _entries;
        if (_dirIdx != null) this._dirIdx = _dirIdx;
        if (_pos != null) this._pos = _pos;
        if (_seeked != null) this._seeked = _seeked;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_entries", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "_dirIdx", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_pos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_seeked", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_jsFile(_path, _entries, _dirIdx, _pos, _seeked);
    }
}
