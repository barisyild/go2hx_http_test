package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function goVersion(_x:stdgo._internal.go.build.constraint.Constraint_expr.Expr):stdgo.GoString {
        var _v = @:assignType (stdgo._internal.go.build.constraint.Constraint__minversion._minVersion(_x, (1 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L32"
        if ((_v < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L33"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L35"
        if (_v == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L36"
            return ("go1" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/vers.go#L38"
        return (("go1." : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_v)?.__copy__() : stdgo.GoString)?.__copy__();
    }
