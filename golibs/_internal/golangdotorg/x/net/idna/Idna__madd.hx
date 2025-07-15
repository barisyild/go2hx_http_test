package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _madd(_a:stdgo.GoInt32, _b:stdgo.GoInt32, _c:stdgo.GoInt32):{ var _0 : stdgo.GoInt32; var _1 : Bool; } {
        var _next = (0 : stdgo.GoInt32), _overflow = false;
        var _p = @:assignType ((_b : stdgo.GoInt64) * (_c : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L175"
        if ((_p > ((2147483647i64 : stdgo.GoInt64) - (_a : stdgo.GoInt64) : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L176"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt32), _1 : true };
                _next = __tmp__._0;
                _overflow = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L178"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : (_a + (_p : stdgo.GoInt32) : stdgo.GoInt32), _1 : false };
            _next = __tmp__._0;
            _overflow = __tmp__._1;
            __tmp__;
        };
    }
