package _internal.reflect_test;
function testChanOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _ct = @:assignType (stdgo._internal.reflect.Reflect_chanof.chanOf((3 : stdgo._internal.reflect.Reflect_chandir.ChanDir), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542)))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_makechan.makeChan(_ct, (2 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6037"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6038"
        _v.send(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((("hello" : stdgo.GoString) : _internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542)))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6039"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6040"
        _v.send(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((("world" : stdgo.GoString) : _internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542)))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6041"
        stdgo._internal.runtime.Runtime_gc.gC();
        var __tmp__ = _v.recv(), _sv1:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, __1:Bool = __tmp__._1;
        var __tmp__ = _v.recv(), _sv2:stdgo._internal.reflect.Reflect_value.Value = __tmp__._0, __2:Bool = __tmp__._1;
        var _s1 = @:assignType ((_sv1.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _s2 = @:assignType ((_sv2.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6047"
        if (((_s1 != ("hello" : stdgo.GoString)) || (_s2 != ("world" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6048"
            _t.errorf(("constructed chan: have %q, %q, want %q, %q" : stdgo.GoString), new stdgo.AnyInterface(_s1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6053"
        _internal.reflect_test.Reflect_test__checksametype._checkSameType(_t, stdgo._internal.reflect.Reflect_chanof.chanOf((3 : stdgo._internal.reflect.Reflect_chandir.ChanDir), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((1 : _internal.reflect_test.Reflect_test_t_testchanof___localname___t1_158969.T_testChanOf___localname___T1_158969), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t1_158969dott_testchanof___localname___t1_158969.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t1_158969dotT_testChanOf___localname___T1_158969)))), new stdgo.AnyInterface((null : stdgo.Chan<_internal.reflect_test.Reflect_test_t_testchanof___localname___t1_158969.T_testChanOf___localname___T1_158969>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t1_158969dott_testchanof___localname___t1_158969.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t1_158969dotT_testChanOf___localname___T1_158969 }))));
        var _left:stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542>> = (null : stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542>>);
        var _right:stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542>> = (null : stdgo.Chan<stdgo.Chan<_internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542>>);
        var _tLeft = @:assignType (stdgo._internal.reflect.Reflect_chanof.chanOf((2 : stdgo._internal.reflect.Reflect_chandir.ChanDir), stdgo._internal.reflect.Reflect_chanof.chanOf((3 : stdgo._internal.reflect.Reflect_chandir.ChanDir), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542))))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _tRight = @:assignType (stdgo._internal.reflect.Reflect_chanof.chanOf((3 : stdgo._internal.reflect.Reflect_chandir.ChanDir), stdgo._internal.reflect.Reflect_chanof.chanOf((1 : stdgo._internal.reflect.Reflect_chandir.ChanDir), stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : _internal.reflect_test.Reflect_test_t_testchanof___localname___t_158542.T_testChanOf___localname___T_158542), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542))))) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6060"
        if (!((_tLeft.string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_left, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(1, { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542 }) })))).string() : String))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6061"
            _t.errorf(("chan<-chan: have %s, want %T" : stdgo.GoString), ({
                final __t__ = _tLeft;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(_left, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(1, { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542 }) }))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6063"
        if (!((_tRight.string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(_right, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.chanType(2, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542 }) })))).string() : String))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6064"
            _t.errorf(("chan<-chan: have %s, want %T" : stdgo.GoString), ({
                final __t__ = _tRight;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(_right, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.chanType(2, { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testchanof___localname___t_158542dott_testchanof___localname___t_158542.__type___internaldotreflect_testdotReflect_test_t_testchanof___localname___t_158542dotT_testChanOf___localname___T_158542 }) }))));
        };
    }
