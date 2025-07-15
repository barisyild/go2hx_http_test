package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:named @:using(stdgo._internal.go.ast.Ast_commentmap_static_extension.CommentMap_static_extension) @:using(stdgo._internal.go.ast.Ast_commentmap_static_extension.CommentMap_static_extension) typedef CommentMap = stdgo.GoMap<stdgo._internal.go.ast.Ast_node.Node, stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>>;
