package _internal.reflect_test;
function testFieldByName(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3065"
        if (_internal.reflect_test.Reflect_test__fieldtests._fieldTests != null) for (__1 => _test in _internal.reflect_test.Reflect_test__fieldtests._fieldTests) {
            var _s = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(_test._s) : stdgo._internal.reflect.Reflect_type_.Type_);
            var __tmp__ = _s.fieldByName(_test._name?.__copy__()), _f:stdgo._internal.reflect.Reflect_structfield.StructField = __tmp__._0, _found:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3068"
            if (_found) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3069"
                if (_test._index != null) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3071"
                    if ((_f.index.length) != ((_test._index.length))) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3072"
                        _t.errorf(("%s.%s depth %d; want %d: %v vs %v" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_f.index.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_test._index.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_f.index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_test._index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3074"
                        if (_f.index != null) for (_i => _x in _f.index) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3075"
                            if (_x != (_test._index[(_i : stdgo.GoInt)])) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3076"
                                _t.errorf(("%s.%s.Index[%d] is %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_test._index[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                            };
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3081"
                    _t.errorf(("%s.%s found" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_f.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            } else if (((_test._index.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3084"
                _t.errorf(("%s.%s not found" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3087"
            if (_test._value != ((0 : stdgo.GoInt))) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._s).fieldByName(_test._name?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3089"
                if (_v.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3090"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(_v.interface_(), stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt), _1 : true };
                        } catch(__exception__) {
                            { _0 : (0 : stdgo.GoInt), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3091"
                            if (_x != (_test._value)) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3092"
                                _t.errorf(("%s.%s is %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_test._value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                            };
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3095"
                            _t.errorf(("%s.%s value not an int" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3098"
                    _t.errorf(("%s.%s value not found" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }
