package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function isTokenRune(_r:stdgo.GoInt32):Bool {
        var _i = @:assignType (_r : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L97"
        return ((_i < (_internal.golangdotorg.x.net.http.httpguts.Httpguts__istokentable._isTokenTable.length) : Bool) && _internal.golangdotorg.x.net.http.httpguts.Httpguts__istokentable._isTokenTable[(_i : stdgo.GoInt)] : Bool);
    }
