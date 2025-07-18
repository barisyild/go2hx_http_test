package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function formatDirEntry(_dir:stdgo._internal.io.fs.Fs_direntry.DirEntry):stdgo.GoString {
        var _name = @:assignType (_dir.name()?.__copy__() : stdgo.GoString);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((5 : stdgo.GoInt) + (_name.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _mode = @:assignType ((_dir.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        _mode = (_mode.__slice__(0, ((_mode.length) - (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _b = (_b.__append__(...(_mode : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format.go#L72"
        if (_dir.isDir()) {
            _b = (_b.__append__((47 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format.go#L75"
        return (_b : stdgo.GoString)?.__copy__();
    }
