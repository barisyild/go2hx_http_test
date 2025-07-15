package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:follow @:using(stdgo._internal.go.ast.Ast_ident_static_extension.Ident_static_extension) @:using(stdgo._internal.go.ast.Ast_identpointer_static_extension.IdentPointer_static_extension) typedef IdentPointer = stdgo.Pointer<stdgo._internal.go.ast.Ast_ident.Ident>;
