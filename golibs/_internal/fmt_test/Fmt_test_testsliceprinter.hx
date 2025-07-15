package _internal.fmt_test;
function testSlicePrinter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _slice = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _s = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_slice, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1550"
        if (_s != (("[]" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1551"
            _t.errorf(("empty slice printed as %q not %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("[]" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _slice = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _s = stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface(_slice, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1555"
        if (_s != (("[1 2 3]" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1556"
            _t.errorf(("slice: got %q expected %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("[1 2 3]" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        _s = stdgo._internal.fmt.Fmt_sprint.sprint(new stdgo.AnyInterface((stdgo.Go.setRef(_slice, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }))))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1559"
        if (_s != (("&[1 2 3]" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1560"
            _t.errorf(("&slice: got %q expected %q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("&[1 2 3]" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
