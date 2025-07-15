package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
function _unixIsLocal(_path:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L207"
        if ((stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path?.__copy__()) || (_path == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L208"
            return false;
        };
        var _hasDots = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L211"
        {
            var _p = @:assignType (_path?.__copy__() : stdgo.GoString);
            while (_p != ((stdgo.Go.str() : stdgo.GoString))) {
                var _part:stdgo.GoString = ("" : stdgo.GoString);
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_p?.__copy__(), ("/" : stdgo.GoString));
                    _part = @:tmpset0 __tmp__._0?.__copy__();
                    _p = @:tmpset0 __tmp__._1?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L214"
                if (((_part == ("." : stdgo.GoString)) || (_part == (".." : stdgo.GoString)) : Bool)) {
                    _hasDots = true;
                    //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L216"
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L219"
        if (_hasDots) {
            _path = stdgo._internal.path.filepath.Filepath_clean.clean(_path?.__copy__())?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L222"
        if (((_path == (".." : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("../" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L223"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/path/filepath/path.go#L225"
        return true;
    }
