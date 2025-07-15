package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function _searchFiles(_a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>, _x:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L486"
        return (stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L486"
            return ((@:checkr _a[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__())._base > _x : Bool);
        }) - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
