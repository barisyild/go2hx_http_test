package stdgo._internal.crypto.internal.boring.bbig;
import stdgo._internal.unsafe.Unsafe;
function dec(_b:stdgo._internal.crypto.internal.boring.Boring_bigint.BigInt):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L25"
        if (_b == null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L26"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L28"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L29"
            return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        var _x = stdgo._internal.unsafe.Unsafe_slice.slice(new stdgo.Pointer<stdgo._internal.math.big.Big_word.Word>(() -> (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]).value : stdgo._internal.math.big.Big_word.Word), v -> (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]).value = (v : stdgo.GoUInt) : stdgo._internal.math.big.Big_word.Word)), (_b.length));
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/boring/bbig/big.go#L32"
        return (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setBits(_x);
    }
