package _internal.reflect_test;
function testValuePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _vo = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf : stdgo.AnyInterface -> stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3990"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect.Value.Addr of unaddressable value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3990"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).addr();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3991"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Bool on float64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3991"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).bool_();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3992"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Bytes on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3992"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).bytes();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3993"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Call on bool Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3993"
            _vo(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).call((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3994"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.CallSlice on int Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3994"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).callSlice((null : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3995"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Close on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3995"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).close();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3996"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Complex on float64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3996"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).complex();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3997"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Elem on bool Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3997"
            _vo(new stdgo.AnyInterface(false, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).elem();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3998"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Field on int Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3998"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).field((0 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3999"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Float on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L3999"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).float_();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4000"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Index on float64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4000"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).index((0 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4001"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Int on bool Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4001"
            _vo(new stdgo.AnyInterface(false, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).int_();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4002"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.IsNil on int Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4002"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).isNil();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4003"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Len on bool Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4003"
            _vo(new stdgo.AnyInterface(false, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).len();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4004"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.MapIndex on float64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4004"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).mapIndex(_vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4005"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.MapKeys on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4005"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).mapKeys();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4006"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.MapRange on int Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4006"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).mapRange();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4007"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Method on zero Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4007"
            _vo((null : stdgo.AnyInterface)).method((0 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4008"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.NumField on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4008"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).numField();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4009"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.NumMethod on zero Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4009"
            _vo((null : stdgo.AnyInterface)).numMethod();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4010"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.OverflowComplex on float64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4010"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).overflowComplex(new stdgo.GoComplex128(0f64, 0f64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4011"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.OverflowFloat on int64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4011"
            _vo(new stdgo.AnyInterface((0i64 : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)))).overflowFloat((0 : stdgo.GoFloat64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4012"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.OverflowInt on uint64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4012"
            _vo(new stdgo.AnyInterface((0i64 : stdgo.GoUInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind)))).overflowInt((0i64 : stdgo.GoInt64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4013"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.OverflowUint on complex64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4013"
            _vo(new stdgo.AnyInterface((new stdgo.GoComplex128(0f64, 0f64) : stdgo.GoComplex64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(complex64_kind)))).overflowUint((0i64 : stdgo.GoUInt64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4014"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Recv on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4014"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).recv();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4015"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Send on bool Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4015"
            _vo(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).send(_vo(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4016"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("value of type string is not assignable to type bool" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4016"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer(false), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) })))).elem().set(_vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4017"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.SetBool on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4017"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer(("" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem().setBool(false);
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4018"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect.Value.SetBytes using unaddressable value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4018"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).setBytes((null : stdgo.Slice<stdgo.GoUInt8>));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4019"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.SetCap on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4019"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer(("" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem().setCap((0 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4020"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.SetComplex on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4020"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer(("" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem().setComplex(new stdgo.GoComplex128(0f64, 0f64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4021"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.SetFloat on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4021"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer(("" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem().setFloat((0 : stdgo.GoFloat64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4022"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.SetInt on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4022"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer(("" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem().setInt((0i64 : stdgo.GoInt64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4023"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.SetLen on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4023"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer(("" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))).elem().setLen((0 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4024"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.SetString on int Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4024"
            _vo(new stdgo.AnyInterface(stdgo.Go.pointer((0 : stdgo.GoInt)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))).elem().setString((stdgo.Go.str() : stdgo.GoString)?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4025"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("reflect.Value.SetUint using unaddressable value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4025"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).setUint((0i64 : stdgo.GoUInt64));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4026"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Slice on bool Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4026"
            _vo(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).slice((1 : stdgo.GoInt), (2 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4027"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Slice3 on int Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4027"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))).slice3((1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt));
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4028"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.TryRecv on bool Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4028"
            _vo(new stdgo.AnyInterface(true, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind)))).tryRecv();
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4029"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.TrySend on string Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4029"
            _vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))).trySend(_vo(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4030"
        _internal.reflect_test.Reflect_test__shouldpanic._shouldPanic(("call of reflect.Value.Uint on float64 Value" : stdgo.GoString), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4030"
            _vo(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).uint();
        });
    }
