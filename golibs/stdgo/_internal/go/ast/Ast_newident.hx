package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function newIdent(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident> {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L580"
        return (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_ident.Ident((0 : stdgo._internal.go.token.Token_pos.Pos), _name?.__copy__(), null) : stdgo._internal.go.ast.Ast_ident.Ident), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_identdotident.__type__stdgodot_internaldotgodotastdotAst_identdotIdent })) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>);
    }
