package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _getEsc(_chunk:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        var _r = (0 : stdgo.GoInt32), _nchunk = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L212"
        if ((((_chunk.length) == ((0 : stdgo.GoInt)) || _chunk[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_chunk[(0 : stdgo.GoInt)] == (93 : stdgo.GoUInt8)) : Bool)) {
            _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L214"
            return { _0 : _r, _1 : _nchunk, _2 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L216"
        if (((_chunk[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) && true : Bool)) {
            _chunk = (_chunk.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L218"
            if ((_chunk.length) == ((0 : stdgo.GoInt))) {
                _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L220"
                return { _0 : _r, _1 : _nchunk, _2 : _err };
            };
        };
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_chunk?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L224"
        if (((_r == (65533 : stdgo.GoInt32)) && (_n == (1 : stdgo.GoInt)) : Bool)) {
            _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
        };
        _nchunk = (_chunk.__slice__(_n) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L228"
        if ((_nchunk.length) == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.path.filepath.Filepath_errbadpattern.errBadPattern;
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/match.go#L231"
        return { _0 : _r, _1 : _nchunk, _2 : _err };
    }
