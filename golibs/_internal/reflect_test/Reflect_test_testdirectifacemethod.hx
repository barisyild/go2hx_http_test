package _internal.reflect_test;
function testDirectIfaceMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = @:assignType (42 : stdgo.GoInt);
        var _x__pointer__ = stdgo.Go.pointer(_x);
        var _v = @:assignType (new _internal.reflect_test.Reflect_test_directifacet.DirectIfaceT(_x__pointer__) : _internal.reflect_test.Reflect_test_directifacet.DirectIfaceT);
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var __tmp__ = _typ.methodByName(("M" : stdgo.GoString)), _m:stdgo._internal.reflect.Reflect_method.Method = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2708"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2709"
            _t.fatalf(("cannot find method M" : stdgo.GoString));
        };
        var _in = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT)))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        var _out = _m.func.call(_in);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2713"
        {
            var _got = @:assignType (_out[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_got != ((42i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2714"
                _t.errorf(("Call with value receiver got %d, want 42" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        var _pv = (stdgo.Go.setRef(_v, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT })) : stdgo.Ref<_internal.reflect_test.Reflect_test_directifacet.DirectIfaceT>);
        _typ = stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_pv, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT }))));
        {
            var __tmp__ = _typ.methodByName(("M" : stdgo.GoString));
            _m = @:tmpset0 __tmp__._0?.__copy__();
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2720"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2721"
            _t.fatalf(("cannot find method M" : stdgo.GoString));
        };
        _in = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_pv, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_directifacetdotdirectifacet.__type___internaldotreflect_testdotReflect_test_directifacetdotDirectIfaceT }))))?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        _out = _m.func.call(_in);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2725"
        {
            var _got = @:assignType (_out[(0 : stdgo.GoInt)].int_() : stdgo.GoInt64);
            if (_got != ((42i64 : stdgo.GoInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2726"
                _t.errorf(("Call with pointer receiver got %d, want 42" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
    }
