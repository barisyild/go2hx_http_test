package stdgo._internal.internal.safefilepath;
import stdgo._internal.errors.Errors;
function _fromFS(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path_other.go#L12"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path_other.go#L13"
            if ((((_path.length) > (0 : stdgo.GoInt) : Bool) && (_path[(0 : stdgo.GoInt)] == (35 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path_other.go#L14"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.internal.safefilepath.Safefilepath__errinvalidpath._errInvalidPath };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path_other.go#L17"
        if (_path != null) for (_i => _ in _path) {
            //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path_other.go#L18"
            if (_path[(_i : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path_other.go#L19"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.internal.safefilepath.Safefilepath__errinvalidpath._errInvalidPath };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path_other.go#L22"
        return { _0 : _path?.__copy__(), _1 : (null : stdgo.Error) };
    }
