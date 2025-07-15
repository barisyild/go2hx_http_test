package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
function _sliceForAppend(_in:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _head = (null : stdgo.Slice<stdgo.GoUInt8>), _tail = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L90"
        {
            var _total = @:assignType ((_in.length) + _n : stdgo.GoInt);
            if ((_in.capacity >= _total : Bool)) {
                _head = (_in.__slice__(0, _total) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                _head = (new stdgo.Slice<stdgo.GoUInt8>((_total : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L94"
                _head.__copyTo__(_in);
            };
        };
        _tail = (_head.__slice__((_in.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305.go#L97"
        return { _0 : _head, _1 : _tail };
    }
