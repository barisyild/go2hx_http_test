package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
@:named @:using(stdgo._internal.path.filepath.Filepath_walkfunc_static_extension.WalkFunc_static_extension) @:using(stdgo._internal.path.filepath.Filepath_walkfunc_static_extension.WalkFunc_static_extension) typedef WalkFunc = (stdgo.GoString, stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error) -> stdgo.Error;
