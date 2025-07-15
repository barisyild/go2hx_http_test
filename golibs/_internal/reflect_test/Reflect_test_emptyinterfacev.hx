package _internal.reflect_test;
function emptyInterfaceV(_x:stdgo.AnyInterface):stdgo._internal.reflect.Reflect_value.Value {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4087"
        return stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_x), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))).elem()?.__copy__();
    }
