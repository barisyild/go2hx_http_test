package stdgo._internal.unicode;
function toTitle(_r:stdgo.GoInt32):stdgo.GoInt32 {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L277"
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L278"
            if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                _r = (_r - ((32 : stdgo.GoInt32)) : stdgo.GoInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L281"
            return _r;
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter.go#L283"
        return stdgo._internal.unicode.Unicode_to.to((2 : stdgo.GoInt), _r);
    }
