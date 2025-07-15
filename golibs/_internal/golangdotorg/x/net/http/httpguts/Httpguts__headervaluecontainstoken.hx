package _internal.golangdotorg.x.net.http.httpguts;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import _internal.golangdotorg.x.net.idna.Idna;
function _headerValueContainsToken(_v:stdgo.GoString, _token:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L140"
        {
            var _comma = @:assignType (stdgo._internal.strings.Strings_indexbyte.indexByte(_v?.__copy__(), (44 : stdgo.GoUInt8)) : stdgo.GoInt);
            while (_comma != ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L141"
                if (_internal.golangdotorg.x.net.http.httpguts.Httpguts__tokenequal._tokenEqual(_internal.golangdotorg.x.net.http.httpguts.Httpguts__trimows._trimOWS((_v.__slice__(0, _comma) : stdgo.GoString).__copy__()).__copy__(), _token.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L142"
                    return true;
                };
_v = (_v.__slice__((_comma + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__();
                _comma = stdgo._internal.strings.Strings_indexbyte.indexByte(_v?.__copy__(), (44 : stdgo.GoUInt8));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http/httpguts/httplex.go#L146"
        return _internal.golangdotorg.x.net.http.httpguts.Httpguts__tokenequal._tokenEqual(_internal.golangdotorg.x.net.http.httpguts.Httpguts__trimows._trimOWS(_v?.__copy__())?.__copy__(), _token?.__copy__());
    }
