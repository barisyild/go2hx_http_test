package _internal.fmt_test;
function testScanlnNoNewline(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a:stdgo.GoInt = (0 : stdgo.GoInt), _a__pointer__ = stdgo.Go.pointer(_a);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(("1 x\n" : stdgo.GoString), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L752"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L753"
            _t.error(new stdgo.AnyInterface(("expected error scanning string missing newline" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("newline" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L755"
            _t.errorf(("expected newline error scanning string missing newline, got: %s" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
