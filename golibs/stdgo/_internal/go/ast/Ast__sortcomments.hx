package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _sortComments(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):Void {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L26"
        {
            var _orderedList = @:assignType (_list : stdgo._internal.go.ast.Ast_t_bypos.T_byPos);
            if (!stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface(_orderedList, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_byposdott_bypos.__type__stdgodot_internaldotgodotastdotAst_t_byposdotT_byPos))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/commentmap.go#L27"
                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_orderedList, _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_byposdott_bypos.__type__stdgodot_internaldotgodotastdotAst_t_byposdotT_byPos));
            };
        };
    }
