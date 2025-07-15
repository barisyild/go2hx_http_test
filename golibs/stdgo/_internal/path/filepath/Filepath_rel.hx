package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function rel(_basepath:stdgo.GoString, _targpath:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _baseVol = @:assignType (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_basepath?.__copy__())?.__copy__() : stdgo.GoString);
        var _targVol = @:assignType (stdgo._internal.path.filepath.Filepath_volumename.volumeName(_targpath?.__copy__())?.__copy__() : stdgo.GoString);
        var _base = @:assignType (stdgo._internal.path.filepath.Filepath_clean.clean(_basepath?.__copy__())?.__copy__() : stdgo.GoString);
        var _targ = @:assignType (stdgo._internal.path.filepath.Filepath_clean.clean(_targpath?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L336"
        if (stdgo._internal.path.filepath.Filepath__sameword._sameWord(_targ?.__copy__(), _base?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L337"
            return { _0 : ("." : stdgo.GoString), _1 : (null : stdgo.Error) };
        };
        _base = (_base.__slice__((_baseVol.length)) : stdgo.GoString)?.__copy__();
        _targ = (_targ.__slice__((_targVol.length)) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L341"
        if (_base == (("." : stdgo.GoString))) {
            _base = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        } else if (((_base == (stdgo.Go.str() : stdgo.GoString)) && (stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_baseVol?.__copy__()) > (2 : stdgo.GoInt) : Bool) : Bool)) {
            _base = ((47 : stdgo.GoInt32) : stdgo.GoString);
        };
        var _baseSlashed = @:assignType (((_base.length) > (0 : stdgo.GoInt) : Bool) && (_base[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
        var _targSlashed = @:assignType (((_targ.length) > (0 : stdgo.GoInt) : Bool) && (_targ[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L351"
        if (((_baseSlashed != _targSlashed) || !stdgo._internal.path.filepath.Filepath__sameword._sameWord(_baseVol?.__copy__(), _targVol?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L352"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_((((("Rel: can\'t make " : stdgo.GoString) + _targpath?.__copy__() : stdgo.GoString) + (" relative to " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _basepath?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        var _bl = @:assignType (_base.length : stdgo.GoInt);
        var _tl = @:assignType (_targ.length : stdgo.GoInt);
        var _b0:stdgo.GoInt = (0 : stdgo.GoInt), _bi:stdgo.GoInt = (0 : stdgo.GoInt), _t0:stdgo.GoInt = (0 : stdgo.GoInt), _ti:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L358"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L359"
            while (((_bi < _bl : Bool) && (_base[(_bi : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L360"
                _bi++;
            };
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L362"
            while (((_ti < _tl : Bool) && (_targ[(_ti : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L363"
                _ti++;
            };
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L365"
            if (!stdgo._internal.path.filepath.Filepath__sameword._sameWord((_targ.__slice__(_t0, _ti) : stdgo.GoString)?.__copy__(), (_base.__slice__(_b0, _bi) : stdgo.GoString)?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L366"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L368"
            if ((_bi < _bl : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L369"
                _bi++;
            };
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L371"
            if ((_ti < _tl : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L372"
                _ti++;
            };
            _b0 = _bi;
            _t0 = _ti;
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L377"
        if ((_base.__slice__(_b0, _bi) : stdgo.GoString) == ((".." : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L378"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_((((("Rel: can\'t make " : stdgo.GoString) + _targpath?.__copy__() : stdgo.GoString) + (" relative to " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _basepath?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L380"
        if (_b0 != (_bl)) {
            var _seps = @:assignType (stdgo._internal.strings.Strings_count.count((_base.__slice__(_b0, _bl) : stdgo.GoString)?.__copy__(), ((47 : stdgo.GoInt32) : stdgo.GoString)) : stdgo.GoInt);
            var _size = @:assignType ((2 : stdgo.GoInt) + (_seps * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L384"
            if (_tl != (_t0)) {
                _size = (_size + ((((1 : stdgo.GoInt) + _tl : stdgo.GoInt) - _t0 : stdgo.GoInt)) : stdgo.GoInt);
            };
            var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _n = @:assignType (_buf.__copyTo__((".." : stdgo.GoString)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L389"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < _seps : Bool)) {
                    _buf[(_n : stdgo.GoInt)] = (47 : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L391"
                    (_buf.__slice__((_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((".." : stdgo.GoString));
_n = (_n + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L394"
            if (_t0 != (_tl)) {
                _buf[(_n : stdgo.GoInt)] = (47 : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L396"
                (_buf.__slice__((_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_targ.__slice__(_t0) : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L398"
            return { _0 : (_buf : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L400"
        return { _0 : (_targ.__slice__(_t0) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
