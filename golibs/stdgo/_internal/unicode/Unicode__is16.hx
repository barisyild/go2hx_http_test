package stdgo._internal.unicode;
function _is16(_ranges:stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>, _r:stdgo.GoUInt16):Bool {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L92"
        if ((((_ranges.length) <= (18 : stdgo.GoInt) : Bool) || (_r <= (255 : stdgo.GoUInt16) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L93"
            if (_ranges != null) for (_i => _ in _ranges) {
                var _range_ = (stdgo.Go.setRef(_ranges[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotunicodedotunicode_range16dotrange16.__type__stdgodot_internaldotunicodedotUnicode_range16dotRange16 })) : stdgo.Ref<stdgo._internal.unicode.Unicode_range16.Range16>);
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L95"
                if ((_r < (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lo : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L96"
                    return false;
                };
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L98"
                if ((_r <= (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hi : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L99"
                    return (((@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stride == (1 : stdgo.GoUInt16)) || ((((_r - (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lo : stdgo.GoUInt16)) % (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stride : stdgo.GoUInt16) == (0 : stdgo.GoUInt16)) : Bool);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L102"
            return false;
        };
        var _lo = @:assignType (0 : stdgo.GoInt);
        var _hi = @:assignType (_ranges.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L108"
        while ((_lo < _hi : Bool)) {
            var _m = @:assignType (_lo + (((_hi - _lo : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
            var _range_ = (stdgo.Go.setRef(_ranges[(_m : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotunicodedotunicode_range16dotrange16.__type__stdgodot_internaldotunicodedotUnicode_range16dotRange16 })) : stdgo.Ref<stdgo._internal.unicode.Unicode_range16.Range16>);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L111"
            if ((((@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lo <= _r : Bool) && (_r <= (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).hi : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L112"
                return (((@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stride == (1 : stdgo.GoUInt16)) || ((((_r - (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lo : stdgo.GoUInt16)) % (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stride : stdgo.GoUInt16) == (0 : stdgo.GoUInt16)) : Bool);
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L114"
            if ((_r < (@:checkr _range_ ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L120"
        return false;
    }
