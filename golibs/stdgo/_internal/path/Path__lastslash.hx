package stdgo._internal.path;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
function _lastSlash(_s:stdgo.GoString):stdgo.GoInt {
        var _i = @:assignType ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L141"
        while (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/path/path.go#L142"
            _i--;
        };
        //"file:///Users/o/.go/go1.21.3/src/path/path.go#L144"
        return _i;
    }
