package _internal.fmt_test;
function exampleStringer():Void {
        var _a = @:assignType ({ name : ("Gopher" : stdgo.GoString), age : (2u32 : stdgo.GoUInt) } : _internal.fmt_test.Fmt_test_animal.Animal);
        //"file:///Users/o/.go/go1.21.3/src/fmt/stringer_example_test.go#L27"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo.Go.asInterface(_a, _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_animaldotanimal.__type___internaldotfmt_testdotFmt_test_animaldotAnimal), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_animaldotanimal.__type___internaldotfmt_testdotFmt_test_animaldotAnimal)));
    }
