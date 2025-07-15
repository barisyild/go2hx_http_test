package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_nodeStack_asInterface) class T_nodeStack_static_extension {
    @:keep
    @:tdfield
    static public function _pop( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.ast.Ast_node.Node {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack> = _s;
        var _top = (null : stdgo._internal.go.ast.Ast_node.Node);
        var _i = @:assignType ((_s : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack).length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L113"
        while (((_i > (0 : stdgo.GoInt) : Bool) && (((_s : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack))[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)].end() <= _pos : Bool) : Bool)) {
            _top = ((_s : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack))[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L115"
            _i--;
        };
        @:_1 (_s : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack).__setData__((((_s : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack)).__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack));
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L118"
        return _top;
    }
    @:keep
    @:tdfield
    static public function _push( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack>, _n:stdgo._internal.go.ast.Ast_node.Node):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack> = _s;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L104"
        _s._pop(_n.pos());
        @:_1 (_s : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack).__setData__((((_s : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack)).__append__(_n) : stdgo._internal.go.ast.Ast_t_nodestack.T_nodeStack));
    }
}
