package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _decryptBlock(_subkeys:stdgo.Slice<stdgo.GoUInt64>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/block.go#L45"
        stdgo._internal.crypto.des.Des__cryptblock._cryptBlock(_subkeys, _dst, _src, true);
    }
