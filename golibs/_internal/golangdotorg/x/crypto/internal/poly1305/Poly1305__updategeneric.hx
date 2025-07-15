package _internal.golangdotorg.x.crypto.internal.poly1305;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.encoding.binary.Binary;
function _updateGeneric(_state:stdgo.Ref<_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_macstate.T_macState>, _msg:stdgo.Slice<stdgo.GoUInt8>):Void {
        var __0 = @:assignType ((@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h[(0 : stdgo.GoInt)] : stdgo.GoUInt64), __1 = @:assignType ((@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h[(1 : stdgo.GoInt)] : stdgo.GoUInt64), __2 = @:assignType ((@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
var _h2 = __2, _h1 = __1, _h0 = __0;
        var __0 = @:assignType ((@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r[(0 : stdgo.GoInt)] : stdgo.GoUInt64), __1 = @:assignType ((@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r[(1 : stdgo.GoInt)] : stdgo.GoUInt64);
var _r1 = __1, _r0 = __0;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L147"
        while (((_msg.length) > (0 : stdgo.GoInt) : Bool)) {
            var _c:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L157"
            if (((_msg.length) >= (16 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h0, stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_msg.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), (0i64 : stdgo.GoUInt64));
                    _h0 = @:tmpset0 __tmp__._0;
                    _c = @:tmpset0 __tmp__._1;
                };
                {
                    var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h1, stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_msg.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _c);
                    _h1 = @:tmpset0 __tmp__._0;
                    _c = @:tmpset0 __tmp__._1;
                };
                _h2 = (_h2 + ((_c + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _msg = (_msg.__slice__((16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            } else {
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L165"
                (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_msg);
                _buf[(_msg.length : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                {
                    var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h0, stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_buf.__slice__((0 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), (0i64 : stdgo.GoUInt64));
                    _h0 = @:tmpset0 __tmp__._0;
                    _c = @:tmpset0 __tmp__._1;
                };
                {
                    var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h1, stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint64((_buf.__slice__((8 : stdgo.GoInt), (16 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _c);
                    _h1 = @:tmpset0 __tmp__._0;
                    _c = @:tmpset0 __tmp__._1;
                };
                _h2 = (_h2 + (_c) : stdgo.GoUInt64);
                _msg = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _h0r0 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h0, _r0)?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _h1r0 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h1, _r0)?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _h2r0 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h2, _r0)?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _h0r1 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h0, _r1)?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _h1r1 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h1, _r1)?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _h2r1 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__mul64._mul64(_h2, _r1)?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L209"
            if (_h2r0._hi != ((0i64 : stdgo.GoUInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L210"
                throw new stdgo.AnyInterface(("poly1305: unexpected overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L212"
            if (_h2r1._hi != ((0i64 : stdgo.GoUInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/internal/poly1305/sum_generic.go#L213"
                throw new stdgo.AnyInterface(("poly1305: unexpected overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _m0 = @:assignType (_h0r0?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _m1 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__add128._add128(_h1r0?.__copy__(), _h0r1?.__copy__())?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _m2 = @:assignType (_internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__add128._add128(_h2r0?.__copy__(), _h1r1?.__copy__())?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _m3 = @:assignType (_h2r1?.__copy__() : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            var _t0 = @:assignType (_m0._lo : stdgo.GoUInt64);
            var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_m1._lo, _m0._hi, (0i64 : stdgo.GoUInt64)), _t1:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_m2._lo, _m1._hi, _c), _t2:stdgo.GoUInt64 = __tmp__._0, _c:stdgo.GoUInt64 = __tmp__._1;
            var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_m3._lo, _m2._hi, _c), _t3:stdgo.GoUInt64 = __tmp__._0, __0:stdgo.GoUInt64 = __tmp__._1;
            {
                final __tmp__0 = _t0;
                final __tmp__1 = _t1;
                final __tmp__2 = (_t2 & (3i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                _h0 = @:binopAssign __tmp__0;
                _h1 = @:binopAssign __tmp__1;
                _h2 = @:binopAssign __tmp__2;
            };
            var _cc = @:assignType (new _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128((_t2 & (-4i64 : stdgo.GoUInt64) : stdgo.GoUInt64), _t3) : _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305_t_uint128.T_uint128);
            {
                var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h0, _cc._lo, (0i64 : stdgo.GoUInt64));
                _h0 = @:tmpset0 __tmp__._0;
                _c = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h1, _cc._hi, _c);
                _h1 = @:tmpset0 __tmp__._0;
                _c = @:tmpset0 __tmp__._1;
            };
            _h2 = (_h2 + (_c) : stdgo.GoUInt64);
            _cc = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__shiftrightby2._shiftRightBy2(_cc?.__copy__())?.__copy__();
            {
                var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h0, _cc._lo, (0i64 : stdgo.GoUInt64));
                _h0 = @:tmpset0 __tmp__._0;
                _c = @:tmpset0 __tmp__._1;
            };
            {
                var __tmp__ = _internal.golangdotorg.x.crypto.internal.poly1305.Poly1305__bitsadd64._bitsAdd64(_h1, _cc._hi, _c);
                _h1 = @:tmpset0 __tmp__._0;
                _c = @:tmpset0 __tmp__._1;
            };
            _h2 = (_h2 + (_c) : stdgo.GoUInt64);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = (@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h;
            final __tmp__4 = (0 : stdgo.GoInt);
            final __tmp__5 = (@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h;
            final __tmp__6 = (1 : stdgo.GoInt);
            final __tmp__7 = (@:checkr _state ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h;
            final __tmp__8 = (2 : stdgo.GoInt);
            __tmp__3[__tmp__4] = @:binopAssign __tmp__0;
            __tmp__5[__tmp__6] = @:binopAssign __tmp__1;
            __tmp__7[__tmp__8] = @:binopAssign __tmp__2;
        };
    }
