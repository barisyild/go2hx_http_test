package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _walk(_path:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _walkFn:stdgo._internal.path.filepath.Filepath_walkfunc.WalkFunc):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L491"
        if (!_info.isDir()) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L492"
            return _walkFn(_path?.__copy__(), _info, (null : stdgo.Error));
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath__readdirnames._readDirNames(_path?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        var _err1 = @:assignType (_walkFn(_path?.__copy__(), _info, _err) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L500"
        if (((_err != null) || (_err1 != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L505"
            return _err1;
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L508"
        if (_names != null) for (__0 => _name in _names) {
            var _filename = @:assignType (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _name?.__copy__())?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.path.filepath.Filepath__lstat._lstat(_filename?.__copy__()), _fileInfo:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L511"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L512"
                {
                    var _err = @:assignType (_walkFn(_filename?.__copy__(), _fileInfo, _err) : stdgo.Error);
                    if (((_err != null) && (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != ({
                        final __t__ = stdgo._internal.path.filepath.Filepath_skipdir.skipDir;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L513"
                        return _err;
                    };
                };
            } else {
                _err = stdgo._internal.path.filepath.Filepath__walk._walk(_filename?.__copy__(), _fileInfo, _walkFn);
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L517"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L518"
                    if ((!_fileInfo.isDir() || (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != ({
                        final __t__ = stdgo._internal.path.filepath.Filepath_skipdir.skipDir;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L519"
                        return _err;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L524"
        return (null : stdgo.Error);
    }
