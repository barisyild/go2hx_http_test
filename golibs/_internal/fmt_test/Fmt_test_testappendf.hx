package _internal.fmt_test;
function testAppendf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_b.__slice__(0, _b.__copyTo__(("hello " : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        var _got = stdgo._internal.fmt.Fmt_appendf.appendf(_b, ("world, %d" : stdgo.GoString), new stdgo.AnyInterface((23 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1918"
        if ((_got : stdgo.GoString) != (("hello world, 23" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1919"
            _t.fatalf(("Appendf returns %q not %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(("hello world, 23" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1921"
        if (stdgo.Go.pointer(_b[(0 : stdgo.GoInt)]) != (stdgo.Go.pointer(_got[(0 : stdgo.GoInt)]))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1922"
            _t.fatalf(("Appendf allocated a new slice" : stdgo.GoString));
        };
    }
