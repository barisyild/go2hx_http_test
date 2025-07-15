package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.FuncType_asInterface) class FuncType_static_extension {
    @:keep
    @:tdfield
    static public function _exprNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = _;
    }
    @:keep
    @:tdfield
    static public function end( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L539"
        if (({
            final value = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L540"
            return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).results.end();
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L542"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params.end();
    }
    @:keep
    @:tdfield
    static public function pos( _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _x:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType> = _x;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L505"
        if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).func.isValid() || ({
            final value = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L506"
            return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).func;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L508"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__()).params.pos();
    }
}
