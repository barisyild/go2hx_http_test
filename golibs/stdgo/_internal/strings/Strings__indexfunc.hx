package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _indexFunc(_s:stdgo.GoString, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L844"
        if (_s != null) for (_i => _r in _s) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L845"
            if (_f(_r) == (_truth)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L846"
                return _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L849"
        return (-1 : stdgo.GoInt);
    }
