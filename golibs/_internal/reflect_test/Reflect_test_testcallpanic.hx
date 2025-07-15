package _internal.reflect_test;
function testCallPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        {};
        {};
        {};
        var _ok = @:assignType (function(_f:() -> Void):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3941"
            _f();
        } : (() -> Void) -> Void);
        var _badCall = @:assignType (function(_f:() -> Void):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3942"
            _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Call" : stdgo.GoString), _f);
        } : (() -> Void) -> Void);
        var _badMethod = @:assignType (function(_f:() -> Void):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3943"
            _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Method" : stdgo.GoString), _f);
        } : (() -> Void) -> Void);
        var _call = @:assignType (function(_v:stdgo._internal.reflect.Reflect_value.Value):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3944"
            _v.call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        } : stdgo._internal.reflect.Reflect_value.Value -> Void);
        var _i = @:assignType ((0 : _internal.reflect_test.Reflect_test_t_timp.T_timp) : _internal.reflect_test.Reflect_test_t_timp.T_timp);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.reflect_test.Reflect_test_t_testcallpanic___localname___t_98407.T_testCallPanic___localname___T_98407(stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), (new _internal.reflect_test.Reflect_test_t_testcallpanic___localname___t2_98376.T_testCallPanic___localname___T2_98376(stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp)) : _internal.reflect_test.Reflect_test_t_testcallpanic___localname___t2_98376.T_testCallPanic___localname___T2_98376), stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), (new _internal.reflect_test.Reflect_test_t_testcallpanic___localname___t2_98376.T_testCallPanic___localname___T2_98376(stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp), stdgo.Go.asInterface(_i, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_timpdott_timp.__type___internaldotreflect_testdotReflect_test_t_timpdotT_timp)) : _internal.reflect_test.Reflect_test_t_testcallpanic___localname___t2_98376.T_testCallPanic___localname___T2_98376)) : _internal.reflect_test.Reflect_test_t_testcallpanic___localname___t_98407.T_testCallPanic___localname___T_98407), _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testcallpanic___localname___t_98407dott_testcallpanic___localname___t_98407.__type___internaldotreflect_testdotReflect_test_t_testcallpanic___localname___t_98407dotT_testCallPanic___localname___T_98407), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_testcallpanic___localname___t_98407dott_testcallpanic___localname___t_98407.__type___internaldotreflect_testdotReflect_test_t_testcallpanic___localname___t_98407dotT_testCallPanic___localname___T_98407)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3948"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3948"
            _call(_v.field((0 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3949"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3949"
            _call(_v.field((0 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3950"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3950"
            _call(_v.field((0 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3951"
        _badMethod(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3951"
            _call(_v.field((0 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3952"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3952"
            _call(_v.field((1 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3953"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3953"
            _call(_v.field((1 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3954"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3954"
            _call(_v.field((1 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3955"
        _badMethod(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3955"
            _call(_v.field((1 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3957"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3957"
            _call(_v.field((2 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3958"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3958"
            _call(_v.field((2 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3959"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3959"
            _call(_v.field((2 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3960"
        _badMethod(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3960"
            _call(_v.field((2 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3962"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3962"
            _call(_v.field((3 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3963"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3963"
            _call(_v.field((3 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3964"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3964"
            _call(_v.field((3 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3965"
        _badMethod(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3965"
            _call(_v.field((3 : stdgo.GoInt)).elem().method((3 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3967"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3967"
            _call(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3968"
        _ok(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3968"
            _call(_v.field((4 : stdgo.GoInt)).field((0 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3969"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3969"
            _call(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3970"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3970"
            _call(_v.field((4 : stdgo.GoInt)).field((1 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3972"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3972"
            _call(_v.field((5 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3973"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3973"
            _call(_v.field((5 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3974"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3974"
            _call(_v.field((5 : stdgo.GoInt)).method((1 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3975"
        _badMethod(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3975"
            _call(_v.field((5 : stdgo.GoInt)).elem().method((2 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3977"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3977"
            _call(_v.field((6 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3978"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3978"
            _call(_v.field((6 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3979"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3979"
            _call(_v.field((6 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3980"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3980"
            _call(_v.field((6 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3982"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3982"
            _call(_v.field((7 : stdgo.GoInt)).field((0 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3983"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3983"
            _call(_v.field((7 : stdgo.GoInt)).field((0 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3984"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3984"
            _call(_v.field((7 : stdgo.GoInt)).field((1 : stdgo.GoInt)).method((0 : stdgo.GoInt))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3985"
        _badCall(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3985"
            _call(_v.field((7 : stdgo.GoInt)).field((1 : stdgo.GoInt)).elem().method((0 : stdgo.GoInt))?.__copy__());
        });
    }
