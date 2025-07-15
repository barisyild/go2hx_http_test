package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _walkStmtList(_v:stdgo._internal.go.ast.Ast_visitor.Visitor, _list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>):Void {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L31"
        if (_list != null) for (__0 => _x in _list) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/walk.go#L32"
            stdgo._internal.go.ast.Ast_walk.walk(_v, _x);
        };
    }
