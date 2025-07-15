package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.crypto.des.Des.T_desCipher_asInterface) class T_desCipher_static_extension {
    @:keep
    @:tdfield
    static public function decrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L55"
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L56"
            throw new stdgo.AnyInterface(("crypto/des: input not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L58"
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L59"
            throw new stdgo.AnyInterface(("crypto/des: output not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L61"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L62"
            throw new stdgo.AnyInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L64"
        stdgo._internal.crypto.des.Des__decryptblock._decryptBlock(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _dst, _src);
    }
    @:keep
    @:tdfield
    static public function encrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L42"
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L43"
            throw new stdgo.AnyInterface(("crypto/des: input not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L45"
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L46"
            throw new stdgo.AnyInterface(("crypto/des: output not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L48"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L49"
            throw new stdgo.AnyInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L51"
        stdgo._internal.crypto.des.Des__encryptblock._encryptBlock(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subkeys.__slice__(0) : stdgo.Slice<stdgo.GoUInt64>), _dst, _src);
    }
    @:keep
    @:tdfield
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L39"
        return (8 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _generateSubkeys( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher>, _keyBytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_descipher.T_desCipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/block.go#L228"
        stdgo._internal.crypto.des.Des__feistelboxonce._feistelBoxOnce.do_(stdgo._internal.crypto.des.Des__initfeistelbox._initFeistelBox);
        var _key = @:assignType (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_keyBytes) : stdgo.GoUInt64);
        var _permutedKey = @:assignType (stdgo._internal.crypto.des.Des__permuteblock._permuteBlock(_key, (stdgo._internal.crypto.des.Des__permutedchoice1._permutedChoice1.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt64);
        var _leftRotations = stdgo._internal.crypto.des.Des__ksrotate._ksRotate(((_permutedKey >> (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32));
        var _rightRotations = stdgo._internal.crypto.des.Des__ksrotate._ksRotate((((_permutedKey << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/block.go#L239"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (16 : stdgo.GoInt) : Bool)) {
                var _pc2Input = @:assignType (((_leftRotations[(_i : stdgo.GoInt)] : stdgo.GoUInt64) << (28i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (_rightRotations[(_i : stdgo.GoInt)] : stdgo.GoUInt64) : stdgo.GoUInt64);
(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subkeys[(_i : stdgo.GoInt)] = stdgo._internal.crypto.des.Des__unpack._unpack(stdgo._internal.crypto.des.Des__permuteblock._permuteBlock(_pc2Input, (stdgo._internal.crypto.des.Des__permutedchoice2._permutedChoice2.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)));
                _i++;
            };
        };
    }
}
