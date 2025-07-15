package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        var _i = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L92"
        while (((_i < (_a.length) : Bool) && (_i < (_b.length) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L93"
            if (_a[(((_a.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] != (_b[((((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L94"
                break;
            };
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L97"
        return _i;
    }
