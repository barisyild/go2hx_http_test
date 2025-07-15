package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _nodeList(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> {
        var _list:stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node> = (null : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L58"
        stdgo._internal.go.ast.Ast_inspect.inspect(_n, function(_n:stdgo._internal.go.ast.Ast_node.Node):Bool {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L60"
            {
                final __type__ = _n;
                if (__type__ == null || stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentgroupdotcommentgroup.__type__stdgodot_internaldotgodotastdotAst_commentgroupdotCommentGroup })) || stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_nodedotnode.__type__stdgodot_internaldotgodotastdotAst_nodedotNode)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_commentdotcomment.__type__stdgodot_internaldotgodotastdotAst_commentdotComment }))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L62"
                    return false;
                };
            };
            _list = (_list.__append__(_n) : stdgo.Slice<stdgo._internal.go.ast.Ast_node.Node>);
            //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L65"
            return true;
        });
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L72"
        return _list;
    }
