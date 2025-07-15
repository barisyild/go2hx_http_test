package stdgo._internal.net.http.internal.ascii;
import stdgo._internal.strings.Strings;
function _lower(_b:stdgo.GoUInt8):stdgo.GoUInt8 {
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L28"
        if ((((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L29"
            return (_b + (32 : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L31"
        return _b;
    }
