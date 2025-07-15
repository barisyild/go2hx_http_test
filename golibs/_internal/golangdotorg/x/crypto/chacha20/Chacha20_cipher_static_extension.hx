package _internal.golangdotorg.x.crypto.chacha20;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.math.bits.Bits;
import _internal.golangdotorg.x.crypto.internal.alias.Alias;
@:keep @:allow(_internal.golangdotorg.x.crypto.chacha20.Chacha20.Cipher_asInterface) class Cipher_static_extension {
    @:keep
    @:tdfield
    static public function _xorKeyStreamBlocks( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_noasm.go#L13"
        _s._xorKeyStreamBlocksGeneric(_dst, _src);
    }
    @:keep
    @:tdfield
    static public function _xorKeyStreamBlocksGeneric( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L257"
        if (((_dst.length != (_src.length)) || (((_dst.length) % (64 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L258"
            throw new stdgo.AnyInterface(("chacha20: internal error: wrong dst and/or src length" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _c0 = (1634760805u32 : stdgo.GoUInt32), _c1 = (857760878u32 : stdgo.GoUInt32), _c2 = (2036477234u32 : stdgo.GoUInt32), _c3 = (1797285236u32 : stdgo.GoUInt32), _c4 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(0 : stdgo.GoInt)], _c5 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(1 : stdgo.GoInt)], _c6 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(2 : stdgo.GoInt)], _c7 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(3 : stdgo.GoInt)], _c8 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(4 : stdgo.GoInt)], _c9 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(5 : stdgo.GoInt)], _c10 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(6 : stdgo.GoInt)], _c11 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key[(7 : stdgo.GoInt)], __1 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter, _c13 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nonce[(0 : stdgo.GoInt)], _c14 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nonce[(1 : stdgo.GoInt)], _c15 = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nonce[(2 : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L282"
        if (!(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._precompDone) {
            {
                var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_c1, _c5, _c9, _c13);
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p1 = @:tmpset0 __tmp__._0;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p5 = @:tmpset0 __tmp__._1;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p9 = @:tmpset0 __tmp__._2;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p13 = @:tmpset0 __tmp__._3;
            };
            {
                var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_c2, _c6, _c10, _c14);
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p2 = @:tmpset0 __tmp__._0;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p6 = @:tmpset0 __tmp__._1;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p10 = @:tmpset0 __tmp__._2;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p14 = @:tmpset0 __tmp__._3;
            };
            {
                var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_c3, _c7, _c11, _c15);
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p3 = @:tmpset0 __tmp__._0;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p7 = @:tmpset0 __tmp__._1;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p11 = @:tmpset0 __tmp__._2;
                (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p15 = @:tmpset0 __tmp__._3;
            };
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._precompDone = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L291"
        while ((((_src.length) >= (64 : stdgo.GoInt) : Bool) && ((_dst.length) >= (64 : stdgo.GoInt) : Bool) : Bool)) {
            var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_c0, _c4, _c8, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter), _fcr0:stdgo.GoUInt32 = __tmp__._0, _fcr4:stdgo.GoUInt32 = __tmp__._1, _fcr8:stdgo.GoUInt32 = __tmp__._2, _fcr12:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound(_fcr0, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p5, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p10, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p15), _x0:stdgo.GoUInt32 = __tmp__._0, _x5:stdgo.GoUInt32 = __tmp__._1, _x10:stdgo.GoUInt32 = __tmp__._2, _x15:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p1, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p6, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p11, _fcr12), _x1:stdgo.GoUInt32 = __tmp__._0, _x6:stdgo.GoUInt32 = __tmp__._1, _x11:stdgo.GoUInt32 = __tmp__._2, _x12:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p2, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p7, _fcr8, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p13), _x2:stdgo.GoUInt32 = __tmp__._0, _x7:stdgo.GoUInt32 = __tmp__._1, _x8:stdgo.GoUInt32 = __tmp__._2, _x13:stdgo.GoUInt32 = __tmp__._3;
            var __tmp__ = _internal.golangdotorg.x.crypto.chacha20.Chacha20__quarterround._quarterRound((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p3, _fcr4, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p9, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p14), _x3:stdgo.GoUInt32 = __tmp__._0, _x4:stdgo.GoUInt32 = __tmp__._1, _x9:stdgo.GoUInt32 = __tmp__._2, _x14:stdgo.GoUInt32 = __tmp__._3;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L302"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (9 : stdgo.GoInt) : Bool)) {
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
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L318"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x0, _c0);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L319"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x1, _c1);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L320"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((8 : stdgo.GoInt), (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x2, _c2);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L321"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((12 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x3, _c3);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L322"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((16 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x4, _c4);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L323"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((20 : stdgo.GoInt), (24 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x5, _c5);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L324"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((24 : stdgo.GoInt), (28 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x6, _c6);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L325"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((28 : stdgo.GoInt), (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x7, _c7);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L326"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((32 : stdgo.GoInt), (36 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((32 : stdgo.GoInt), (36 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x8, _c8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L327"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((36 : stdgo.GoInt), (40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((36 : stdgo.GoInt), (40 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x9, _c9);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L328"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((40 : stdgo.GoInt), (44 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((40 : stdgo.GoInt), (44 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x10, _c10);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L329"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((44 : stdgo.GoInt), (48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((44 : stdgo.GoInt), (48 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x11, _c11);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L330"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((48 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((48 : stdgo.GoInt), (52 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x12, (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L331"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((52 : stdgo.GoInt), (56 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((52 : stdgo.GoInt), (56 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x13, _c13);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L332"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((56 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((56 : stdgo.GoInt), (60 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x14, _c14);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L333"
            _internal.golangdotorg.x.crypto.chacha20.Chacha20__addxor._addXor((_dst.__slice__((60 : stdgo.GoInt), (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__((60 : stdgo.GoInt), (64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _x15, _c15);
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter + ((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            {
                final __tmp__0 = (_src.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = (_dst.__slice__((64 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                _src = @:binopAssign __tmp__0;
                _dst = @:binopAssign __tmp__1;
            };
        };
    }
    @:keep
    @:tdfield
    static public function xORKeyStream( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L185"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L186"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L188"
        if (((_dst.length) < (_src.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L189"
            throw new stdgo.AnyInterface(("chacha20: output smaller than input" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        _dst = (_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L192"
        if (_internal.golangdotorg.x.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap(_dst, _src)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L193"
            throw new stdgo.AnyInterface(("chacha20: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L197"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len != ((0 : stdgo.GoInt))) {
            var _keyStream = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(((64 : stdgo.GoInt) - (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L199"
            if (((_src.length) < (_keyStream.length) : Bool)) {
                _keyStream = (_keyStream.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _src[((_keyStream.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L203"
            if (_keyStream != null) for (_i => _b in _keyStream) {
                _dst[(_i : stdgo.GoInt)] = (_src[(_i : stdgo.GoInt)] ^ _b : stdgo.GoUInt8);
            };
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len - ((_keyStream.length)) : stdgo.GoInt);
            {
                final __tmp__0 = (_dst.__slice__((_keyStream.length)) : stdgo.Slice<stdgo.GoUInt8>);
                final __tmp__1 = (_src.__slice__((_keyStream.length)) : stdgo.Slice<stdgo.GoUInt8>);
                _dst = @:binopAssign __tmp__0;
                _src = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L209"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L210"
            return;
        };
        var _numBlocks = @:assignType (((((_src.length : stdgo.GoUInt64) + (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) / (64i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L217"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._overflow || ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter : stdgo.GoUInt64) + _numBlocks : stdgo.GoUInt64) > (4294967296i64 : stdgo.GoUInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L218"
            throw new stdgo.AnyInterface(("chacha20: counter overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        } else if ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter : stdgo.GoUInt64) + _numBlocks : stdgo.GoUInt64) == ((4294967296i64 : stdgo.GoUInt64))) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._overflow = true;
        };
        var _full = @:assignType ((_src.length) - ((_src.length) % (64 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L228"
        if ((_full > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L229"
            _s._xorKeyStreamBlocks((_dst.__slice__(0, _full) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _full) : stdgo.Slice<stdgo.GoUInt8>));
        };
        {
            final __tmp__0 = (_dst.__slice__(_full) : stdgo.Slice<stdgo.GoUInt8>);
            final __tmp__1 = (_src.__slice__(_full) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = @:binopAssign __tmp__0;
            _src = @:binopAssign __tmp__1;
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L236"
        if (((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) > (4294967296i64 : stdgo.GoUInt64) : Bool)) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = (new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            var _numBlocks = @:assignType (((((_src.length) + (64 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)) / (64 : stdgo.GoInt) : stdgo.GoInt);
            var _buf = ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(((64 : stdgo.GoInt) - (_numBlocks * (64 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L240"
            _buf.__copyTo__(_src);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L241"
            _s._xorKeyStreamBlocksGeneric(_buf, _buf);
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len = ((_buf.length) - _dst.__copyTo__(_buf) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L243"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L248"
        if (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = (new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L250"
            ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_src);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L251"
            _s._xorKeyStreamBlocks(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len = ((64 : stdgo.GoInt) - _dst.__copyTo__(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function setCounter( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher>, _counter:stdgo.GoUInt32):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.chacha20.Chacha20_cipher.Cipher> = _s;
        var _outputCounter = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter - (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len : stdgo.GoUInt32) / (64u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L158"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._overflow || (_counter < _outputCounter : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L159"
            throw new stdgo.AnyInterface(("chacha20: SetCounter attempted to rollback counter" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/chacha20/chacha_generic.go#L166"
        if ((_counter < (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter : Bool)) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len = ((((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter - _counter : stdgo.GoUInt32) : stdgo.GoInt) * (64 : stdgo.GoInt) : stdgo.GoInt);
        } else {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._counter = _counter;
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len = (0 : stdgo.GoInt);
        };
    }
}
