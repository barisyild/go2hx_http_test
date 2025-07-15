package stdgo._internal.testing.fstest;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
function _formatInfo(_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L288"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s IsDir=%v Mode=%v Size=%d ModTime=%v" : stdgo.GoString), new stdgo.AnyInterface(_info.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_info.isDir(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_info.mode(), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode)), new stdgo.AnyInterface(_info.size(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_info.modTime(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime)))?.__copy__();
    }
