package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _readDir(_dirname:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_open.open(_dirname?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L599"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L600"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
        };
        var __tmp__ = _f.readDir((-1 : stdgo.GoInt)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L603"
        _f.close();
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L604"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L605"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L607"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_dirs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_direntrydotdirentry.__type__stdgodot_internaldotiodotfsdotFs_direntrydotDirEntry }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L607"
            return (_dirs[(_i : stdgo.GoInt)].name() < _dirs[(_j : stdgo.GoInt)].name() : Bool);
        });
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L608"
        return { _0 : _dirs, _1 : (null : stdgo.Error) };
    }
