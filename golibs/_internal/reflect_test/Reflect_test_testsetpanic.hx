package _internal.reflect_test;
function testSetPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ok = @:assignType (function(_f:() -> Void):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3824"
            _f();
        } : (() -> Void) -> Void);
        var _bad = @:assignType (function(_f:() -> Void):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3825"
            _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Set" : stdgo.GoString), _f);
        } : (() -> Void) -> Void);
        var _clear = @:assignType (function(_v:stdgo._internal.reflect.Reflect_value.Value):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3826"
            _v.set(stdgo._internal.reflect.Reflect_zero.zero(_v.type())?.__copy__());
        } : stdgo._internal.reflect.Reflect_value.Value -> Void);
        {};
        {};
        {};
        {};
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t_94655.T_testSetPanic___localname___T_94655() : _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t_94655.T_testSetPanic___localname___T_94655), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetpanic___localname___t_94655dott_testsetpanic___localname___t_94655.__type___internaldotreflect_testdotReflect_test_t_testsetpanic___localname___t_94655dotT_testSetPanic___localname___T_94655), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetpanic___localname___t_94655dott_testsetpanic___localname___t_94655.__type___internaldotreflect_testdotReflect_test_t_testsetpanic___localname___t_94655dotT_testSetPanic___localname___T_94655)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3854"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3854"
            _clear(_v.field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3855"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3855"
            _clear(_v.field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3856"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3856"
            _clear(_v.field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3857"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3857"
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3858"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3858"
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3859"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3859"
            _clear(_v.field((2 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3860"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3860"
            _clear(_v.field((2 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3861"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3861"
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3862"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3862"
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3863"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3863"
            _clear(_v.field((3 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3864"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3864"
            _clear(_v.field((3 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3865"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3865"
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3866"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3866"
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3867"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3867"
            _clear(_v.field((4 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3868"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3868"
            _clear(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3869"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3869"
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3870"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3870"
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3871"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3871"
            _clear(_v.field((5 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3872"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3872"
            _clear(_v.field((5 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3873"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3873"
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3874"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3874"
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3875"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3875"
            _clear(_v.field((6 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3876"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3876"
            _clear(_v.field((6 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3877"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3877"
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3878"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3878"
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t_94655.T_testSetPanic___localname___T_94655() : _internal.reflect_test.Reflect_test_t_testsetpanic___localname___t_94655.T_testSetPanic___localname___T_94655), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetpanic___localname___t_94655dott_testsetpanic___localname___t_94655.__type___internaldotreflect_testdotReflect_test_t_testsetpanic___localname___t_94655dotT_testSetPanic___localname___T_94655 })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_testsetpanic___localname___t_94655.T_testSetPanic___localname___T_94655>), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetpanic___localname___t_94655dott_testsetpanic___localname___t_94655.__type___internaldotreflect_testdotReflect_test_t_testsetpanic___localname___t_94655dotT_testSetPanic___localname___T_94655), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testsetpanic___localname___t_94655dott_testsetpanic___localname___t_94655.__type___internaldotreflect_testdotReflect_test_t_testsetpanic___localname___t_94655dotT_testSetPanic___localname___T_94655 })))).elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3882"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3882"
            _clear(_v.field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3883"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3883"
            _clear(_v.field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3884"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3884"
            _clear(_v.field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3885"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3885"
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3886"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3886"
            _clear(_v.field((1 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3887"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3887"
            _clear(_v.field((2 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3888"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3888"
            _clear(_v.field((2 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3889"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3889"
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3890"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3890"
            _clear(_v.field((2 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3891"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3891"
            _clear(_v.field((3 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3892"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3892"
            _clear(_v.field((3 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3893"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3893"
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3894"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3894"
            _clear(_v.field((3 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3895"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3895"
            _clear(_v.field((4 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3896"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3896"
            _clear(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3897"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3897"
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3898"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3898"
            _clear(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3899"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3899"
            _clear(_v.field((5 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3900"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3900"
            _clear(_v.field((5 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3901"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3901"
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3902"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3902"
            _clear(_v.field((5 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3903"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3903"
            _clear(_v.field((6 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3904"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3904"
            _clear(_v.field((6 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3905"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3905"
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3906"
        _bad(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3906"
            _clear(_v.field((6 : stdgo.GoInt)).field((1 : stdgo.GoInt)).field((0 : stdgo.GoInt))?.__copy__());
        });
    }
