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
function _foldRune(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L41"
        while (true) {
            var _r2 = @:assignType (stdgo._internal.unicode.Unicode_simplefold.simpleFold(_r) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L43"
            if ((_r2 <= _r : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/fold.go#L44"
                return _r2;
            };
            _r = _r2;
        };
    }
