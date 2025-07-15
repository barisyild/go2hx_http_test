package _internal.reflect_test;
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((null : stdgo.Slice<stdgo.GoInt>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L747"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect.Value.Grow using unaddressable value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L747"
            _v.grow((0 : stdgo.GoInt));
        });
        _v = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoInt>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L749"
        _v.grow((0 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L750"
        if (!_v.isNil()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L751"
            _t.errorf(("v.Grow(0) should still be nil" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L753"
        _v.grow((1 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L754"
        if (_v.cap() == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L755"
            _t.errorf(("v.Cap = %v, want non-zero" : stdgo.GoString), new stdgo.AnyInterface(_v.cap(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        var _want = @:assignType (_v.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L758"
        _v.grow((1 : stdgo.GoInt));
        var _got = @:assignType (_v.unsafePointer() : stdgo._internal.unsafe.Unsafe.UnsafePointer);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L760"
        if (_got != (_want)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L761"
            _t.errorf(("noop v.Grow should not change pointers" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L764"
        _t.run(("Append" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _got:stdgo.Slice<_internal.reflect_test.Reflect_test_t_.T_> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_t_.T_>), _want:stdgo.Slice<_internal.reflect_test.Reflect_test_t_.T_> = (null : stdgo.Slice<_internal.reflect_test.Reflect_test_t_.T_>);
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_got, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }) })) : stdgo.Ref<stdgo.Slice<_internal.reflect_test.Reflect_test_t_.T_>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _appendValue = @:assignType (function(_vt:_internal.reflect_test.Reflect_test_t_.T_):Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L768"
                _v.grow((1 : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L769"
                _v.setLen((_v.len() + (1 : stdgo.GoInt) : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L770"
                _v.index((_v.len() - (1 : stdgo.GoInt) : stdgo.GoInt)).set(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_vt, _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_)))?.__copy__());
            } : _internal.reflect_test.Reflect_test_t_.T_ -> Void);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L772"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (10 : stdgo.GoInt) : Bool)) {
                    var _i__pointer__ = stdgo.Go.pointer(_i);
var _vt = @:assignType (new _internal.reflect_test.Reflect_test_t_.T_(_i, (_i : stdgo.GoFloat64), stdgo._internal.strconv.Strconv_itoa.itoa(_i).__copy__(), _i__pointer__) : _internal.reflect_test.Reflect_test_t_.T_);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L774"
                    _appendValue(_vt.__copy__());
_want = (_want.__append__(_vt.__copy__()) : stdgo.Slice<_internal.reflect_test.Reflect_test_t_.T_>);
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L777"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }))))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L778"
                _t.errorf(("value mismatch:\ngot  %v\nwant %v" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_t_dott_.__type___internaldotreflect_testdotReflect_test_t_dotT_ }))));
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L782"
        _t.run(("Rate" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L785"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (10 : stdgo.GoInt) : Bool)) {
                    _b = ((_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.GoUInt8>).__append__(...((new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L787"
                    _v.setLen(_v.cap());
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L788"
                    _v.grow((1 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L789"
                    if (_v.cap() != (_b.capacity)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L790"
                        _t.errorf(("v.Cap = %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_v.cap(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_b.capacity, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _i++;
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L795"
        _t.run(("ZeroCapacity" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L796"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (10 : stdgo.GoInt) : Bool)) {
                    var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef((null : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))).elem().__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L798"
                    _v.grow((61 : stdgo.GoInt));
var _b = _v.bytes();
_b = (_b.__slice__(0, _b.capacity) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L801"
                    if (_b != null) for (_i => _c in _b) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L802"
                        if (_c != ((0 : stdgo.GoUInt8))) {
                            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L803"
                            _t.fatalf(("Value.Bytes[%d] = 0x%02x, want 0x00" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
                        };
                        _b[(_i : stdgo.GoInt)] = (255 : stdgo.GoUInt8);
                    };
//"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L807"
                    stdgo._internal.runtime.Runtime_gc.gC();
                    _i++;
                };
            };
        });
    }
