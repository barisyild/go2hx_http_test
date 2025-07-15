package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Op_asInterface) class Op_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.regexp.syntax.Syntax_op.Op):stdgo.GoString {
        @:recv var _i:stdgo._internal.regexp.syntax.Syntax_op.Op = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/op_string.go#L43"
        if ((((1 : stdgo._internal.regexp.syntax.Syntax_op.Op) <= _i : Bool) && (_i <= (19 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool) : Bool)) {
            _i = (_i - ((1 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/op_string.go#L46"
            return (("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : stdgo.GoString).__slice__(stdgo._internal.regexp.syntax.Syntax___op_index_0.__Op_index_0[(_i : stdgo.GoInt)], stdgo._internal.regexp.syntax.Syntax___op_index_0.__Op_index_0[((_i + (1 : stdgo._internal.regexp.syntax.Syntax_op.Op) : stdgo._internal.regexp.syntax.Syntax_op.Op) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((128 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/op_string.go#L48"
            return ("opPseudo" : stdgo.GoString);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/op_string.go#L50"
            return ((("Op(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
