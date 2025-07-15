package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
function parse(_line:stdgo.GoString):{ var _0 : stdgo._internal.go.build.constraint.Constraint_expr.Expr; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L150"
        {
            var __tmp__ = stdgo._internal.go.build.constraint.Constraint__splitgobuild._splitGoBuild(_line?.__copy__()), _text:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L151"
                return stdgo._internal.go.build.constraint.Constraint__parseexpr._parseExpr(_text?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L153"
        {
            var __tmp__ = stdgo._internal.go.build.constraint.Constraint__splitplusbuild._splitPlusBuild(_line?.__copy__()), _text:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L154"
                return { _0 : stdgo._internal.go.build.constraint.Constraint__parseplusbuildexpr._parsePlusBuildExpr(_text?.__copy__()), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L156"
        return { _0 : (null : stdgo._internal.go.build.constraint.Constraint_expr.Expr), _1 : stdgo._internal.go.build.constraint.Constraint__errnotconstraint._errNotConstraint };
    }
