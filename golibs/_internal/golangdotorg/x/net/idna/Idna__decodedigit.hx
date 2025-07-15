package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _decodeDigit(_x:stdgo.GoUInt8):{ var _0 : stdgo.GoInt32; var _1 : Bool; } {
        var _digit = (0 : stdgo.GoInt32), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L182"
        if ((((48 : stdgo.GoUInt8) <= _x : Bool) && (_x <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L184"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : ((_x - (22 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32), _1 : true };
                _digit = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if ((((65 : stdgo.GoUInt8) <= _x : Bool) && (_x <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L186"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : ((_x - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32), _1 : true };
                _digit = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        } else if ((((97 : stdgo.GoUInt8) <= _x : Bool) && (_x <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L188"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : ((_x - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt32), _1 : true };
                _digit = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/punycode.go#L190"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : Bool; } = { _0 : (0 : stdgo.GoInt32), _1 : false };
            _digit = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
