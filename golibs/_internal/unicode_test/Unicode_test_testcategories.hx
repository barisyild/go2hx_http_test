package _internal.unicode_test;
function testCategories(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _notTested = (({
            final x = new stdgo.GoMap.GoStringMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L97"
        if (stdgo._internal.unicode.Unicode_categories.categories != null) for (_k => _ in stdgo._internal.unicode.Unicode_categories.categories) {
            _notTested[_k] = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L100"
        if (_internal.unicode_test.Unicode_test__incategorytest._inCategoryTest != null) for (__0 => _test in _internal.unicode_test.Unicode_test__incategorytest._inCategoryTest) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L101"
            {
                var __tmp__ = (stdgo._internal.unicode.Unicode_categories.categories != null && stdgo._internal.unicode.Unicode_categories.categories.__exists__(_test._script?.__copy__()) ? { _0 : stdgo._internal.unicode.Unicode_categories.categories[_test._script?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>), _1 : false }), __1:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L102"
                    _t.fatal(stdgo.Go.toInterface(_test._script), stdgo.Go.toInterface(("not a known category" : stdgo.GoString)));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L104"
            if (!stdgo._internal.unicode.Unicode_is_.is_((stdgo._internal.unicode.Unicode_categories.categories[_test._script] ?? (null : stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>)), _test._rune)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L105"
                _t.errorf(("IsCategory(%U, %s) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_test._rune), stdgo.Go.toInterface(_test._script));
            };
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L107"
            if (_notTested != null) _notTested.__remove__(_test._script);
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L109"
        if (_notTested != null) for (_k => _ in _notTested) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/script_test.go#L110"
            _t.error(stdgo.Go.toInterface(("category not tested:" : stdgo.GoString)), stdgo.Go.toInterface(_k));
        };
    }
