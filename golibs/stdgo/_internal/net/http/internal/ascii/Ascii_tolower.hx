package stdgo._internal.net.http.internal.ascii;
import stdgo._internal.strings.Strings;
function toLower(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _lower = ("" : stdgo.GoString), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L57"
        if (!stdgo._internal.net.http.internal.ascii.Ascii_isprint.isPrint(_s?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L58"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _lower = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/ascii/print.go#L60"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : stdgo._internal.strings.Strings_tolower.toLower(_s?.__copy__())?.__copy__(), _1 : true };
            _lower = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
