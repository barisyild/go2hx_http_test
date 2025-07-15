package stdgo._internal.net.http.internal.ascii;
import stdgo._internal.strings.Strings;
function is_(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L47"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L48"
                if ((_s[(_i : stdgo.GoInt)] > (127 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L49"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L52"
        return true;
    }
