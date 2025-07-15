package _internal.reflect_test;
function testMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p = @:assignType (new _internal.reflect_test.Reflect_test_point.Point((3 : stdgo.GoInt), (4 : stdgo.GoInt)) : _internal.reflect_test.Reflect_test_point.Point);
        var _i = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((1 : stdgo.GoInt)).func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint)))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((10 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2428"
        if (_i != ((250i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2429"
            _t.errorf(("Type Method returned %d; want 250" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        var __tmp__ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).methodByName(("Dist" : stdgo.GoString)), _m:stdgo._internal.reflect.Reflect_method.Method = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2433"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2434"
            _t.fatalf(("method by name failed" : stdgo.GoString));
        };
        _i = _m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint)))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((11 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2437"
        if (_i != ((275i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2438"
            _t.errorf(("Type MethodByName returned %d; want 275" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).methodByName(("NoArgs" : stdgo.GoString));
            _m = @:tmpset0 __tmp__._0?.__copy__();
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2442"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2443"
            _t.fatalf(("method by name failed" : stdgo.GoString));
        };
        var _n = @:assignType (_m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>)).length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2446"
        if (_n != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2447"
            _t.errorf(("NoArgs returned %d values; want 0" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        _i = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).method((1 : stdgo.GoInt)).func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint }))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((12 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2451"
        if (_i != ((300i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2452"
            _t.errorf(("Pointer Type Method returned %d; want 300" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("Dist" : stdgo.GoString));
            _m = @:tmpset0 __tmp__._0?.__copy__();
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2456"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2457"
            _t.fatalf(("ptr method by name failed" : stdgo.GoString));
        };
        _i = _m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint }))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((13 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2460"
        if (_i != ((325i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2461"
            _t.errorf(("Pointer Type MethodByName returned %d; want 325" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("NoArgs" : stdgo.GoString));
            _m = @:tmpset0 __tmp__._0?.__copy__();
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2465"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2466"
            _t.fatalf(("method by name failed" : stdgo.GoString));
        };
        _n = (_m.func.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint }))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>)).length);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2469"
        if (_n != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2470"
            _t.errorf(("NoArgs returned %d values; want 0" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("AA" : stdgo.GoString));
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2474"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2475"
            _t.errorf(("MethodByName(\"AA\") should have failed" : stdgo.GoString));
        };
        {
            var __tmp__ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("ZZ" : stdgo.GoString));
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2479"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2480"
            _t.errorf(("MethodByName(\"ZZ\") should have failed" : stdgo.GoString));
        };
        var _tfunc = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((null : stdgo.GoInt -> stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).method((1 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2486"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2487"
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
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((14 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2490"
        if (_i != ((350i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2491"
            _t.errorf(("Value Method returned %d; want 350" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2494"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2495"
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
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((15 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2498"
        if (_i != ((375i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2499"
            _t.errorf(("Value MethodByName returned %d; want 375" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2502"
        _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).method((1 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2506"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2507"
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
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((16 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2510"
        if (_i != ((400i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2511"
            _t.errorf(("Pointer Value Method returned %d; want 400" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("Dist" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2514"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2515"
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
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((17 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2518"
        if (_i != ((425i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2519"
            _t.errorf(("Pointer Value MethodByName returned %d; want 425" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })) : stdgo.Ref<_internal.reflect_test.Reflect_test_point.Point>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint })))).methodByName(("NoArgs" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2522"
        _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        var _x:_internal.reflect_test.Reflect_test_t__interface_8.T__interface_8 = stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_pointdotpoint.__type___internaldotreflect_testdotReflect_test_pointdotPoint);
        var _pv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(({
            final __t__ = (stdgo.Go.setRef(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("dist", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__interface_8.T__interface_8>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("dist", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]) }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        _v = _pv.method((0 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2533"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2534"
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
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((18 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2537"
        if (_i != ((450i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2538"
            _t.errorf(("Interface Method returned %d; want 450" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
        _v = _pv.methodByName(("Dist" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2541"
        {
            var _tt = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            if (!((_tt.string() : String) == (_tfunc.string() : String))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2542"
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
        _i = _v.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((19 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>))[(0 : stdgo.GoInt)].int_();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2545"
        if (_i != ((475i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2546"
            _t.errorf(("Interface MethodByName returned %d; want 475" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
        };
    }
