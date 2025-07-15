package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_inspector_asInterface) class T_inspector_static_extension {
    @:keep
    @:tdfield
    static public function visit( _f:stdgo._internal.go.ast.Ast_t_inspector.T_inspector, _node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor {
        @:recv var _f:stdgo._internal.go.ast.Ast_t_inspector.T_inspector = _f;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L386"
        if (_f(_node)) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L387"
            return stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_inspectordott_inspector.__type__stdgodot_internaldotgodotastdotAst_t_inspectordotT_inspector);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L389"
        return (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
    }
}
