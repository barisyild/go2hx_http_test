package stdgo._internal.go.build.constraint;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
@:interface typedef Expr = stdgo.StructType & {
    /**
        * String returns the string form of the expression,
        * using the boolean syntax used in //go:build lines.
        
        
    **/
    @:interfacetypeffun
    public dynamic function string():stdgo.GoString;
    /**
        * Eval reports whether the expression evaluates to true.
        * It calls ok(tag) as needed to find out whether a given build tag
        * is satisfied by the current build configuration.
        
        
    **/
    @:interfacetypeffun
    public dynamic function eval(_ok:stdgo.GoString -> Bool):Bool;
    /**
        * The presence of an isExpr method explicitly marks the type as an Expr.
        * Only implementations in this package should be used as Exprs.
        
        
    **/
    @:interfacetypeffun
    public dynamic function _isExpr():Void;
};
