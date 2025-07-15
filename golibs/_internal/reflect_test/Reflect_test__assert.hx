package _internal.reflect_test;
function _assert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _s:stdgo.GoString, _want:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L62"
        if (_s != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L63"
            _t.errorf(("have %#q want %#q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
