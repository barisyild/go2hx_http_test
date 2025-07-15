package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _literalRegexp(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        var _re = (stdgo.Go.setRef(({ op : (3 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_regexpdotregexp.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_regexpdotRegexp })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = _flags;
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L874"
        if (_s != null) for (__1 => _c in _s) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L875"
            if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) >= (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.capacity : Bool)) {
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = (_s : stdgo.Slice<stdgo.GoInt32>);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L878"
                break;
            };
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__append__(_c) : stdgo.Slice<stdgo.GoInt32>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L882"
        return _re;
    }
