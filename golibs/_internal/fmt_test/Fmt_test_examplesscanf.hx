package _internal.fmt_test;
function exampleSscanf():Void {
        var _name:stdgo.GoString = ("" : stdgo.GoString), _name__pointer__ = stdgo.Go.pointer(_name);
        var _age:stdgo.GoInt = (0 : stdgo.GoInt), _age__pointer__ = stdgo.Go.pointer(_age);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(("Kim is 22 years old" : stdgo.GoString), ("%s is %d years old" : stdgo.GoString), new stdgo.AnyInterface(_name__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_age__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L70"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L71"
            throw ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/example_test.go#L73"
        stdgo._internal.fmt.Fmt_printf.printf(("%d: %s, %d\n" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_age, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }
