package _internal.bytes_test;
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _allocs = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L58"
            if (_internal.bytes_test.Bytes_test__comparetests._compareTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__comparetests._compareTests) {
                var _eql = @:assignType (stdgo._internal.bytes.Bytes_equal.equal(_tt._a, _tt._b) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L60"
                if (_eql != ((_tt._i == (0 : stdgo.GoInt)))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L61"
                    _t.errorf(("Equal(%q, %q) = %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tt._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_eql, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L65"
        if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L66"
            _t.errorf(("Equal allocated %v times" : stdgo.GoString), new stdgo.AnyInterface(_allocs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
