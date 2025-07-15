package _internal.reflect_test;
function testUnexported(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _pub:_internal.reflect_test.Reflect_test_public.Public = ({} : _internal.reflect_test.Reflect_test_public.Public);
        _pub._private.s = ("S" : stdgo.GoString);
        _pub._private.t = (_pub._private.a.__slice__(0) : stdgo.Slice<_internal.reflect_test.Reflect_test_private.Private>);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_pub, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_publicdotpublic.__type___internaldotreflect_testdotReflect_test_publicdotPublic })) : stdgo.Ref<_internal.reflect_test.Reflect_test_public.Public>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_publicdotpublic.__type___internaldotreflect_testdotReflect_test_publicdotPublic), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_publicdotpublic.__type___internaldotreflect_testdotReflect_test_publicdotPublic }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3788"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().field((0 : stdgo.GoInt))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3789"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().field((1 : stdgo.GoInt))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3790"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().field((2 : stdgo.GoInt))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3791"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().fieldByName(("X" : stdgo.GoString))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3792"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().fieldByName(("Y" : stdgo.GoString))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3793"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().fieldByName(("Z" : stdgo.GoString))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3794"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.type().method((0 : stdgo.GoInt)).func?.__copy__());
        var __tmp__ = _v.type().methodByName(("M" : stdgo.GoString)), _m:stdgo._internal.reflect.Reflect_method.Method = __tmp__._0, __1:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3796"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_m.func?.__copy__());
        {
            var __tmp__ = _v.type().methodByName(("P" : stdgo.GoString));
            _m = @:tmpset0 __tmp__._0?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3798"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_m.func?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3799"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_v.elem().field((0 : stdgo.GoInt)).interface_());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3800"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_v.elem().field((1 : stdgo.GoInt)).interface_());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3801"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(new stdgo.AnyInterface(stdgo.Go.asInterface(_v.elem().field((2 : stdgo.GoInt)).field((2 : stdgo.GoInt)).index((0 : stdgo.GoInt)), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3802"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_v.elem().fieldByName(("X" : stdgo.GoString)).interface_());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3803"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_v.elem().fieldByName(("Y" : stdgo.GoString)).interface_());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3804"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_v.elem().fieldByName(("Z" : stdgo.GoString)).interface_());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3805"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_v.elem().fieldByName(("S" : stdgo.GoString)).index((0 : stdgo.GoInt)).interface_());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3806"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_v.type().method((0 : stdgo.GoInt)).func.interface_());
        {
            var __tmp__ = _v.type().methodByName(("P" : stdgo.GoString));
            _m = @:tmpset0 __tmp__._0?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3808"
        _internal.reflect_test.Reflect_test__isnonnil._isNonNil(_m.func.interface_());
        var _priv:_internal.reflect_test.Reflect_test_private.Private = ({} : _internal.reflect_test.Reflect_test_private.Private);
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_priv, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_privatedotprivate.__type___internaldotreflect_testdotReflect_test_privatedotPrivate })) : stdgo.Ref<_internal.reflect_test.Reflect_test_private.Private>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_privatedotprivate.__type___internaldotreflect_testdotReflect_test_privatedotPrivate), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_privatedotprivate.__type___internaldotreflect_testdotReflect_test_privatedotPrivate }))))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3812"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().field((0 : stdgo.GoInt))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3813"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().field((1 : stdgo.GoInt))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3814"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().fieldByName(("x" : stdgo.GoString))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3815"
        _internal.reflect_test.Reflect_test__isvalid._isValid(_v.elem().fieldByName(("y" : stdgo.GoString))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3816"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3816"
            _v.elem().field((0 : stdgo.GoInt)).interface_();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3817"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3817"
            _v.elem().field((1 : stdgo.GoInt)).interface_();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3818"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3818"
            _v.elem().fieldByName(("x" : stdgo.GoString)).interface_();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3819"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Interface" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3819"
            _v.elem().fieldByName(("y" : stdgo.GoString)).interface_();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3820"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Method" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3820"
            _v.type().method((0 : stdgo.GoInt));
        });
    }
