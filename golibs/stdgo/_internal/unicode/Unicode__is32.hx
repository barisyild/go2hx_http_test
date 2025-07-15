package stdgo._internal.unicode;
function _is32(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_range32.Range32>, _r:stdgo.GoUInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L125"
        if (((_ranges.length) <= (18 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L126"
            if (_ranges != null) for (_i => _ in _ranges) {
                var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotunicodedotunicode_range32dotrange32.__type__stdgodot_internaldotunicodedotUnicode_range32dotRange32 })) : stdgo.Ref<stdgo._internal.unicode.Unicode_range32.Range32>);
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L128"
                if ((_r < (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lo : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L129"
                    return false;
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L131"
                if ((_r <= (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hi : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L132"
                    return (((@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stride == (1u32 : stdgo.GoUInt32)) || ((((_r - (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lo : stdgo.GoUInt32)) % (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stride : stdgo.GoUInt32) == (0u32 : stdgo.GoUInt32)) : Bool);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L135"
            return false;
        };
        var _lo = @:assignType (0 : stdgo.GoInt);
        var _hi = @:assignType (_ranges.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L141"
        while ((_lo < _hi : Bool)) {
            var _m = @:assignType (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = @:assignType (_ranges[(_m : stdgo.GoInt)] : stdgo._internal.unicode.Unicode_range32.Range32);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L144"
            if (((_range_.lo <= _r : Bool) && (_r <= _range_.hi : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L145"
                return ((_range_.stride == (1u32 : stdgo.GoUInt32)) || ((((_r - _range_.lo : stdgo.GoUInt32)) % _range_.stride : stdgo.GoUInt32) == (0u32 : stdgo.GoUInt32)) : Bool);
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L147"
            if ((_r < _range_.lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L153"
        return false;
    }
