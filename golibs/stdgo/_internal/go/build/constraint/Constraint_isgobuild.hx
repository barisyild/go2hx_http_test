package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function isGoBuild(_line:stdgo.GoString):Bool {
        var __tmp__ = stdgo._internal.go.build.constraint.Constraint__splitgobuild._splitGoBuild(_line?.__copy__()), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L163"
        return _ok;
    }
