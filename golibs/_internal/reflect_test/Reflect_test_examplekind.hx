package _internal.reflect_test;
function exampleKind():Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L17"
        if ((new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[new stdgo.AnyInterface(("hi" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((42 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(function():Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))]) : stdgo.Slice<stdgo.AnyInterface>) != null) for (__1 => _v in (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[new stdgo.AnyInterface(("hi" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((42 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(function():Void {}, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))]) : stdgo.Slice<stdgo.AnyInterface>)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L18"
            {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                {
                    final __value__ = _v.kind();
                    if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L20"
                        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((_v.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L22"
                        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_v.int_(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L24"
                        stdgo._internal.fmt.Fmt_printf.printf(("unhandled kind %s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_v.kind(), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind)));
                    };
                };
            };
        };
    }
