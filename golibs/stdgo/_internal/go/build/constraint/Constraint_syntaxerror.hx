package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(stdgo._internal.go.build.constraint.Constraint_syntaxerror_static_extension.SyntaxError_static_extension) @:using(stdgo._internal.go.build.constraint.Constraint_syntaxerror_static_extension.SyntaxError_static_extension) class SyntaxError {
    public var offset : stdgo.GoInt = 0;
    public var err : stdgo.GoString = "";
    public function new(?offset:stdgo.GoInt, ?err:stdgo.GoString) {
        if (offset != null) this.offset = offset;
        if (err != null) this.err = err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "err", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new SyntaxError(offset, err);
    }
}
