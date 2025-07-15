package _internal.reflect_test;
var _mapInterface : stdgo.AnyInterface = new stdgo.AnyInterface(({
    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
    {};
    x;
} : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })));
