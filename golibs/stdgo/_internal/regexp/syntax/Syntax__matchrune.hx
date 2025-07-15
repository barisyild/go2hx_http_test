package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _matchRune(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1307"
        {
            final __value__ = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
            if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1309"
                return (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length == (1 : stdgo.GoInt)) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] == _r) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1311"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1312"
                        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(_i : stdgo.GoInt)] <= _r : Bool) && (_r <= (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1313"
                            return true;
                        };
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1316"
                return false;
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1318"
                return _r != ((10 : stdgo.GoInt32));
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1320"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1322"
        return false;
    }
