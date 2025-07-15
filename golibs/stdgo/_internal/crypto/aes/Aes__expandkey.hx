package stdgo._internal.crypto.aes;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _expandKey(_key:stdgo.Slice<stdgo.GoUInt8>, _enc:stdgo.Slice<stdgo.GoUInt32>, _dec:stdgo.Slice<stdgo.GoUInt32>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/aes/cipher_generic.go#L25"
        stdgo._internal.crypto.aes.Aes__expandkeygo._expandKeyGo(_key, _enc, _dec);
    }
