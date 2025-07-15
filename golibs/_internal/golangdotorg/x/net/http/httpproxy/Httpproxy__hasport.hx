package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
function _hasPort(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpproxy/proxy.go#L297"
        return (stdgo._internal.strings.Strings_lastindex.lastIndex(_s?.__copy__(), (":" : stdgo.GoString)) > stdgo._internal.strings.Strings_lastindex.lastIndex(_s?.__copy__(), ("]" : stdgo.GoString)) : Bool);
    }
