package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
function _emsaPSSEncode(_mHash:stdgo.Slice<stdgo.GoUInt8>, _emBits:stdgo.GoInt, _salt:stdgo.Slice<stdgo.GoUInt8>, _hash:stdgo._internal.hash.Hash_hash.Hash):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _hLen = @:assignType (_hash.size() : stdgo.GoInt);
        var _sLen = @:assignType (_salt.length : stdgo.GoInt);
        var _emLen = @:assignType (((_emBits + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L44"
        if ((_mHash.length) != (_hLen)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L45"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("crypto/rsa: input must be hashed with given hash" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L50"
        if ((_emLen < ((_hLen + _sLen : stdgo.GoInt) + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L51"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong };
        };
        var _em = (new stdgo.Slice<stdgo.GoUInt8>((_emLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _psLen = @:assignType (((_emLen - _sLen : stdgo.GoInt) - _hLen : stdgo.GoInt) - (2 : stdgo.GoInt) : stdgo.GoInt);
        var _db = (_em.__slice__(0, ((_psLen + (1 : stdgo.GoInt) : stdgo.GoInt) + _sLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _h = (_em.__slice__(((_psLen + (1 : stdgo.GoInt) : stdgo.GoInt) + _sLen : stdgo.GoInt), (_emLen - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _prefix:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L72"
        _hash.write((_prefix.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L73"
        _hash.write(_mHash);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L74"
        _hash.write(_salt);
        _h = _hash.sum((_h.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L77"
        _hash.reset();
        _db[(_psLen : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L86"
        (_db.__slice__((_psLen + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_salt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L92"
        stdgo._internal.crypto.rsa.Rsa__mgf1xor._mgf1XOR(_db, _hash, _h);
        _db[(0 : stdgo.GoInt)] = (_db[(0 : stdgo.GoInt)] & (((255 : stdgo.GoUInt8) >> ((((8 : stdgo.GoInt) * _emLen : stdgo.GoInt) - _emBits : stdgo.GoInt)) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _em[(_emLen - (1 : stdgo.GoInt) : stdgo.GoInt)] = (188 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/pss.go#L103"
        return { _0 : _em, _1 : (null : stdgo.Error) };
    }
