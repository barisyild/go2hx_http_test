package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _encodeDigit(_digit:stdgo.GoInt32):stdgo.GoUInt8 {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L194"
        if ((((0 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (26 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L196"
            return ((_digit + (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        } else if ((((26 : stdgo.GoInt32) <= _digit : Bool) && (_digit < (36 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L198"
            return ((_digit + (22 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L200"
        throw new stdgo.AnyInterface(("idna: internal error in punycode encoding" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
