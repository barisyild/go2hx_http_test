package _internal.reflect_test;
function testDeepEqualAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1276"
        if (_internal.reflect_test.Reflect_test__deepequalperftests._deepEqualPerfTests != null) for (__1 => _tt in _internal.reflect_test.Reflect_test__deepequalperftests._deepEqualPerfTests) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1277"
            _t.run((stdgo._internal.reflect.Reflect_valueof.valueOf(_tt._x).type().string() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var _got = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1279"
                    if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_tt._x, _tt._y)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1280"
                        _t.errorf(("DeepEqual(%v, %v)=false" : stdgo.GoString), _tt._x, _tt._y);
                    };
                }) : stdgo.GoFloat64);
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1283"
                if ((_got : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1284"
                    _t.errorf(("DeepEqual(%v, %v) allocated %d times" : stdgo.GoString), _tt._x, _tt._y, new stdgo.AnyInterface((_got : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            });
        };
    }
