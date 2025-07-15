package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _appendHpackString(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        var _huffmanLength = @:assignType (_internal.golangdotorg.x.net.http2.hpack.Hpack_huffmanencodelength.huffmanEncodeLength(_s?.__copy__()) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L220"
        if ((_huffmanLength < (_s.length : stdgo.GoUInt64) : Bool)) {
            var _first = @:assignType (_dst.length : stdgo.GoInt);
            _dst = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendvarint._appendVarInt(_dst, (7 : stdgo.GoUInt8), _huffmanLength);
            _dst = _internal.golangdotorg.x.net.http2.hpack.Hpack_appendhuffmanstring.appendHuffmanString(_dst, _s?.__copy__());
            _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        } else {
            _dst = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendvarint._appendVarInt(_dst, (7 : stdgo.GoUInt8), (_s.length : stdgo.GoUInt64));
            _dst = (_dst.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L229"
        return _dst;
    }
