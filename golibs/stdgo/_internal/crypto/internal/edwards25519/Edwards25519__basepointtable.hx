package stdgo._internal.crypto.internal.edwards25519;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.subtle.Subtle;
function _basepointTable():stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>> {
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L12"
        stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._initOnce.do_(function():Void {
            var _p = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newgeneratorpoint.newGeneratorPoint();
            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L14"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (32 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L15"
                    stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._table[(_i : stdgo.GoInt)].fromP3(_p);
//"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L16"
                    {
                        var _j = @:assignType (0 : stdgo.GoInt);
                        while ((_j < (8 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L17"
                            _p.add(_p, _p);
                            _j++;
                        };
                    };
                    _i++;
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/edwards25519/scalarmult.go#L21"
        return (stdgo.Go.setRef(stdgo._internal.crypto.internal.edwards25519.Edwards25519__basepointtableprecomp._basepointTablePrecomp._table, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_t_affinelookuptabledott_affinelookuptable.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_t_affinelookuptabledotT_affineLookupTable }, 32) })) : stdgo.Ref<stdgo.GoArray<stdgo._internal.crypto.internal.edwards25519.Edwards25519_t_affinelookuptable.T_affineLookupTable>>);
    }
