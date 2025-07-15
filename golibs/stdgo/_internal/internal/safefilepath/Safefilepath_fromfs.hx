package stdgo._internal.internal.safefilepath;
import stdgo._internal.errors.Errors;
function fromFS(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/internal/safefilepath/path.go#L20"
        return stdgo._internal.internal.safefilepath.Safefilepath__fromfs._fromFS(_path?.__copy__());
    }
