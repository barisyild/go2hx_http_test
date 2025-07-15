package stdgo._internal.net.http.internal.ascii;
import stdgo._internal.strings.Strings;
function isPrint(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L37"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L38"
                if (((_s[(_i : stdgo.GoInt)] < (32 : stdgo.GoUInt8) : Bool) || (_s[(_i : stdgo.GoInt)] > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L39"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L42"
        return true;
    }
