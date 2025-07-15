package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function _isNotToken(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L101"
        return !_internal.golangdotorg.x.net.http.httpguts.Httpguts_istokenrune.isTokenRune(_r);
    }
