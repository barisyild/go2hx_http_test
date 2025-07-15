package _internal.fmt_test;
function testScanlnWithMiddleNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newreader.newReader(("123\n456\n" : stdgo.GoString));
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _b:stdgo.GoInt = (0 : stdgo.GoInt), _b__pointer__ = stdgo.Go.pointer(_b), _a__pointer__ = stdgo.Go.pointer(_a);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_b__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L763"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L764"
            _t.error(new stdgo.AnyInterface(("expected error scanning string with extra newline" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("newline" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L766"
            _t.errorf(("expected newline error scanning string with extra newline, got: %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
