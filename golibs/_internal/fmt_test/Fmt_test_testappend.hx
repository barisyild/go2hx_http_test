package _internal.fmt_test;
function testAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, _b.__copyTo__(("hello " : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        var _got = stdgo._internal.fmt.Fmt_append.append(_b, new stdgo.AnyInterface(("world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((", " : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((23 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1930"
        if ((_got : stdgo.GoString) != (("hello world, 23" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1931"
            _t.fatalf(("Append returns %q not %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(("hello world, 23" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1933"
        if (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_got[(0 : stdgo.GoInt)]))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1934"
            _t.fatalf(("Append allocated a new slice" : stdgo.GoString));
        };
    }
