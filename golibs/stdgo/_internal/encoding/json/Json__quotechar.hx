package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
function _quoteChar(_c:stdgo.GoUInt8):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L600"
        if (_c == ((39 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L601"
            return ("\'\\\'\'" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L603"
        if (_c == ((34 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L604"
            return ("\'\"\'" : stdgo.GoString);
        };
        var _s = @:assignType (stdgo._internal.strconv.Strconv_quote.quote((_c : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/scanner.go#L609"
        return ((("\'" : stdgo.GoString) + (_s.__slice__((1 : stdgo.GoInt), ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("\'" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
