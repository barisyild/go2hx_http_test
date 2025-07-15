package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.ErrorCode_asInterface) class ErrorCode_static_extension {
    @:keep
    @:tdfield
    static public function string( _e:stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode):stdgo.GoString {
        @:recv var _e:stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode = _e;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L51"
        return (_e : stdgo.GoString)?.__copy__();
    }
}
