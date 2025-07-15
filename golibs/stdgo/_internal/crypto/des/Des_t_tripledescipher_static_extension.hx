package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.crypto.des.Des.T_tripleDESCipher_asInterface) class T_tripleDESCipher_static_extension {
    @:keep
    @:tdfield
    static public function decrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L123"
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L124"
            throw new stdgo.AnyInterface(("crypto/des: input not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L126"
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L127"
            throw new stdgo.AnyInterface(("crypto/des: output not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L129"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L130"
            throw new stdgo.AnyInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _b = @:assignType (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteinitialblock._permuteInitialBlock(_b);
        var __0 = @:assignType ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = @:assignType (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L140"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher3._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher3._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L143"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_right, _left, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher2._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher2._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _right = @:tmpset0 __tmp__._0;
                    _left = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L146"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher1._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher1._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = @:assignType ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L154"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permutefinalblock._permuteFinalBlock(_preOutput));
    }
    @:keep
    @:tdfield
    static public function encrypt( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L88"
        if (((_src.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L89"
            throw new stdgo.AnyInterface(("crypto/des: input not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L91"
        if (((_dst.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L92"
            throw new stdgo.AnyInterface(("crypto/des: output not full block" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L94"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L95"
            throw new stdgo.AnyInterface(("crypto/des: invalid buffer overlap" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _b = @:assignType (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint64(_src) : stdgo.GoUInt64);
        _b = stdgo._internal.crypto.des.Des__permuteinitialblock._permuteInitialBlock(_b);
        var __0 = @:assignType ((_b >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32), __1 = @:assignType (_b : stdgo.GoUInt32);
var _right = __1, _left = __0;
        _left = (((_left << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L105"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher1._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher1._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L108"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_right, _left, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher2._subkeys[((15 : stdgo.GoInt) - ((2 : stdgo.GoInt) * _i : stdgo.GoInt) : stdgo.GoInt)], (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher2._subkeys[((15 : stdgo.GoInt) - ((((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)]);
                    _right = @:tmpset0 __tmp__._0;
                    _left = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L111"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (8 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.crypto.des.Des__feistel._feistel(_left, _right, (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher3._subkeys[((2 : stdgo.GoInt) * _i : stdgo.GoInt)], (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cipher3._subkeys[(((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _left = @:tmpset0 __tmp__._0;
                    _right = @:tmpset0 __tmp__._1;
                };
                _i++;
            };
        };
        _left = (((_left << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_left >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _right = (((_right << (31i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_right >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        var _preOutput = @:assignType ((((_right : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) | (_left : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L119"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64(_dst, stdgo._internal.crypto.des.Des__permutefinalblock._permuteFinalBlock(_preOutput));
    }
    @:keep
    @:tdfield
    static public function blockSize( _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher>):stdgo.GoInt {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.des.Des_t_tripledescipher.T_tripleDESCipher> = _c;
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/cipher.go#L85"
        return (8 : stdgo.GoInt);
    }
}
