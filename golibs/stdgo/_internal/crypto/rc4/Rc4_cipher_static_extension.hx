package stdgo._internal.crypto.rc4;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.crypto.rc4.Rc4.Cipher_asInterface) class Cipher_static_extension {
    @:keep
    @:tdfield
    static public function xORKeyStream( _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L62"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L63"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L65"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L66"
            throw new stdgo.AnyInterface(("crypto/rc4: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var __0 = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoUInt8), __1 = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._j : stdgo.GoUInt8);
var _j = __1, _i = __0;
        _dst[((_src.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
        _dst = (_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L71"
        if (_src != null) for (_k => _v in _src) {
            _i = (_i + ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            var _x = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
            _j = (_j + ((_x : stdgo.GoUInt8)) : stdgo.GoUInt8);
            var _y = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(_j : stdgo.GoInt)] : stdgo.GoUInt32);
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                final __tmp__2 = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            _dst[(_k : stdgo.GoInt)] = (_v ^ ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(((_x + _y : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        {
            final __tmp__0 = _i;
            final __tmp__1 = _j;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i = @:binopAssign __tmp__0;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._j = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function reset( _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L53"
        for (_i => _ in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s.__copy__()) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
        };
        {
            final __tmp__0 = (0 : stdgo.GoUInt8);
            final __tmp__1 = (0 : stdgo.GoUInt8);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i = @:binopAssign __tmp__0;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._j = @:binopAssign __tmp__1;
        };
    }
}
