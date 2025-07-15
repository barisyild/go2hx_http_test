package _internal.reflect_test;
function testMethodValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = @:assignType (new _internal.reflect_test.Reflect_test_point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point);
        var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2555"
        {
            var __0 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_point.Point((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value), __1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_point.Point((2 : stdgo.GoInt), (2 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
var _p2 = __1, _p1 = __0;
            if (_p1.pointer() != (_p2.pointer())) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2556"
                _t.errorf(("methodValueCall mismatched: %v - %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_p1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(stdgo.Go.asInterface(_p2, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
        };
        var _tfunc = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.GoInt -> stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2562"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2563"
                _t.errorf(("Value Method Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((10 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2566"
        if (_i != ((250i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2567"
            _t.errorf(("Value Method returned %d; want 250" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2570"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2571"
                _t.errorf(("Value MethodByName Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((11 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2574"
        if (_i != ((275i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2575"
            _t.errorf(("Value MethodByName returned %d; want 275" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2578"
        stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2579"
        (stdgo.Go.typeAssert(_v.interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : () -> Void)();
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).method((1 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2583"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2584"
                _t.errorf(("Pointer Value Method Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((12 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2587"
        if (_i != ((300i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2588"
            _t.errorf(("Pointer Value Method returned %d; want 300" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2591"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2592"
                _t.errorf(("Pointer Value MethodByName Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((13 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2595"
        if (_i != ((325i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2596"
            _t.errorf(("Pointer Value MethodByName returned %d; want 325" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2599"
        stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2600"
        (stdgo.Go.typeAssert(_v.interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : () -> Void)();
        var _pp = (stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>);
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_pp), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint }) })))).elem().method((1 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2605"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2606"
                _t.errorf(("Pointer Pointer Value Method Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((14 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2609"
        if (_i != ((350i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2610"
            _t.errorf(("Pointer Pointer Value Method returned %d; want 350" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_pp), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint }) })))).elem().methodByName(("Dist" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2613"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2614"
                _t.errorf(("Pointer Pointer Value MethodByName Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((15 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2617"
        if (_i != ((375i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2618"
            _t.errorf(("Pointer Pointer Value MethodByName returned %d; want 375" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        var _s = ({ x : stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint) } : _internal.reflect_test.Reflect_test_t__struct_96.T__struct_96);
        var _pv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_s, stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("dist", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("dist", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]) }, optional : false }])))).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _v = _pv.method((0 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2632"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2633"
                _t.errorf(("Interface Method Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((16 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2636"
        if (_i != ((400i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2637"
            _t.errorf(("Interface Method returned %d; want 400" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = _pv.methodByName(("Dist" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2640"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2641"
                _t.errorf(("Interface MethodByName Type is %s; want %s" : stdgo.GoString), ({
                    final __t__ = _tt;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _tfunc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((17 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2644"
        if (_i != ((425i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2645"
            _t.errorf(("Interface MethodByName returned %d; want 425" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        var _m64 = @:assignType (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("Int64Method" : stdgo.GoString)).interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int64_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int64_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt64 -> stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2651"
        {
            var _x = @:assignType (_m64((123i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            if (_x != ((123i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2652"
                _t.errorf(("Int64Method returned %d; want 123" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        var _m32 = @:assignType (stdgo.Go.typeAssert(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("Int32Method" : stdgo.GoString)).interface_(), stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int32_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int32_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : stdgo.GoInt32 -> stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2655"
        {
            var _x = @:assignType (_m32((456 : stdgo.GoInt32)) : stdgo.GoInt32);
            if (_x != ((456 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2656"
                _t.errorf(("Int32Method returned %d; want 456" : stdgo.GoString), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
            };
        };
    }
