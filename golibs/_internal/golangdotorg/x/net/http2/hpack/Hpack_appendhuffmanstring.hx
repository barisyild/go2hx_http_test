package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function appendHuffmanString(_dst:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        var _x:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _n:stdgo.GoUInt = (0 : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L178"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_n = (_n + ((_internal.golangdotorg.x.net.http2.hpack.Hpack__huffmancodelen._huffmanCodeLen[(_c : stdgo.GoInt)] : stdgo.GoUInt)) : stdgo.GoUInt);
_x = (_x << ((_internal.golangdotorg.x.net.http2.hpack.Hpack__huffmancodelen._huffmanCodeLen[(_c : stdgo.GoInt)] % (64 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64);
_x = (_x | ((_internal.golangdotorg.x.net.http2.hpack.Hpack__huffmancodes._huffmanCodes[(_c : stdgo.GoInt)] : stdgo.GoUInt64)) : stdgo.GoUInt64);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L183"
                if ((_n >= (32u32 : stdgo.GoUInt) : Bool)) {
                    _n = (_n % ((32u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    var _y = @:assignType ((_x >> _n : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _dst = (_dst.__append__(((_y >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_y : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L190"
        {
            var _over = @:assignType (_n % (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if ((_over > (0u32 : stdgo.GoUInt) : Bool)) {
                {};
                var _pad = @:assignType ((8u32 : stdgo.GoUInt) - _over : stdgo.GoUInt);
                _x = (((_x << _pad : stdgo.GoUInt64)) | (((255i64 : stdgo.GoUInt64) >> _over : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _n = (_n + (_pad) : stdgo.GoUInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L201"
        {
            final __value__ = (_n / (8u32 : stdgo.GoUInt) : stdgo.GoUInt);
            if (__value__ == ((0u32 : stdgo.GoUInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L203"
                return _dst;
            } else if (__value__ == ((1u32 : stdgo.GoUInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L205"
                return (_dst.__append__((_x : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == ((2u32 : stdgo.GoUInt))) {
                var _y = @:assignType (_x : stdgo.GoUInt16);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L208"
                return (_dst.__append__(((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_y : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            } else if (__value__ == ((3u32 : stdgo.GoUInt))) {
                var _y = @:assignType ((_x >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt16);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L211"
                return (_dst.__append__(((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_y : stdgo.GoUInt8), (_x : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        var _y = @:assignType (_x : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L215"
        return (_dst.__append__(((_y >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_y >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_y : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
