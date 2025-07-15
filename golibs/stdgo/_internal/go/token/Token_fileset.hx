package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.go.token.Token_fileset_static_extension.FileSet_static_extension) @:using(stdgo._internal.go.token.Token_fileset_static_extension.FileSet_static_extension) class FileSet {
    public var _mutex : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _base : stdgo.GoInt = 0;
    public var _files : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>);
    public var _last : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.go.token.Token_file.File> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.go.token.Token_file.File>);
    public function new(?_mutex:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_base:stdgo.GoInt, ?_files:stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>, ?_last:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo._internal.go.token.Token_file.File>) {
        if (_mutex != null) this._mutex = _mutex;
        if (_base != null) this._base = _base;
        if (_files != null) this._files = _files;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mutex", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_rwmutexdotrwmutex.__type__stdgodot_internaldotsyncdotSync_rwmutexdotRWMutex }, optional : false }, { name : "_base", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_files", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_filedotfile.__type__stdgodot_internaldotgodottokendotToken_filedotFile }) }) }, optional : false }, { name : "_last", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__pointer_dotpointer_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__pointer_dotPointer_ }, optional : false }])));
    public function __copy__() {
        return new FileSet(_mutex, _base, _files, _last);
    }
}
