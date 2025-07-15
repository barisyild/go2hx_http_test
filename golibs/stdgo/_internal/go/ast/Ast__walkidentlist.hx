package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _walkIdentList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Void {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L19"
        if (_list != null) for (__0 => _x in _list) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L20"
            stdgo._internal.go.ast.Ast_walk.walk(_v, stdgo.Go.asInterface(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })));
        };
    }
