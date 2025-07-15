package _internal.reflect_test;
function testOverflow(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4787"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))).overflowFloat((1e+300 : stdgo.GoFloat64)) : Bool);
            if (_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4788"
                _t.errorf(("%v wrongly overflows float64" : stdgo.GoString), new stdgo.AnyInterface((1e+300 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
        var _maxFloat32 = @:assignType ((3.4028234663852886e+38 : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4792"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind)))).overflowFloat(_maxFloat32) : Bool);
            if (_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4793"
                _t.errorf(("%v wrongly overflows float32" : stdgo.GoString), new stdgo.AnyInterface(_maxFloat32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
        var _ovfFloat32 = @:assignType ((3.402823466385289e+38 : stdgo.GoFloat64) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4796"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind)))).overflowFloat(_ovfFloat32) : Bool);
            if (!_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4797"
                _t.errorf(("%v should overflow float32" : stdgo.GoString), new stdgo.AnyInterface(_ovfFloat32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4799"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface(((0 : stdgo.GoFloat64) : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind)))).overflowFloat(-_ovfFloat32) : Bool);
            if (!_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4800"
                _t.errorf(("%v should overflow float32" : stdgo.GoString), new stdgo.AnyInterface(-_ovfFloat32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
            };
        };
        var _maxInt32 = @:assignType ((2147483647i64 : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4804"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface((0 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))).overflowInt(_maxInt32) : Bool);
            if (_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4805"
                _t.errorf(("%v wrongly overflows int32" : stdgo.GoString), new stdgo.AnyInterface(_maxInt32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4807"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface((0 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))).overflowInt((-2147483648i64 : stdgo.GoInt64)) : Bool);
            if (_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4808"
                _t.errorf(("%v wrongly overflows int32" : stdgo.GoString), new stdgo.AnyInterface((-2147483648i64 : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        var _ovfInt32 = @:assignType ((2147483648i64 : stdgo.GoInt64) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4811"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface((0 : stdgo.GoInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))).overflowInt(_ovfInt32) : Bool);
            if (!_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4812"
                _t.errorf(("%v should overflow int32" : stdgo.GoString), new stdgo.AnyInterface(_ovfInt32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
            };
        };
        var _maxUint32 = @:assignType ((4294967295i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4816"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface((0u32 : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind)))).overflowUint(_maxUint32) : Bool);
            if (_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4817"
                _t.errorf(("%v wrongly overflows uint32" : stdgo.GoString), new stdgo.AnyInterface(_maxUint32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
            };
        };
        var _ovfUint32 = @:assignType ((4294967296i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4820"
        {
            var _ovf = @:assignType (_internal.reflect_test.Reflect_test_v.v(new stdgo.AnyInterface((0u32 : stdgo.GoUInt32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind)))).overflowUint(_ovfUint32) : Bool);
            if (!_ovf) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4821"
                _t.errorf(("%v should overflow uint32" : stdgo.GoString), new stdgo.AnyInterface(_ovfUint32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))));
            };
        };
    }
