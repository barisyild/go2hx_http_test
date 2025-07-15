package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _quote(_s:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L336"
        if (stdgo._internal.strconv.Strconv_canbackquote.canBackquote(_s?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L337"
            return ((("`" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("`" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L339"
        return stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__();
    }
