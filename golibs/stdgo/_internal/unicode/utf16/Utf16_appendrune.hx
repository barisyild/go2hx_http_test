package stdgo._internal.unicode.utf16;
function appendRune(_a:stdgo.Slice<stdgo.GoUInt16>, _r:stdgo.GoInt32):stdgo.Slice<stdgo.GoUInt16> {
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf16/utf16.go#L91"
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (55296 : stdgo.GoInt32) : Bool) : Bool) || (((57344 : stdgo.GoInt32) <= _r : Bool) && (_r < (65536 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf16/utf16.go#L94"
            return (_a.__append__((_r : stdgo.GoUInt16)) : stdgo.Slice<stdgo.GoUInt16>);
        } else if ((((65536 : stdgo.GoInt32) <= _r : Bool) && (_r <= (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf16.Utf16_encoderune.encodeRune(_r), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/unicode/utf16/utf16.go#L98"
            return (_a.__append__((_r1 : stdgo.GoUInt16), (_r2 : stdgo.GoUInt16)) : stdgo.Slice<stdgo.GoUInt16>);
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/utf16/utf16.go#L100"
        return (_a.__append__((65533 : stdgo.GoUInt16)) : stdgo.Slice<stdgo.GoUInt16>);
    }
