package stdgo._internal.crypto.cipher;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
function _reverseBits(_i:stdgo.GoInt):stdgo.GoInt {
        _i = (((((_i << (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (12 : stdgo.GoInt) : stdgo.GoInt)) | ((((_i >> (2i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        _i = (((((_i << (1i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (10 : stdgo.GoInt) : stdgo.GoInt)) | ((((_i >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt)) & (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/cipher/gcm.go#L252"
        return _i;
    }
