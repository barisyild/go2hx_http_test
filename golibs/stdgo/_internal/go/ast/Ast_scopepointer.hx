package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:follow @:using(stdgo._internal.go.ast.Ast_scope_static_extension.Scope_static_extension) @:using(stdgo._internal.go.ast.Ast_scopepointer_static_extension.ScopePointer_static_extension) typedef ScopePointer = stdgo.Pointer<stdgo._internal.go.ast.Ast_scope.Scope>;
