package _internal.reflect_test;
function testMakeFuncStackCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _target = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6675"
            stdgo._internal.runtime.Runtime_gc.gC();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6676"
            _internal.reflect_test.Reflect_test__usestack._useStack((16 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6677"
            return (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((9 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        };
        var _concrete:(stdgo.Pointer<stdgo.GoInt>, stdgo.GoInt) -> stdgo.GoInt = null, _concrete__pointer__ = stdgo.Go.pointer(_concrete);
        var _fn = @:assignType (stdgo._internal.reflect.Reflect_makefunc.makeFunc(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_concrete, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }), stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).type(), _target)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6682"
        stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_concrete__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }), stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) })))).elem().set(_fn?.__copy__());
        var _x = @:assignType (_concrete((null : stdgo.Pointer<stdgo.GoInt>), (7 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6684"
        if (_x != ((9 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6685"
            _t.errorf(("have %#q want 9" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
