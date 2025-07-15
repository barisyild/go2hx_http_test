package stdgo._internal.internal.itoa;
function itoa(_val:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/internal/itoa/itoa.go#L11"
        if ((_val < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/itoa/itoa.go#L12"
            return (("-" : stdgo.GoString) + stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((-_val : stdgo.GoUInt))?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/itoa/itoa.go#L14"
        return stdgo._internal.internal.itoa.Itoa_uitoa.uitoa((_val : stdgo.GoUInt))?.__copy__();
    }
