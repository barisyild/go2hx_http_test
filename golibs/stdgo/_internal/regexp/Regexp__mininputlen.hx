package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L275"
        {
            final __value__ = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
            if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L279"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _l = @:assignType (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L282"
                if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune != null) for (__0 => _r in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L283"
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L284"
                        _l++;
                    } else {
                        _l = (_l + (stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_r)) : stdgo.GoInt);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L289"
                return _l;
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L291"
                return stdgo._internal.regexp.Regexp__mininputlen._minInputLen((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L293"
                return ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min * stdgo._internal.regexp.Regexp__mininputlen._minInputLen((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _l = @:assignType (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L296"
                if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub != null) for (__0 => _sub in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub) {
                    _l = (_l + (stdgo._internal.regexp.Regexp__mininputlen._minInputLen(_sub)) : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L299"
                return _l;
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _l = @:assignType (stdgo._internal.regexp.Regexp__mininputlen._minInputLen((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
                var _lnext:stdgo.GoInt = (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L303"
                if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>) != null) for (__0 => _sub in ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>)) {
                    _lnext = stdgo._internal.regexp.Regexp__mininputlen._minInputLen(_sub);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L305"
                    if ((_lnext < _l : Bool)) {
                        _l = _lnext;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L309"
                return _l;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L277"
                return (0 : stdgo.GoInt);
            };
        };
    }
