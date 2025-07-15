package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function _orVersion(_x:stdgo.GoInt, _y:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L101"
        if ((_x < _y : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L102"
            return _x;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L104"
        return _y;
    }
