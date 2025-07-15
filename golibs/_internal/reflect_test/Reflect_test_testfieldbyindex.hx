package _internal.reflect_test;
function testFieldByIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3032"
        if (_internal.reflect_test.Reflect_test__fieldtests._fieldTests != null) for (__1 => _test in _internal.reflect_test.Reflect_test__fieldtests._fieldTests) {
            var _s = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(_test._s) : stdgo._internal.reflect.Reflect_type_.Type_);
            var _f = @:assignType (_s.fieldByIndex(_test._index)?.__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3035"
            if (_f.name != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3036"
                if (_test._index != null) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3037"
                    if (_f.name != (_test._name)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3038"
                        _t.errorf(("%s.%s found; want %s" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_f.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3041"
                    _t.errorf(("%s.%s found" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_f.name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            } else if (((_test._index.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3044"
                _t.errorf(("%s.%s not found" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3047"
            if (_test._value != ((0 : stdgo.GoInt))) {
                var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._s).fieldByIndex(_test._index)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3049"
                if (_v.isValid()) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3050"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(_v.interface_(), stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt), _1 : true };
                        } catch(__exception__) {
                            { _0 : (0 : stdgo.GoInt), _1 : false };
                        }, _x = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3051"
                            if (_x != (_test._value)) {
                                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3052"
                                _t.errorf(("%s%v is %d; want %d" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_x, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_test._value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                            };
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3055"
                            _t.errorf(("%s%v value not an int" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3058"
                    _t.errorf(("%s%v value not found" : stdgo.GoString), new stdgo.AnyInterface(_s.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_test._index, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
                };
            };
        };
    }
