package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _appendIndexedName(_dst:stdgo.Slice<stdgo.GoUInt8>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField, _i:stdgo.GoUInt64, _indexing:Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _first = @:assignType (_dst.length : stdgo.GoInt);
        var _n:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L176"
        if (_indexing) {
            _n = (6 : stdgo.GoUInt8);
        } else {
            _n = (4 : stdgo.GoUInt8);
        };
        _dst = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendvarint._appendVarInt(_dst, _n, _i);
        _dst[(_first : stdgo.GoInt)] = (_dst[(_first : stdgo.GoInt)] | (_internal.golangdotorg.x.net.http2.hpack.Hpack__encodetypebyte._encodeTypeByte(_indexing, _f.sensitive)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L183"
        return _internal.golangdotorg.x.net.http2.hpack.Hpack__appendhpackstring._appendHpackString(_dst, _f.value?.__copy__());
    }
