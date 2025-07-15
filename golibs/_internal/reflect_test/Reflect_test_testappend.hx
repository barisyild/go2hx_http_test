package _internal.reflect_test;
function testAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L828"
        if (_internal.reflect_test.Reflect_test__appendtests._appendTests != null) for (_i => _test in _internal.reflect_test.Reflect_test__appendtests._appendTests) {
            var __0 = @:assignType (_test._orig.length : stdgo.GoInt), __1 = @:assignType (_test._extra.length : stdgo.GoInt);
var _extraLen = __1, _origLen = __0;
            var _want = (_test._orig.__append__(...(_test._extra : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>);
            var _e0 = (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>((_test._extra.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_test._extra.length : stdgo.GoInt).toBasic() > 0 ? (_test._extra.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)]) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L833"
            if (_test._extra != null) for (_j => _e in _test._extra) {
                _e0[(_j : stdgo.GoInt)] = stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_e, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
            };
            var _e1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_test._extra, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _a0 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_test._orig, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _have0 = @:assignType (stdgo._internal.reflect.Reflect_append.append(_a0?.__copy__(), ...(_e0 : Array<stdgo._internal.reflect.Reflect_value.Value>))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L842"
            if (_have0.canAddr()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L843"
                _t.errorf(("Append #%d: have slice should not be addressable" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L845"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_have0.interface_(), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L846"
                _t.errorf(("Append #%d: have %v, want %v (%p %p)" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_have0, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_test._orig, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), _have0.interface_());
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L849"
            if (_a0.len() != ((_test._orig.length))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L850"
                _t.errorf(("Append #%d: a0.Len: have %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a0.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_origLen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L852"
            if ((_test._orig.length) != (_origLen)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L853"
                _t.errorf(("Append #%d origLen: have %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_test._orig.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_origLen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L855"
            if ((_test._extra.length) != (_extraLen)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L856"
                _t.errorf(("Append #%d extraLen: have %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_test._extra.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_extraLen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            var _a1 = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_test._orig, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _have1 = @:assignType (stdgo._internal.reflect.Reflect_appendslice.appendSlice(_a1?.__copy__(), _e1?.__copy__())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L862"
            if (_have1.canAddr()) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L863"
                _t.errorf(("AppendSlice #%d: have slice should not be addressable" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L865"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_have1.interface_(), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L866"
                _t.errorf(("AppendSlice #%d: have %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_have1, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L869"
            if (_a1.len() != ((_test._orig.length))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L870"
                _t.errorf(("AppendSlice #%d: a1.Len: have %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_a0.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_origLen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L872"
            if ((_test._orig.length) != (_origLen)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L873"
                _t.errorf(("AppendSlice #%d origLen: have %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_test._orig.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_origLen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L875"
            if ((_test._extra.length) != (_extraLen)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L876"
                _t.errorf(("AppendSlice #%d extraLen: have %v, want %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_test._extra.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_extraLen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            var _ax = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(({ _x : _test._orig } : _internal.reflect_test.Reflect_test_t__struct_77.T__struct_77), stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])))).field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L881"
            _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("using unexported field" : stdgo.GoString), function():Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L881"
                stdgo._internal.reflect.Reflect_append.append(_ax?.__copy__(), ...(_e0 : Array<stdgo._internal.reflect.Reflect_value.Value>));
            });
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L882"
            _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("using unexported field" : stdgo.GoString), function():Void {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L882"
                stdgo._internal.reflect.Reflect_appendslice.appendSlice(_ax?.__copy__(), _e1?.__copy__());
            });
        };
    }
