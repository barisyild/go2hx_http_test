package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error> = _e;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L22"
        return ((((("error parsing regexp: " : stdgo.GoString) + ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).code.string() : stdgo.GoString)?.__copy__() : stdgo.GoString) + (": `" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expr?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
