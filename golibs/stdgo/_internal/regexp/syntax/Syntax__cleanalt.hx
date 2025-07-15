package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _cleanAlt(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L527"
        {
            final __value__ = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
            if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L530"
                if (((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((2 : stdgo.GoInt)) && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(1 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (6 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L533"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L535"
                if (((((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((4 : stdgo.GoInt)) && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] == ((0 : stdgo.GoInt32)) : Bool) && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(1 : stdgo.GoInt)] == ((9 : stdgo.GoInt32)) : Bool) && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(2 : stdgo.GoInt)] == ((11 : stdgo.GoInt32)) : Bool) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(3 : stdgo.GoInt)] == (1114111 : stdgo.GoInt32)) : Bool)) {
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = (null : stdgo.Slice<stdgo.GoInt32>);
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (5 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L538"
                    return;
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L540"
                if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.capacity - ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) : stdgo.GoInt) > (100 : stdgo.GoInt) : Bool)) {
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune : Array<stdgo.GoInt32>)) : stdgo.Slice<stdgo.GoInt32>);
                };
            };
        };
    }
