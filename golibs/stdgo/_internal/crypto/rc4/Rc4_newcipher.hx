package stdgo._internal.crypto.rc4;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function newCipher(_key:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>; var _1 : stdgo.Error; } {
        var _k = @:assignType (_key.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L33"
        if (((_k < (1 : stdgo.GoInt) : Bool) || (_k > (256 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L34"
            return { _0 : null, _1 : stdgo.Go.asInterface((_k : stdgo._internal.crypto.rc4.Rc4_keysizeerror.KeySizeError), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrc4dotrc4_keysizeerrordotkeysizeerror.__type__stdgodot_internaldotcryptodotrc4dotRc4_keysizeerrordotKeySizeError) };
        };
        var _c:stdgo._internal.crypto.rc4.Rc4_cipher.Cipher = ({} : stdgo._internal.crypto.rc4.Rc4_cipher.Cipher);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L37"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                _c._s[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt32);
                _i++;
            };
        };
        var _j:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L41"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                _j = (_j + (((_c._s[(_i : stdgo.GoInt)] : stdgo.GoUInt8) + _key[(_i % _k : stdgo.GoInt)] : stdgo.GoUInt8)) : stdgo.GoUInt8);
{
                    final __tmp__0 = _c._s[(_j : stdgo.GoInt)];
                    final __tmp__1 = _c._s[(_i : stdgo.GoInt)];
                    final __tmp__2 = _c._s;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _c._s;
                    final __tmp__5 = (_j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rc4/rc4.go#L45"
        return { _0 : (stdgo.Go.setRef(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotrc4dotrc4_cipherdotcipher.__type__stdgodot_internaldotcryptodotrc4dotRc4_cipherdotCipher })) : stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>), _1 : (null : stdgo.Error) };
    }
