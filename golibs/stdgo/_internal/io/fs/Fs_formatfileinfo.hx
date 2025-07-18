package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
function formatFileInfo(_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo):stdgo.GoString {
        var _name = @:assignType (_info.name()?.__copy__() : stdgo.GoString);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((40 : stdgo.GoInt) + (_name.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...((_info.mode().string() : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        var _size = @:assignType (_info.size() : stdgo.GoInt64);
        var _usize:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format.go#L25"
        if ((_size >= (0i64 : stdgo.GoInt64) : Bool)) {
            _usize = (_size : stdgo.GoUInt64);
        } else {
            _b = (_b.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _usize = (-_size : stdgo.GoUInt64);
        };
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
        var _i = @:assignType (19 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format.go#L33"
        while ((_usize >= (10i64 : stdgo.GoUInt64) : Bool)) {
            var _q = @:assignType (_usize / (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _buf[(_i : stdgo.GoInt)] = ((((48i64 : stdgo.GoUInt64) + _usize : stdgo.GoUInt64) - (_q * (10i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/format.go#L36"
            _i--;
            _usize = _q;
        };
        _buf[(_i : stdgo.GoInt)] = (((48i64 : stdgo.GoUInt64) + _usize : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b = (_b.__append__(...((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(_info.modTime().format(("2006-01-02 15:04:05" : stdgo.GoString)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__append__(...(_name : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format.go#L47"
        if (_info.isDir()) {
            _b = (_b.__append__((47 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format.go#L51"
        return (_b : stdgo.GoString)?.__copy__();
    }
