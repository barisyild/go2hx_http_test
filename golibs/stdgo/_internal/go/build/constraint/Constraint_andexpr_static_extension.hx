package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.AndExpr_asInterface) class AndExpr_static_extension {
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L90"
        return ((stdgo._internal.go.build.constraint.Constraint__andarg._andArg((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x) + (" && " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.go.build.constraint.Constraint__andarg._andArg((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function eval( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>, _ok:stdgo.GoString -> Bool):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = _x;
        var _xok = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).x.eval(_ok) : Bool);
        var _yok = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).y.eval(_ok) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L86"
        return (_xok && _yok : Bool);
    }
    @:keep
    @:tdfield
    static public function _isExpr( _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_andexpr.AndExpr> = _x;
    }
}
