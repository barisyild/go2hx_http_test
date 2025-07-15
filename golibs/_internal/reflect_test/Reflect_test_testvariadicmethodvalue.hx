package _internal.reflect_test;
function testVariadicMethodValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = @:assignType (new _internal.reflect_test.Reflect_test_point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point);
        var _points = (new stdgo.Slice<_internal.reflect_test.Reflect_test_point.Point>(3, 3, ...[(new _internal.reflect_test.Reflect_test_point.Point((20 : stdgo.GoInt), (21 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point), (new _internal.reflect_test.Reflect_test_point.Point((22 : stdgo.GoInt), (23 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point), (new _internal.reflect_test.Reflect_test_point.Point((24 : stdgo.GoInt), (25 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_point.Point)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_point.Point>);
        var _want = @:assignType (_p.totalDist(_points[(0 : stdgo.GoInt)], _points[(1 : stdgo.GoInt)], _points[(2 : stdgo.GoInt)]) : stdgo.GoInt64);
        var _tfunc = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : (_internal.reflect_test.Reflect_test_point.Point, haxe.Rest<_internal.reflect_test.Reflect_test_point.Point>) -> stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2667"
        {
            var _tt = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((4 : stdgo.GoInt)).type : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2668"
                _t.errorf(("Variadic Method Type from TypeOf is %s; want %s" : stdgo.GoString), ({
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
        _tfunc = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : haxe.Rest<_internal.reflect_test.Reflect_test_point.Point> -> stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))));
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((4 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2674"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2675"
                _t.errorf(("Variadic Method Type is %s; want %s" : stdgo.GoString), ({
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
        var _i = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(3, 3, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_points[(0 : stdgo.GoInt)], _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint)))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_points[(1 : stdgo.GoInt)], _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint)))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_points[(2 : stdgo.GoInt)], _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint)))?.__copy__()].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2678"
        if (_i != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2679"
            _t.errorf(("Variadic Method returned %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(_v.interface_()).callSlice((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_points, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint }))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2682"
        if (_i != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2683"
            _t.errorf(("Variadic Method CallSlice returned %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        var _f = (stdgo.Go.typeAssert(_v.interface_(), stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : haxe.Rest<_internal.reflect_test.Reflect_test_point.Point> -> stdgo.GoInt);
        _i = (_f(_points[(0 : stdgo.GoInt)], _points[(1 : stdgo.GoInt)], _points[(2 : stdgo.GoInt)]) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2688"
        if (_i != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2689"
            _t.errorf(("Variadic Method Interface returned %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _i = (_f(...(_points : Array<_internal.reflect_test.Reflect_test_point.Point>)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2692"
        if (_i != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2693"
            _t.errorf(("Variadic Method Interface Slice returned %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
    }
