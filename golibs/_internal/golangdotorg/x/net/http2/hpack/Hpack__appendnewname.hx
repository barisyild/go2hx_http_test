package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _appendNewName(_dst:stdgo.Slice<stdgo.GoUInt8>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField, _indexing:Bool):stdgo.Slice<stdgo.GoUInt8> {
        _dst = (_dst.__append__(_internal.golangdotorg.x.net.http2.hpack.Hpack__encodetypebyte._encodeTypeByte(_indexing, _f.sensitive)) : stdgo.Slice<stdgo.GoUInt8>);
        _dst = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendhpackstring._appendHpackString(_dst, _f.name?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L163"
        return _internal.golangdotorg.x.net.http2.hpack.Hpack__appendhpackstring._appendHpackString(_dst, _f.value?.__copy__());
    }
