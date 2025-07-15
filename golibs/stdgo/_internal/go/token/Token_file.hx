package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.token.Token_file_static_extension.File_static_extension) @:using(stdgo._internal.go.token.Token_file_static_extension.File_static_extension) class File {
    public var _name : stdgo.GoString = "";
    public var _base : stdgo.GoInt = 0;
    public var _size : stdgo.GoInt = 0;
    public var _mutex : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _lines : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _infos : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo> = (null : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>);
    public function new(?_name:stdgo.GoString, ?_base:stdgo.GoInt, ?_size:stdgo.GoInt, ?_mutex:stdgo._internal.sync.Sync_mutex.Mutex, ?_lines:stdgo.Slice<stdgo.GoInt>, ?_infos:stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>) {
        if (_name != null) this._name = _name;
        if (_base != null) this._base = _base;
        if (_size != null) this._size = _size;
        if (_mutex != null) this._mutex = _mutex;
        if (_lines != null) this._lines = _lines;
        if (_infos != null) this._infos = _infos;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_base", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_size", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_mutex", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_lines", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_infos", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_t_lineinfodott_lineinfo.__type__stdgodot_internaldotgodottokendotToken_t_lineinfodotT_lineInfo }) }, optional : false }])));
    public function __copy__() {
        return new File(_name, _base, _size, _mutex, _lines, _infos);
    }
}
