package stdgo._internal.internal.bytealg;
function indexRabinKarp(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg_hashstr.hashStr(_substr?.__copy__()), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _n = @:assignType (_substr.length : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L134"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L137"
        if (((_h == _hashss) && ((_s.__slice__(0, _n) : stdgo.GoString) == _substr) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L138"
            return (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L140"
        {
            var _i = @:assignType (_n : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h - ((_pow * (_s[(_i - _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L144"
                _i++;
                //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L145"
                if (((_h == _hashss) && ((_s.__slice__((_i - _n : stdgo.GoInt), _i) : stdgo.GoString) == _substr) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L146"
                    return (_i - _n : stdgo.GoInt);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/bytealg/bytealg.go#L149"
        return (-1 : stdgo.GoInt);
    }
