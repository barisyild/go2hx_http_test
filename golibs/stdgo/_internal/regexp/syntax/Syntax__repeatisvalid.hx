package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _repeatIsValid(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _n:stdgo.GoInt):Bool {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L456"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            var _m = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L458"
            if (_m == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L459"
                return true;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L461"
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                _m = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L464"
            if ((_m > _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L465"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L467"
            if ((_m > (0 : stdgo.GoInt) : Bool)) {
                _n = (_n / (_m) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L471"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub != null) for (__1 => _sub in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L472"
            if (!stdgo._internal.regexp.syntax.Syntax__repeatisvalid._repeatIsValid(_sub, _n)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L473"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L476"
        return true;
    }
