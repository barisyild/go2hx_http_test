package _internal.unicode_test;
function testProperties(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _notTested = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L116"
        if (stdgo._internal.unicode.Unicode_properties.properties != null) for (_k => _ in stdgo._internal.unicode.Unicode_properties.properties) {
            _notTested[_k] = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L119"
        if (_internal.unicode_test.Unicode_test__inproptest._inPropTest != null) for (__0 => _test in _internal.unicode_test.Unicode_test__inproptest._inPropTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L120"
            {
                var __tmp__ = (stdgo._internal.unicode.Unicode_properties.properties != null && stdgo._internal.unicode.Unicode_properties.properties.__exists__(_test._script?.__copy__()) ? { _0 : stdgo._internal.unicode.Unicode_properties.properties[_test._script?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>), _1 : false }), __1:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L121"
                    _t.fatal(stdgo.Go.toInterface(_test._script), stdgo.Go.toInterface(("not a known prop" : stdgo.GoString)));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L123"
            if (!stdgo._internal.unicode.Unicode_is_.is_((stdgo._internal.unicode.Unicode_properties.properties[_test._script] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), _test._rune)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L124"
                _t.errorf(("IsCategory(%U, %s) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_test._rune), stdgo.Go.toInterface(_test._script));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L126"
            if (_notTested != null) _notTested.__remove__(_test._script);
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L128"
        if (_notTested != null) for (_k => _ in _notTested) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L129"
            _t.error(stdgo.Go.toInterface(("property not tested:" : stdgo.GoString)), stdgo.Go.toInterface(_k));
        };
    }
