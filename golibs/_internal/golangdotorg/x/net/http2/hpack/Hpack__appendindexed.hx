package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _appendIndexed(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _first = @:assignType (_dst.length : stdgo.GoInt);
        _dst = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendvarint._appendVarInt(_dst, (7 : stdgo.GoUInt8), _i);
        _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L150"
        return _dst;
    }
