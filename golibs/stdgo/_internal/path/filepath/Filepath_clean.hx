package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function clean(_path:stdgo.GoString):stdgo.GoString {
        var _originalPath = @:assignType (_path?.__copy__() : stdgo.GoString);
        var _volLen = @:assignType (stdgo._internal.path.filepath.Filepath__volumenamelen._volumeNameLen(_path?.__copy__()) : stdgo.GoInt);
        _path = (_path.__slice__(_volLen) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L103"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L104"
            if ((((_volLen > (1 : stdgo.GoInt) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_originalPath[(0 : stdgo.GoInt)]) : Bool) && stdgo._internal.os.Os_ispathseparator.isPathSeparator(_originalPath[(1 : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L106"
                return stdgo._internal.path.filepath.Filepath_fromslash.fromSlash(_originalPath?.__copy__())?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L108"
            return (_originalPath + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var _rooted = @:assignType (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(0 : stdgo.GoInt)]) : Bool);
        var _n = @:assignType (_path.length : stdgo.GoInt);
        var _out = @:assignType ({ _path : _path?.__copy__(), _volAndPath : _originalPath?.__copy__(), _volLen : _volLen } : stdgo._internal.path.filepath.Filepath_t_lazybuf.T_lazybuf);
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _dotdot = __1, _r = __0;
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L120"
        if (_rooted) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L121"
            _out._append((47 : stdgo.GoUInt8));
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                _r = @:binopAssign __tmp__0;
                _dotdot = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L125"
        while ((_r < _n : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L126"
            if (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L129"
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) && ((((_r + (1 : stdgo.GoInt) : stdgo.GoInt) == _n) || stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L132"
                _r++;
            } else if (((_path[(_r : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) && _path[(_r + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) && ((((_r + (2 : stdgo.GoInt) : stdgo.GoInt) == _n) || stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r + (2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) : Bool)) {
                _r = (_r + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L136"
                if ((_out._w > _dotdot : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L139"
                    _out._w--;
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L140"
                    while (((_out._w > _dotdot : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_out._index(_out._w)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L141"
                        _out._w--;
                    };
                } else if (!_rooted) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L145"
                    if ((_out._w > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L146"
                        _out._append((47 : stdgo.GoUInt8));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L148"
                    _out._append((46 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L149"
                    _out._append((46 : stdgo.GoUInt8));
                    _dotdot = _out._w;
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L155"
                if (((_rooted && _out._w != ((1 : stdgo.GoInt)) : Bool) || (!_rooted && _out._w != ((0 : stdgo.GoInt)) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L156"
                    _out._append((47 : stdgo.GoUInt8));
                };
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L159"
                while (((_r < _n : Bool) && !stdgo._internal.os.Os_ispathseparator.isPathSeparator(_path[(_r : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L160"
                    _out._append(_path[(_r : stdgo.GoInt)]);
                    _r++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L166"
        if (_out._w == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L167"
            _out._append((46 : stdgo.GoUInt8));
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L170"
        if (((false && _out._volLen == ((0 : stdgo.GoInt)) : Bool) && (_out._buf != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L174"
            if (_out._buf != null) for (__0 => _c in _out._buf) {
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L175"
                if (stdgo._internal.os.Os_ispathseparator.isPathSeparator(_c)) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L176"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L178"
                if (_c == ((58 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L179"
                    _out._prepend((46 : stdgo.GoUInt8), (47 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L180"
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L185"
        return stdgo._internal.path.filepath.Filepath_fromslash.fromSlash(_out._string()?.__copy__())?.__copy__();
    }
