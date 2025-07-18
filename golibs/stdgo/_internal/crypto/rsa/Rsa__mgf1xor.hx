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
function _mgf1XOR(_out:stdgo.Slice<stdgo.GoUInt8>, _hash:stdgo._internal.hash.Hash_hash.Hash, _seed:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _counter:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        var _digest:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _done = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L459"
        while ((_done < (_out.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L460"
            _hash.write(_seed);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L461"
            _hash.write((_counter.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _digest = _hash.sum((_digest.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L463"
            _hash.reset();
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L465"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while (((_i < (_digest.length) : Bool) && (_done < (_out.length) : Bool) : Bool)) {
                    _out[(_done : stdgo.GoInt)] = (_out[(_done : stdgo.GoInt)] ^ (_digest[(_i : stdgo.GoInt)]) : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L467"
                    _done++;
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rsa/rsa.go#L469"
            stdgo._internal.crypto.rsa.Rsa__inccounter._incCounter((stdgo.Go.setRef(_counter, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 4) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>));
        };
    }
