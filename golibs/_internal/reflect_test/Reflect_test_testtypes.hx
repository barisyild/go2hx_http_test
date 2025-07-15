package _internal.reflect_test;
function testTypes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L252"
        if (_internal.reflect_test.Reflect_test__typetests._typeTests != null) for (_i => _tt in _internal.reflect_test.Reflect_test__typetests._typeTests) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L253"
            _internal.reflect_test.Reflect_test__testtype._testType(_t, _i, stdgo._internal.reflect.Reflect_valueof.valueOf(_tt._i).field((0 : stdgo.GoInt)).type(), _tt._s?.__copy__());
        };
    }
