package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(stdgo._internal.go.build.constraint.Constraint.SyntaxError_asInterface) class SyntaxError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.go.build.constraint.Constraint_syntaxerror.SyntaxError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/go/build/constraint/expr.go#L142"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err?.__copy__();
    }
}
