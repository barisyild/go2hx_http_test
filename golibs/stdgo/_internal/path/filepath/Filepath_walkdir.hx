package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function walkDir(_root:stdgo.GoString, _fn:stdgo._internal.io.fs.Fs_walkdirfunc.WalkDirFunc):stdgo.Error {
        var __tmp__ = stdgo._internal.os.Os_lstat.lstat(_root?.__copy__()), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L544"
        if (_err != null) {
            _err = _fn(_root?.__copy__(), (null : stdgo._internal.io.fs.Fs_direntry.DirEntry), _err);
        } else {
            _err = stdgo._internal.path.filepath.Filepath__walkdir._walkDir(_root?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry(_info) : stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotpathdotfilepathdotfilepath_t_statdirentrydott_statdirentry.__type__stdgodot_internaldotpathdotfilepathdotFilepath_t_statdirentrydotT_statDirEntry })) : stdgo.Ref<stdgo._internal.path.filepath.Filepath_t_statdirentry.T_statDirEntry>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotpathdotfilepathdotfilepath_t_statdirentrydott_statdirentry.__type__stdgodot_internaldotpathdotfilepathdotFilepath_t_statdirentrydotT_statDirEntry })), _fn);
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L549"
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
        })) || (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == ({
            final __t__ = stdgo._internal.path.filepath.Filepath_skipall.skipAll;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L550"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L552"
        return _err;
    }
