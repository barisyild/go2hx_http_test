package _internal.reflect_test;
function testCallArgLive(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var f = @:assignType (function(_t:_internal.reflect_test.Reflect_test_t_testcallarglive___localname___t_173836.T_testCallArgLive___localname___T_173836):Void {
            _t.x.value = ("ok" : stdgo.GoString);
        } : _internal.reflect_test.Reflect_test_t_testcallarglive___localname___t_173836.T_testCallArgLive___localname___T_173836 -> Void);
        stdgo._internal.reflect.Reflect_callgc.callGC.value = true;
        var _x = stdgo.Go.pointer(("" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6660"
        stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(function(_p:stdgo.Pointer<stdgo.GoString>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6661"
            if (_p.value != (("ok" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6662"
                _t.errorf(("x dead prematurely" : stdgo.GoString));
            };
        }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
        var _v = @:assignType (new _internal.reflect_test.Reflect_test_t_testcallarglive___localname___t_173836.T_testCallArgLive___localname___T_173836(_x, (null : stdgo.Pointer<stdgo.GoString>)) : _internal.reflect_test.Reflect_test_t_testcallarglive___localname___t_173836.T_testCallArgLive___localname___T_173836);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6667"
        stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testcallarglive___localname___t_173836dott_testcallarglive___localname___t_173836.__type___internaldotreflect_testdotReflect_test_t_testcallarglive___localname___t_173836dotT_testCallArgLive___localname___T_173836] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testcallarglive___localname___t_173836dott_testcallarglive___localname___t_173836.__type___internaldotreflect_testdotReflect_test_t_testcallarglive___localname___t_173836dotT_testCallArgLive___localname___T_173836), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testcallarglive___localname___t_173836dott_testcallarglive___localname___t_173836.__type___internaldotreflect_testdotReflect_test_t_testcallarglive___localname___t_173836dotT_testCallArgLive___localname___T_173836)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        stdgo._internal.reflect.Reflect_callgc.callGC.value = false;
    }
