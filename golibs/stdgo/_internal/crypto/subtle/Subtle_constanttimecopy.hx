package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
function constantTimeCopy(_v:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L45"
        if ((_x.length) != ((_y.length))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L46"
            throw new stdgo.AnyInterface(("subtle: slices have different lengths" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _xmask = @:assignType ((_v - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
        var _ymask = @:assignType (-1 ^ ((_v - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/constant_time.go#L51"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _x[(_i : stdgo.GoInt)] = ((_x[(_i : stdgo.GoInt)] & _xmask : stdgo.GoUInt8) | (_y[(_i : stdgo.GoInt)] & _ymask : stdgo.GoUInt8) : stdgo.GoUInt8);
                _i++;
            };
        };
    }
