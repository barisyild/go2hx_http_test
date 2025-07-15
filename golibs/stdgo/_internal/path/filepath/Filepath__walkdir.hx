package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _walkDir(_path:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L457"
        {
            var _err = @:assignType (_walkDirFn(_path?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L458"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.path.filepath.Filepath_skipdir.skipDir;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L462"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath__readdir._readDir(_path?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L466"
        if (_err != null) {
            _err = _walkDirFn(_path?.__copy__(), _d, _err);
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L469"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L470"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.path.filepath.Filepath_skipdir.skipDir;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L473"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L477"
        if (_dirs != null) for (__0 => _d1 in _dirs) {
            var _path1 = @:assignType (stdgo._internal.path.filepath.Filepath_join.join(_path?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L479"
            {
                var _err = @:assignType (stdgo._internal.path.filepath.Filepath__walkdir._walkDir(_path1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L480"
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.path.filepath.Filepath_skipdir.skipDir;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L481"
                        break;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L483"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L486"
        return (null : stdgo.Error);
    }
