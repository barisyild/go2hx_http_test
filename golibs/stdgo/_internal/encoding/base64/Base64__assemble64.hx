package stdgo._internal.encoding.base64;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
function _assemble64(_n1:stdgo.GoUInt8, _n2:stdgo.GoUInt8, _n3:stdgo.GoUInt8, _n4:stdgo.GoUInt8, _n5:stdgo.GoUInt8, _n6:stdgo.GoUInt8, _n7:stdgo.GoUInt8, _n8:stdgo.GoUInt8):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        var _dn = (0 : stdgo.GoUInt64), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L577"
        if ((((((((_n1 | _n2 : stdgo.GoUInt8) | _n3 : stdgo.GoUInt8) | _n4 : stdgo.GoUInt8) | _n5 : stdgo.GoUInt8) | _n6 : stdgo.GoUInt8) | _n7 : stdgo.GoUInt8) | _n8 : stdgo.GoUInt8) == ((255 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L578"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
                _dn = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L580"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : (((((((((_n1 : stdgo.GoUInt64) << (58i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n2 : stdgo.GoUInt64) << (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n3 : stdgo.GoUInt64) << (46i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n4 : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n5 : stdgo.GoUInt64) << (34i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n6 : stdgo.GoUInt64) << (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n7 : stdgo.GoUInt64) << (22i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_n8 : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : true };
            _dn = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
