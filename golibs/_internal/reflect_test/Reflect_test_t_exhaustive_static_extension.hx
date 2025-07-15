package _internal.reflect_test;
@:keep @:allow(_internal.reflect_test.Reflect_test.T_exhaustive_asInterface) class T_exhaustive_static_extension {
    @:keep
    @:tdfield
    static public function maybe( _x:stdgo.Ref<_internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive>):Bool {
        @:recv var _x:stdgo.Ref<_internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive> = _x;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6484"
        return _x.choose((2 : stdgo.GoInt)) == ((1 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function choose( _x:stdgo.Ref<_internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive>, _max:stdgo.GoInt):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<_internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive> = _x;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6472"
        if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos >= ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last.length) : Bool)) {
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last.__append__((new _internal.reflect_test.Reflect_test_t_choice.T_choice((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.intn(_max), (0 : stdgo.GoInt), _max) : _internal.reflect_test.Reflect_test_t_choice.T_choice)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_choice.T_choice>);
        };
        var _c = (stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last[((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_choicedott_choice.__type___internaldotreflect_testdotReflect_test_t_choicedotT_choice })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_choice.T_choice>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6476"
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos++;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6477"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._max != (_max)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6478"
            throw new stdgo.AnyInterface(("inconsistent use of exhaustive tester" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6480"
        return ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n + (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off : stdgo.GoInt)) % _max : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function next( _x:stdgo.Ref<_internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive>):Bool {
        @:recv var _x:stdgo.Ref<_internal.reflect_test.Reflect_test_t_exhaustive.T_exhaustive> = _x;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6452"
        if (({
            final value = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newsource.newSource(stdgo._internal.time.Time_now.now().unixNano()));
        };
        (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6456"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last == null) {
            (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last = (new stdgo.Slice<_internal.reflect_test.Reflect_test_t_choice.T_choice>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.reflect_test.Reflect_test_t_choice.T_choice)])) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_choice.T_choice>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6458"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6460"
        {
            var _i = @:assignType (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _c = (stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_choicedott_choice.__type___internaldotreflect_testdotReflect_test_t_choicedotT_choice })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t_choice.T_choice>);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6462"
                if ((((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n + (1 : stdgo.GoInt) : stdgo.GoInt) < (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._max : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6463"
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n++;
                    (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last = ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_choice.T_choice>);
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6465"
                    return true;
                };
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6468"
        return false;
    }
}
