package _internal.reflect_test;
function testConvert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _canConvert = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo._internal.reflect.Reflect_type_.Type_>, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_ }, 2));
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo._internal.reflect.Reflect_type_.Type_>, Bool>);
        var _all = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_type_.Type_, Bool>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_);
            x.__defaultValue__ = () -> false;
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_type_.Type_, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4598"
        if (_internal.reflect_test.Reflect_test__converttests._convertTests != null) for (__1 => _tt in _internal.reflect_test.Reflect_test__converttests._convertTests) {
            var _t1 = @:assignType (_tt._in.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4600"
            if (!_t1.convertibleTo(_t1)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4601"
                _t.errorf(("(%s).ConvertibleTo(%s) = false, want true" : stdgo.GoString), ({
                    final __t__ = _t1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _t1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4602"
                continue;
            };
            var _t2 = @:assignType (_tt._out.type() : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4606"
            if (!_t1.convertibleTo(_t2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4607"
                _t.errorf(("(%s).ConvertibleTo(%s) = false, want true" : stdgo.GoString), ({
                    final __t__ = _t1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), ({
                    final __t__ = _t2;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4608"
                continue;
            };
            _all[_t1] = true;
            _all[_t2] = true;
            _canConvert[(new stdgo.GoArray<stdgo._internal.reflect.Reflect_type_.Type_>(2, 2, ...[_t1, _t2]) : stdgo.GoArray<stdgo._internal.reflect.Reflect_type_.Type_>)] = true;
            var _v1 = @:assignType (_tt._in?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4617"
            if (!_v1.canConvert(_t1)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4618"
                _t.errorf(("ValueOf(%T(%[1]v)).CanConvert(%s) = false, want true" : stdgo.GoString), _tt._in.interface_(), ({
                    final __t__ = _t1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            var _vout1 = @:assignType (_v1.convert(_t1)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _out1 = @:assignType (_vout1.interface_() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4622"
            if ((!((_vout1.type().string() : String) == (_tt._in.type().string() : String)) || !stdgo._internal.reflect.Reflect_deepequal.deepEqual(_out1, _tt._in.interface_()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4623"
                _t.errorf(("ValueOf(%T(%[1]v)).Convert(%s) = %T(%[3]v), want %T(%[4]v)" : stdgo.GoString), _tt._in.interface_(), ({
                    final __t__ = _t1;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _out1, _tt._in.interface_());
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4627"
            if (!_v1.canConvert(_t2)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4628"
                _t.errorf(("ValueOf(%T(%[1]v)).CanConvert(%s) = false, want true" : stdgo.GoString), _tt._in.interface_(), ({
                    final __t__ = _t2;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
            var _vout2 = @:assignType (_v1.convert(_t2)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _out2 = @:assignType (_vout2.interface_() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4632"
            if ((!((_vout2.type().string() : String) == (_tt._out.type().string() : String)) || !stdgo._internal.reflect.Reflect_deepequal.deepEqual(_out2, _tt._out.interface_()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4633"
                _t.errorf(("ValueOf(%T(%[1]v)).Convert(%s) = %T(%[3]v), want %T(%[4]v)" : stdgo.GoString), _tt._in.interface_(), ({
                    final __t__ = _t2;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _out2, _tt._out.interface_());
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4635"
            {
                var __0 = @:assignType (_vout2.kind() : stdgo._internal.reflect.Reflect_kind.Kind), __1 = @:assignType (_vout2.type().kind() : stdgo._internal.reflect.Reflect_kind.Kind);
var _want = __1, _got = __0;
                if (_got != (_want)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4636"
                    _t.errorf(("ValueOf(%T(%[1]v)).Convert(%s) has internal kind %v want %v" : stdgo.GoString), _tt._in.interface_(), ({
                        final __t__ = _t1;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface(stdgo.Go.asInterface(_got, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind)), new stdgo.AnyInterface(stdgo.Go.asInterface(_want, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_kinddotkind.__type__stdgodot_internaldotreflectdotReflect_kinddotKind)));
                };
            };
            var _vout3 = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_t2).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4642"
            _vout3.set(_vout2?.__copy__());
            var _out3 = @:assignType (_vout3.interface_() : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4644"
            if ((!((_vout3.type().string() : String) == (_tt._out.type().string() : String)) || !stdgo._internal.reflect.Reflect_deepequal.deepEqual(_out3, _tt._out.interface_()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4645"
                _t.errorf(("Set(ValueOf(%T(%[1]v)).Convert(%s)) = %T(%[3]v), want %T(%[4]v)" : stdgo.GoString), _tt._in.interface_(), ({
                    final __t__ = _t2;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _out3, _tt._out.interface_());
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4648"
            if (stdgo._internal.reflect.Reflect_isro.isRO(_v1?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4649"
                _t.errorf(("table entry %v is RO, should not be" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_v1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4651"
            if (stdgo._internal.reflect.Reflect_isro.isRO(_vout1?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4652"
                _t.errorf(("self-conversion output %v is RO, should not be" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_vout1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4654"
            if (stdgo._internal.reflect.Reflect_isro.isRO(_vout2?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4655"
                _t.errorf(("conversion output %v is RO, should not be" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_vout2, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4657"
            if (stdgo._internal.reflect.Reflect_isro.isRO(_vout3?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4658"
                _t.errorf(("set(conversion output) %v is RO, should not be" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_vout3, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4660"
            if (!stdgo._internal.reflect.Reflect_isro.isRO(stdgo._internal.reflect.Reflect_makero.makeRO(_v1?.__copy__()).convert(_t1)?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4661"
                _t.errorf(("RO self-conversion output %v is not RO, should be" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_v1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4663"
            if (!stdgo._internal.reflect.Reflect_isro.isRO(stdgo._internal.reflect.Reflect_makero.makeRO(_v1?.__copy__()).convert(_t2)?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4664"
                _t.errorf(("RO conversion output %v is not RO, should be" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_v1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4672"
        if (_all != null) for (_t1 => _ in _all) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4673"
            if (_all != null) for (_t2 => _ in _all) {
                var _expectOK = @:assignType (((_t1.string() : String) == (_t2.string() : String) || (_canConvert[(new stdgo.GoArray<stdgo._internal.reflect.Reflect_type_.Type_>(2, 2, ...[_t1, _t2]) : stdgo.GoArray<stdgo._internal.reflect.Reflect_type_.Type_>)] ?? false) : Bool) || (_t2.kind() == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _t2.numMethod() == ((0 : stdgo.GoInt)) : Bool) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4675"
                {
                    var _ok = @:assignType (_t1.convertibleTo(_t2) : Bool);
                    if (_ok != (_expectOK)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4676"
                        _t.errorf(("(%s).ConvertibleTo(%s) = %v, want %v" : stdgo.GoString), ({
                            final __t__ = _t1;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), ({
                            final __t__ = _t2;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_expectOK, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
            };
        };
    }
