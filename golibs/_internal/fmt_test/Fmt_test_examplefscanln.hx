package _internal.fmt_test;
function exampleFscanln():Void {
        var _s = @:assignType (("dmr 1771 1.61803398875\n\tken 271828 3.14159" : stdgo.GoString) : stdgo.GoString);
        var _r = stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__());
        var _a:stdgo.GoString = ("" : stdgo.GoString), _a__pointer__ = stdgo.Go.pointer(_a);
        var _b:stdgo.GoInt = (0 : stdgo.GoInt), _b__pointer__ = stdgo.Go.pointer(_b);
        var _c:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _c__pointer__ = stdgo.Go.pointer(_c);
        //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L51"
        while (true) {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })), new stdgo.AnyInterface(_a__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_b__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_c__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L53"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L54"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L56"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L57"
                throw ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                });
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L59"
            stdgo._internal.fmt.Fmt_printf.printf(("%d: %s, %d, %f\n" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
