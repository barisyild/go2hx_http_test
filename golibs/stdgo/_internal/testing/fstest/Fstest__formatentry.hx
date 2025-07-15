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
function _formatEntry(_entry:stdgo._internal.io.fs.Fs_direntry.DirEntry):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L278"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s IsDir=%v Type=%v" : stdgo.GoString), new stdgo.AnyInterface(_entry.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_entry.isDir(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_entry.type(), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode)))?.__copy__();
    }
