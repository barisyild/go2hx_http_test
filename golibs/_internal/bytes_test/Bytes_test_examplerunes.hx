package _internal.bytes_test;
function exampleRunes():Void {
        var _rs = stdgo._internal.bytes.Bytes_runes.runes(((("go gopher" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L444"
        if (_rs != null) for (__0 => _r in _rs) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L445"
            stdgo._internal.fmt.Fmt_printf.printf(("%#U\n" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
        };
    }
