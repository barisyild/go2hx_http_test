package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function compilePOSIX(_expr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L160"
        return stdgo._internal.regexp.Regexp__compile._compile(_expr?.__copy__(), (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags), true);
    }
