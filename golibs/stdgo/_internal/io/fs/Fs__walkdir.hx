package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function _walkDir(_fsys:stdgo._internal.io.fs.Fs_fs.FS, _name:stdgo.GoString, _d:stdgo._internal.io.fs.Fs_direntry.DirEntry, _walkDirFn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L73"
        {
            var _err = @:assignType (_walkDirFn(_name?.__copy__(), _d, (null : stdgo.Error)) : stdgo.Error);
            if (((_err != null) || !_d.isDir() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L74"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.io.fs.Fs_skipdir.skipDir;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L78"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(_fsys, _name?.__copy__()), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L82"
        if (_err != null) {
            _err = _walkDirFn(_name?.__copy__(), _d, _err);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L85"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L86"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.io.fs.Fs_skipdir.skipDir;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && _d.isDir() : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L89"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L93"
        if (_dirs != null) for (__0 => _d1 in _dirs) {
            var _name1 = @:assignType (stdgo._internal.path.Path_join.join(_name?.__copy__(), _d1.name()?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L95"
            {
                var _err = @:assignType (stdgo._internal.io.fs.Fs__walkdir._walkDir(_fsys, _name1?.__copy__(), _d1, _walkDirFn) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L96"
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.io.fs.Fs_skipdir.skipDir;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L97"
                        break;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L99"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/walk.go#L102"
        return (null : stdgo.Error);
    }
