package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function huffmanEncodeLength(_s:stdgo.GoString):stdgo.GoUInt64 {
        var _n = @:assignType ((0i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L222"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                _n = (_n + ((_internal.golangdotorg.x.net.http2.hpack.Hpack__huffmancodelen._huffmanCodeLen[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L225"
        return (((_n + (7i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) / (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
