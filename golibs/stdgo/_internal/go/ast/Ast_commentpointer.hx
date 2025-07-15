package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:follow @:using(stdgo._internal.go.ast.Ast_comment_static_extension.Comment_static_extension) @:using(stdgo._internal.go.ast.Ast_commentpointer_static_extension.CommentPointer_static_extension) typedef CommentPointer = stdgo.Pointer<stdgo._internal.go.ast.Ast_comment.Comment>;
