package stdgo._internal.unicode;
function _isExcludingLatin(_rangeTab:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>, _r:stdgo.GoInt32):Bool {
        var _r16 = (@:checkr _rangeTab ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r16;
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L173"
        {
            var _off = @:assignType ((@:checkr _rangeTab ?? throw stdgo.Error._nullPointerDereference.__underlying__()).latinOffset : stdgo.GoInt);
            if ((((_r16.length) > _off : Bool) && ((_r : stdgo.GoUInt32) <= (_r16[((_r16.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].hi : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L174"
                return stdgo._internal.unicode.Unicode__is16._is16((_r16.__slice__(_off) : stdgo.Slice<stdgo._internal.unicode.Unicode_range16.Range16>), (_r : stdgo.GoUInt16));
            };
        };
        var _r32 = (@:checkr _rangeTab ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r32;
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L177"
        if ((((_r32.length) > (0 : stdgo.GoInt) : Bool) && (_r >= (_r32[(0 : stdgo.GoInt)].lo : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L178"
            return stdgo._internal.unicode.Unicode__is32._is32(_r32, (_r : stdgo.GoUInt32));
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L180"
        return false;
    }
