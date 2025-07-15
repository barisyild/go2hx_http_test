package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _appendTableSize(_dst:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
        var _first = @:assignType (_dst.length : stdgo.GoInt);
        _dst = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendvarint._appendVarInt(_dst, (5 : stdgo.GoUInt8), (_v : stdgo.GoUInt64));
        _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L192"
        return _dst;
    }
