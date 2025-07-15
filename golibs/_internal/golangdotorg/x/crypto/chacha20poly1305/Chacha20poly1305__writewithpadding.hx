package _internal.golangdotorg.x.crypto.chacha20poly1305;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
import _internal.golangdotorg.x.crypto.chacha20.Chacha20;
import _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305;
function _writeWithPadding(_p:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_mac.MAC>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L16"
        _p.write(_b);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L17"
        {
            var _rem = @:assignType ((_b.length) % (16 : stdgo.GoInt) : stdgo.GoInt);
            if (_rem != ((0 : stdgo.GoInt))) {
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
                var _padLen = @:assignType ((16 : stdgo.GoInt) - _rem : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20poly1305/chacha20poly1305_generic.go#L20"
                _p.write((_buf.__slice__(0, _padLen) : stdgo.Slice<stdgo.GoUInt8>));
            };
        };
    }
