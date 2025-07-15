package _internal.reflect_test;
function testCallReturnsEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2196"
        stdgo._internal.runtime.Runtime_gc.gC();
        var _finalized:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _finalized__pointer__ = stdgo.Go.pointer(_finalized);
        var _f = @:assignType (function():{ var _0 : _internal.reflect_test.Reflect_test_t_emptystruct.T_emptyStruct; var _1 : stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>; } {
            var _i = (stdgo.Go.setRef(new stdgo.GoArray<stdgo.GoInt64>(2, 2).__setNumber64__(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, 2) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2200"
            stdgo._internal.runtime.Runtime_setfinalizer.setFinalizer(new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, 2) }))), new stdgo.AnyInterface(function(_0:stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>):Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2200"
                stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32(_finalized__pointer__, (1u32 : stdgo.GoUInt32));
            }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, 2) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2201"
            return { _0 : (new _internal.reflect_test.Reflect_test_t_emptystruct.T_emptyStruct() : _internal.reflect_test.Reflect_test_t_emptystruct.T_emptyStruct), _1 : _i };
        } : () -> { var _0 : _internal.reflect_test.Reflect_test_t_emptystruct.T_emptyStruct; var _1 : stdgo.Ref<stdgo.GoArray<stdgo.GoInt64>>; });
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_emptystructdott_emptystruct.__type___internaldotreflect_testdotReflect_test_t_emptystructdotT_emptyStruct, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, 2) })] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)] : stdgo._internal.reflect.Reflect_value.Value);
        var _timeout = stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_duration.Duration));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2205"
        while (stdgo._internal.sync.atomic_.Atomic__loaduint32.loadUint32(_finalized__pointer__) == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2206"
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _timeout;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2208"
                                _t.fatal(new stdgo.AnyInterface(("finalizer did not run" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2211"
            stdgo._internal.runtime.Runtime_gosched.gosched();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2212"
            stdgo._internal.runtime.Runtime_gc.gC();
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2214"
        stdgo._internal.runtime.Runtime_keepalive.keepAlive(new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
    }
