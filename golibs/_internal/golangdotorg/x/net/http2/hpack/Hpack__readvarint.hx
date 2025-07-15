package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _readVarInt(_n:stdgo.GoUInt8, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        var _i = (0 : stdgo.GoUInt64), _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L443"
        if (((_n < (1 : stdgo.GoUInt8) : Bool) || (_n > (8 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L444"
            throw new stdgo.AnyInterface(("bad n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L446"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L447"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _p, _2 : _internal.golangdotorg.x.net.http2.hpack.Hpack__errneedmore._errNeedMore };
                _i = __tmp__._0;
                _remain = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _i = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L450"
        if ((_n < (8 : stdgo.GoUInt8) : Bool)) {
            _i = (_i & (((((1i64 : stdgo.GoUInt64) << (_n : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L453"
        if ((_i < ((((1i64 : stdgo.GoUInt64) << (_n : stdgo.GoUInt64) : stdgo.GoUInt64)) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L454"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _i, _1 : (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                _i = __tmp__._0;
                _remain = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _origP = _p;
        _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _m:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L460"
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            var _b = @:assignType (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _i = (_i + ((((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) << _m : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L464"
            if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L465"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _i, _1 : _p, _2 : (null : stdgo.Error) };
                    _i = __tmp__._0;
                    _remain = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _m = (_m + ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L468"
            if ((_m >= (63i64 : stdgo.GoUInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L469"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _origP, _2 : stdgo.Go.asInterface(_internal.golangdotorg.x.net.http2.hpack.Hpack__errvarintoverflow._errVarintOverflow, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decodingerrordotdecodingerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decodingerrordotDecodingError) };
                    _i = __tmp__._0;
                    _remain = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L472"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : _origP, _2 : _internal.golangdotorg.x.net.http2.hpack.Hpack__errneedmore._errNeedMore };
            _i = __tmp__._0;
            _remain = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
