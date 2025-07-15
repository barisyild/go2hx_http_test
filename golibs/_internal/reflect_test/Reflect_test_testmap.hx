package _internal.reflect_test;
function testMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("a" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("b" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _mv = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_m, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1548"
        {
            var _n = @:assignType (_mv.len() : stdgo.GoInt);
            if (_n != ((_m.length))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1549"
                _t.errorf(("Len = %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_m.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        var _keys = _mv.mapKeys();
        var _newmap = @:assignType (stdgo._internal.reflect.Reflect_makemap.makeMap(_mv.type())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1553"
        if (_m != null) for (_k => _v in _m) {
            var _seen = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1557"
            if (_keys != null) for (__1 => _kv in _keys) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1558"
                if ((_kv.string() : stdgo.GoString) == (_k)) {
                    _seen = true;
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1560"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1563"
            if (!_seen) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1564"
                _t.errorf(("Missing key %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            var _vv = @:assignType (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1569"
            {
                var _vi = @:assignType (_vv.int_() : stdgo.GoInt64);
                if (_vi != ((_v : stdgo.GoInt64))) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1570"
                    _t.errorf(("Key %q: have value %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_vi, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1574"
            _newmap.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
        };
        var _vv = @:assignType (_mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("not-present" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1577"
        if (_vv.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1578"
            _t.errorf(("Invalid key: got non-nil value %s" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__valuetostring._valueToString(_vv?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _newm = (stdgo.Go.typeAssert(_newmap.interface_(), stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1582"
        if ((_newm.length) != ((_m.length))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1583"
            _t.errorf(("length after copy: newm=%d, m=%d" : stdgo.GoString), new stdgo.AnyInterface((_newm.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_m.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1586"
        if (_newm != null) for (_k => _v in _newm) {
            var __tmp__ = (_m != null && _m.__exists__(_k?.__copy__()) ? { _0 : _m[_k?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _mv:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1588"
            if (_mv != (_v)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1589"
                _t.errorf(("newm[%q] = %d, but m[%q] = %d, %v" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_mv, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1593"
        _newmap.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("a" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__(), (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value));
        var __tmp__ = (_newm != null && _newm.__exists__(("a" : stdgo.GoString)) ? { _0 : _newm[("a" : stdgo.GoString)], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _v:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1595"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1596"
            _t.errorf(("newm[\"a\"] = %d after delete" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        _mv = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_m, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1600"
        _mv.set(stdgo._internal.reflect.Reflect_zero.zero(_mv.type())?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1601"
        if (_m != null) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1602"
            _t.errorf(("mv.Set(nil) failed" : stdgo.GoString));
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1606"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("not assignable" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1606"
            _mv.mapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((("key" : stdgo.GoString) : _internal.reflect_test.Reflect_test_t_testmap___localname___s_39002.T_testMap___localname___S_39002), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testmap___localname___s_39002dott_testmap___localname___s_39002.__type___internaldotreflect_testdotReflect_test_t_testmap___localname___s_39002dotT_testMap___localname___S_39002)))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1607"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("not assignable" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1607"
            _mv.setMapIndex(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((("key" : stdgo.GoString) : _internal.reflect_test.Reflect_test_t_testmap___localname___s_39002.T_testMap___localname___S_39002), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testmap___localname___s_39002dott_testmap___localname___s_39002.__type___internaldotreflect_testdotReflect_test_t_testmap___localname___s_39002dotT_testMap___localname___S_39002)))?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__());
        });
    }
