package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function base(_path:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L200"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/path/path.go#L201"
            return ("." : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L204"
        while ((((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) {
            _path = (_path.__slice__((0 : stdgo.GoInt), ((_path.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L208"
        {
            var _i = @:assignType (stdgo._internal.path.Path__lastslash._lastSlash(_path?.__copy__()) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _path = (_path.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L212"
        if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/path/path.go#L213"
            return ("/" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L215"
        return _path?.__copy__();
    }
