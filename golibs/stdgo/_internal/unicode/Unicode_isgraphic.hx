package stdgo._internal.unicode;
function isGraphic(_r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic.go#L39"
        if (((_r : stdgo.GoUInt32) <= (255u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/graphic.go#L40"
            return (stdgo._internal.unicode.Unicode__properties._properties[((_r : stdgo.GoUInt8) : stdgo.GoInt)] & (144 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic.go#L42"
        return stdgo._internal.unicode.Unicode_in_.in_(_r, ...(stdgo._internal.unicode.Unicode_graphicranges.graphicRanges : Array<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>));
    }
