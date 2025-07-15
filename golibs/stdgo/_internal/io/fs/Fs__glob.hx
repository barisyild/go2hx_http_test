package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function _glob(_fs:stdgo._internal.io.fs.Fs_fs.FS, _dir:stdgo.GoString, _pattern:stdgo.GoString, _matches:stdgo.Slice<stdgo.GoString>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var _m = (null : stdgo.Slice<stdgo.GoString>), _e = (null : stdgo.Error);
        _m = _matches;
        var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(_fs, _dir?.__copy__()), _infos:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L102"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L103"
            return { _0 : _m, _1 : _e };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L106"
        if (_infos != null) for (__0 => _info in _infos) {
            var _n = @:assignType (_info.name()?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.Path_match.match(_pattern?.__copy__(), _n?.__copy__()), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L109"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L110"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } = { _0 : _m, _1 : _err };
                    _m = __tmp__._0;
                    _e = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L112"
            if (_matched) {
                _m = (_m.__append__(stdgo._internal.path.Path_join.join(_dir?.__copy__(), _n?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob.go#L116"
        return { _0 : _m, _1 : _e };
    }
