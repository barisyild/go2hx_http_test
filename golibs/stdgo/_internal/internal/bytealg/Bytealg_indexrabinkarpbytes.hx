package stdgo._internal.internal.bytealg;
function indexRabinKarpBytes(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg_hashstrbytes.hashStrBytes(_sep), _hashsep:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _n = @:assignType (_sep.length : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L109"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L112"
        if (((_h == _hashsep) && stdgo._internal.internal.bytealg.Bytealg_equal.equal((_s.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L113"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L115"
        {
            var _i = @:assignType (_n : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h - ((_pow * (_s[(_i - _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L119"
                _i++;
                //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L120"
                if (((_h == _hashsep) && stdgo._internal.internal.bytealg.Bytealg_equal.equal((_s.__slice__((_i - _n : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L121"
                    return (_i - _n : stdgo.GoInt);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L124"
        return (-1 : stdgo.GoInt);
    }
