package _internal.reflect_test;
function benchmarkPtrTo(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        var _t = @:assignType (stdgo._internal.reflect.Reflect_sliceof.sliceOf(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_t_benchmarkptrto___localname___t_5204.T_benchmarkPtrTo___localname___T_5204() : _internal.reflect_test.Reflect_test_t_benchmarkptrto___localname___t_5204.T_benchmarkPtrTo___localname___T_5204), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkptrto___localname___t_5204dott_benchmarkptrto___localname___t_5204.__type___internaldotreflect_testdotReflect_test_t_benchmarkptrto___localname___t_5204dotT_benchmarkPtrTo___localname___T_5204), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_benchmarkptrto___localname___t_5204dott_benchmarkptrto___localname___t_5204.__type___internaldotreflect_testdotReflect_test_t_benchmarkptrto___localname___t_5204dotT_benchmarkPtrTo___localname___T_5204)))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _ptrToThis = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(({
            final __t__ = _t;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).elem().fieldByName(("PtrToThis" : stdgo.GoString))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L251"
        if (!_ptrToThis.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L252"
            _b.skipf(("%v has no ptrToThis field; was it removed from rtype?" : stdgo.GoString), ({
                final __t__ = _t;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L255"
        if (_ptrToThis.int_() != ((0i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L256"
            _b.fatalf(("%v.ptrToThis unexpectedly nonzero" : stdgo.GoString), ({
                final __t__ = _t;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L258"
        _b.resetTimer();
        //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L262"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L263"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/benchmark_test.go#L264"
                stdgo._internal.reflect.Reflect_pointerto.pointerTo(_t);
            };
        });
    }
