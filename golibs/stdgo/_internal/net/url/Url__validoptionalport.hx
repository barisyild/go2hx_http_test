package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _validOptionalPort(_port:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L773"
        if (_port == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L774"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L776"
        if (_port[(0 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L777"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L779"
        if ((_port.__slice__((1 : stdgo.GoInt)) : stdgo.GoString) != null) for (__0 => _b in (_port.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L780"
            if (((_b < (48 : stdgo.GoInt32) : Bool) || (_b > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L781"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L784"
        return true;
    }
