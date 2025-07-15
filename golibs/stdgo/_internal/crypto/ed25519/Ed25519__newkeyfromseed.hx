package stdgo._internal.crypto.ed25519;
import stdgo._internal.crypto.rand.Rand;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.crypto.sha512.Sha512;
import stdgo._internal.crypto.internal.edwards25519.Edwards25519;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.subtle.Subtle;
function _newKeyFromSeed(_privateKey:stdgo.Slice<stdgo.GoUInt8>, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L167"
        {
            var _l = @:assignType (_seed.length : stdgo.GoInt);
            if (_l != ((32 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L168"
                throw new stdgo.AnyInterface((("ed25519: bad seed length: " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa(_l)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        var _h = stdgo._internal.crypto.sha512.Sha512_sum512.sum512(_seed)?.__copy__();
        var __tmp__ = stdgo._internal.crypto.internal.edwards25519.Edwards25519_newscalar.newScalar().setBytesWithClamping((_h.__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _s:stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_scalar.Scalar> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L173"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L174"
            throw new stdgo.AnyInterface(("ed25519: internal error: setting scalar failed" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var a = (stdgo.Go.setRef((new stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point() : stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodotinternaldotedwards25519dotedwards25519_pointdotpoint.__type__stdgodot_internaldotcryptodotinternaldotedwards25519dotEdwards25519_pointdotPoint })) : stdgo.Ref<stdgo._internal.crypto.internal.edwards25519.Edwards25519_point.Point>).scalarBaseMult(_s);
        var _publicKey = a.bytes();
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L180"
        _privateKey.__copyTo__(_seed);
        //"file:///Users/o/.go/go1.21.3/src/crypto/ed25519/ed25519.go#L181"
        (_privateKey.__slice__((32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_publicKey);
    }
