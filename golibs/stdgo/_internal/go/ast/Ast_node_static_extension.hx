package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep class Node_static_extension {
    @:interfacetypeffun
    static public function end(t:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.token.Token_pos.Pos return t.end();
    @:interfacetypeffun
    static public function pos(t:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.token.Token_pos.Pos return t.pos();
}
