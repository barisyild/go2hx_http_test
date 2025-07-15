package stdgo._internal.net.http.internal.ascii;
import stdgo._internal.strings.Strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L15"
        if ((_s.length) != ((_t.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L16"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L18"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L19"
                if (stdgo._internal.net.http.internal.ascii.Ascii__lower._lower(_s[(_i : stdgo.GoInt)]) != (stdgo._internal.net.http.internal.ascii.Ascii__lower._lower(_t[(_i : stdgo.GoInt)]))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L20"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L23"
        return true;
    }
