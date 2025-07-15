package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _encodeTypeByte(_indexing:Bool, _sensitive:Bool):stdgo.GoUInt8 {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L238"
        if (_sensitive) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L239"
            return (16 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L241"
        if (_indexing) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L242"
            return (64 : stdgo.GoUInt8);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L244"
        return (0 : stdgo.GoUInt8);
    }
