package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.ValueSpec_asInterface) class ValueSpec_static_extension {
    @:keep
    @:tdfield
    static public function _specNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L935"
        {
            var _n = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).values.length : stdgo.GoInt);
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L936"
                return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).values[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L938"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type != null) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L939"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.end();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L941"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names[(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L924"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).names[(0 : stdgo.GoInt)].pos();
    }
}
