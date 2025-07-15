package stdgo._internal.crypto.subtle;
import stdgo._internal.unsafe.Unsafe;
private function _xorLoop__tp__0(_dst:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Void {
        _x = (_x.__slice__(0, (_dst.length)) : stdgo.Slice<stdgo.GoUInt8>);
        _y = (_y.__slice__(0, (_dst.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L61"
        if (_dst != null) for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] ^ _y[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
        };
    }
overload inline extern function _xorLoop(_dst:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.Slice<stdgo.GoUInt8>, _y:stdgo.Slice<stdgo.GoUInt8>):Void _xorLoop__tp__0(_dst, _x, _y);
private function _xorLoop__tp__1(_dst:stdgo.Slice<stdgo.GoUIntptr>, _x:stdgo.Slice<stdgo.GoUIntptr>, _y:stdgo.Slice<stdgo.GoUIntptr>):Void {
        _x = (_x.__slice__(0, (_dst.length)) : stdgo.Slice<stdgo.GoUIntptr>);
        _y = (_y.__slice__(0, (_dst.length)) : stdgo.Slice<stdgo.GoUIntptr>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L61"
        if (_dst != null) for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (_x[(_i : stdgo.GoInt)] ^ _y[(_i : stdgo.GoInt)] : stdgo.GoUIntptr);
        };
    }
overload inline extern function _xorLoop(_dst:stdgo.Slice<stdgo.GoUIntptr>, _x:stdgo.Slice<stdgo.GoUIntptr>, _y:stdgo.Slice<stdgo.GoUIntptr>):Void _xorLoop__tp__1(_dst, _x, _y);
