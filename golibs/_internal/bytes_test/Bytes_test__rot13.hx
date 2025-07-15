package _internal.bytes_test;
function _rot13(_r:stdgo.GoInt32):stdgo.GoInt32 {
        {};
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1058"
        if (((_r >= (97 : stdgo.GoInt32) : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1059"
            return ((((((_r - (97 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (97 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1061"
        if (((_r >= (65 : stdgo.GoInt32) : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1062"
            return ((((((_r - (65 : stdgo.GoInt32) : stdgo.GoInt32) + (13 : stdgo.GoInt32) : stdgo.GoInt32)) % (26 : stdgo.GoInt32) : stdgo.GoInt32)) + (65 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1064"
        return _r;
    }
