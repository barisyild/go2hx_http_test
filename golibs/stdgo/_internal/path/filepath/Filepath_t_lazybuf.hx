package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.path.filepath.Filepath_t_lazybuf_static_extension.T_lazybuf_static_extension) @:using(stdgo._internal.path.filepath.Filepath_t_lazybuf_static_extension.T_lazybuf_static_extension) class T_lazybuf {
    public var _path : stdgo.GoString = "";
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _w : stdgo.GoInt = 0;
    public var _volAndPath : stdgo.GoString = "";
    public var _volLen : stdgo.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_buf:stdgo.Slice<stdgo.GoUInt8>, ?_w:stdgo.GoInt, ?_volAndPath:stdgo.GoString, ?_volLen:stdgo.GoInt) {
        if (_path != null) this._path = _path;
        if (_buf != null) this._buf = _buf;
        if (_w != null) this._w = _w;
        if (_volAndPath != null) this._volAndPath = _volAndPath;
        if (_volLen != null) this._volLen = _volLen;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_buf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_w", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_volAndPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_volLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_lazybuf(_path, _buf, _w, _volAndPath, _volLen);
    }
}
