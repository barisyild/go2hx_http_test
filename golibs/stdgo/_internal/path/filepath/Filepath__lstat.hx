package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
var _lstat : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } = stdgo._internal.os.Os_lstat.lstat;
