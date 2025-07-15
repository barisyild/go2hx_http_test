package _internal.golangdotorg.x.crypto.chacha20;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
function _hChaCha20(_out:stdgo.Slice<stdgo.GoUInt8>, _key:stdgo.Slice<stdgo.GoUInt8>, _nonce:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L353"
        if ((_key.length) != ((32 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L354"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20: wrong HChaCha20 key size" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L356"
        if ((_nonce.length) != ((16 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L357"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("chacha20: wrong HChaCha20 nonce size" : stdgo.GoString)) };
        };
        var __0 = @:assignType (1634760805u32 : stdgo.GoUInt32), __1 = @:assignType (857760878u32 : stdgo.GoUInt32), __2 = @:assignType (2036477234u32 : stdgo.GoUInt32), __3 = @:assignType (1797285236u32 : stdgo.GoUInt32);
var _x3 = __3, _x2 = __2, _x1 = __1, _x0 = __0;
        var _x4 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x5 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x6 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x7 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x8 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x9 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x10 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x11 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_key.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x12 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_nonce.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x13 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_nonce.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x14 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_nonce.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _x15 = @:assignType (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((_nonce.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L374"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (10 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x0, _x4, _x8, _x12);
                    _x0 = @:tmpset0 __tmp__._0;
                    _x4 = @:tmpset0 __tmp__._1;
                    _x8 = @:tmpset0 __tmp__._2;
                    _x12 = @:tmpset0 __tmp__._3;
                };
{
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x1, _x5, _x9, _x13);
                    _x1 = @:tmpset0 __tmp__._0;
                    _x5 = @:tmpset0 __tmp__._1;
                    _x9 = @:tmpset0 __tmp__._2;
                    _x13 = @:tmpset0 __tmp__._3;
                };
{
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x2, _x6, _x10, _x14);
                    _x2 = @:tmpset0 __tmp__._0;
                    _x6 = @:tmpset0 __tmp__._1;
                    _x10 = @:tmpset0 __tmp__._2;
                    _x14 = @:tmpset0 __tmp__._3;
                };
{
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x3, _x7, _x11, _x15);
                    _x3 = @:tmpset0 __tmp__._0;
                    _x7 = @:tmpset0 __tmp__._1;
                    _x11 = @:tmpset0 __tmp__._2;
                    _x15 = @:tmpset0 __tmp__._3;
                };
{
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x0, _x5, _x10, _x15);
                    _x0 = @:tmpset0 __tmp__._0;
                    _x5 = @:tmpset0 __tmp__._1;
                    _x10 = @:tmpset0 __tmp__._2;
                    _x15 = @:tmpset0 __tmp__._3;
                };
{
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x1, _x6, _x11, _x12);
                    _x1 = @:tmpset0 __tmp__._0;
                    _x6 = @:tmpset0 __tmp__._1;
                    _x11 = @:tmpset0 __tmp__._2;
                    _x12 = @:tmpset0 __tmp__._3;
                };
{
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x2, _x7, _x8, _x13);
                    _x2 = @:tmpset0 __tmp__._0;
                    _x7 = @:tmpset0 __tmp__._1;
                    _x8 = @:tmpset0 __tmp__._2;
                    _x13 = @:tmpset0 __tmp__._3;
                };
{
                    var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_x3, _x4, _x9, _x14);
                    _x3 = @:tmpset0 __tmp__._0;
                    _x4 = @:tmpset0 __tmp__._1;
                    _x9 = @:tmpset0 __tmp__._2;
                    _x14 = @:tmpset0 __tmp__._3;
                };
                _i++;
            };
        };
        _out[(31 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L389"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x0);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L390"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x1);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L391"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x2);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L392"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x3);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L393"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x12);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L394"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x13);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L395"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x14);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L396"
        stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.putUint32((_out.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x15);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L397"
        return { _0 : _out, _1 : (null : stdgo.Error) };
    }
