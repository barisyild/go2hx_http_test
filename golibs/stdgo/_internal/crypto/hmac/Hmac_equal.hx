package stdgo._internal.crypto.hmac;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
function equal(_mac1:stdgo.Slice<stdgo.GoUInt8>, _mac2:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/crypto/hmac/hmac.go#L179"
        return stdgo._internal.crypto.subtle.Subtle_constanttimecompare.constantTimeCompare(_mac1, _mac2) == ((1 : stdgo.GoInt));
    }
