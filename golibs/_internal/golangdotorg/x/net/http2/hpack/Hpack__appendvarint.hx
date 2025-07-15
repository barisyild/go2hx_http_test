package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _appendVarInt(_dst:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoUInt8, _i:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _k = @:assignType (((((1i64 : stdgo.GoUInt64) << _n : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L202"
        if ((_i < _k : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L203"
            return (_dst.__append__((_i : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _dst = (_dst.__append__((_k : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        _i = (_i - (_k) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L207"
        while ((_i >= (128i64 : stdgo.GoUInt64) : Bool)) {
            _dst = (_dst.__append__((((128i64 : stdgo.GoUInt64) | ((_i & (127i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L210"
        return (_dst.__append__((_i : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
