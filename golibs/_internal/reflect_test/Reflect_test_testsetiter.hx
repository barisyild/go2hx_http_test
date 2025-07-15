package _internal.reflect_test;
function testSetIter(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("foo" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("bar" : stdgo.GoString), (2 : stdgo.GoInt));
x.set(("baz" : stdgo.GoString), (3 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _m = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _i = _m.mapRange();
        var _k = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7786"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Value.SetIterKey called before Next" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7787"
            _k.setIterKey(_i);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7789"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Value.SetIterValue called before Next" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7790"
            _v.setIterValue(_i);
        });
        var _data2 = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7793"
        while (_i.next()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7794"
            _k.setIterKey(_i);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7795"
            _v.setIterValue(_i);
            _data2[(stdgo.Go.typeAssert(_k.interface_(), stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)] = (stdgo.Go.typeAssert(_v.interface_(), stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7798"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_data2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7799"
            _t.errorf(("maps not equal, got %v want %v" : stdgo.GoString), new stdgo.AnyInterface(_data2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7801"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Value.SetIterKey called on exhausted iterator" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7802"
            _k.setIterKey(_i);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7804"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Value.SetIterValue called on exhausted iterator" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7805"
            _v.setIterValue(_i);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7808"
        _i.reset(_m?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7809"
        _i.next();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7810"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Value.SetIterKey using unaddressable value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7811"
            stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).setIterKey(_i);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7813"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("Value.SetIterValue using unaddressable value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7814"
            stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).setIterValue(_i);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7816"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("value of type string is not assignable to type int" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7817"
            stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))).elem().setIterKey(_i);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7819"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("value of type int is not assignable to type string" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7820"
            stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))).elem().setIterValue(_i);
        });
        var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _y = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.pointer(_x), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7826"
        _y.setIterKey(_i);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7827"
        {
            var __tmp__ = (_data != null && _data.__exists__((stdgo.Go.typeAssert(_x, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__()) ? { _0 : _data[(stdgo.Go.typeAssert(_x, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString)?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __1:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7828"
                _t.errorf(("got key %s which is not in map" : stdgo.GoString), _x);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7830"
        _y.setIterValue(_i);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7831"
        if ((((stdgo.Go.typeAssert(_x, stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt) < (1 : stdgo.GoInt) : Bool) || ((stdgo.Go.typeAssert(_x, stdgo._internal.internal.reflect.GoType.basic(int_kind)) : stdgo.GoInt) > (3 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7832"
            _t.errorf(("got value %d which is not in map" : stdgo.GoString), _x);
        };
        var _a = @:assignType (88 : stdgo.GoInt);
        var _a__pointer__ = stdgo.Go.pointer(_a);
        var _b = @:assignType (99 : stdgo.GoInt);
        var _b__pointer__ = stdgo.Go.pointer(_b);
        var _pp = ({
            final x = new stdgo.GoMap.GoPointerMap<stdgo.Pointer<stdgo.GoInt>, stdgo.Pointer<stdgo.GoInt>>();
            x.set(_a__pointer__, _b__pointer__);
            cast x;
        } : stdgo.GoMap<stdgo.Pointer<stdgo.GoInt>, stdgo.Pointer<stdgo.GoInt>>);
        _i = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_pp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).mapRange();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7842"
        _i.next();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7843"
        _y.setIterKey(_i);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7844"
        {
            var _got = @:assignType ((stdgo.Go.typeAssert(_y.interface_(), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Pointer<stdgo.GoInt>).value : stdgo.GoInt);
            if (_got != (_a)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7845"
                _t.errorf(("pointer incorrect: got %d want %d" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7847"
        _y.setIterValue(_i);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7848"
        {
            var _got = @:assignType ((stdgo.Go.typeAssert(_y.interface_(), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) : stdgo.Pointer<stdgo.GoInt>).value : stdgo.GoInt);
            if (_got != (_b)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7849"
                _t.errorf(("pointer incorrect: got %d want %d" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        _m = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(({ _m : _data } : _internal.reflect_test.Reflect_test_t__struct_126.T__struct_126), stdgo._internal.internal.reflect.GoType.structType([{ name : "_m", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_m", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])))).field((0 : stdgo.GoInt))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7854"
        {
            var _iter = _m.mapRange();
            while (_iter.next()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7855"
                _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("using value obtained using unexported field" : stdgo.GoString), function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7856"
                    _k.setIterKey(_iter);
                });
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7858"
                _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("using value obtained using unexported field" : stdgo.GoString), function():Void {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7859"
                    _v.setIterValue(_iter);
                });
            };
        };
    }
