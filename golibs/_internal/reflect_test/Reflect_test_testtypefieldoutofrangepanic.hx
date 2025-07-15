package _internal.reflect_test;
function testTypeFieldOutOfRangePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(({ x : (10 : stdgo.GoInt) } : _internal.reflect_test.Reflect_test_t__struct_120.T__struct_120), stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "x", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])))) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _testIndices = {
            var s:stdgo.GoArray<_internal.reflect_test.Reflect_test_t__struct_121.T__struct_121> = new stdgo.GoArray<_internal.reflect_test.Reflect_test_t__struct_121.T__struct_121>(4, 4, ...[for (i in 0 ... 4) ({ _i : (0 : stdgo.GoInt), _mustPanic : false } : _internal.reflect_test.Reflect_test_t__struct_121.T__struct_121)]);
            s[0] = ({ _i : (-2 : stdgo.GoInt), _mustPanic : true } : _internal.reflect_test.Reflect_test_t__struct_121.T__struct_121);
            s[1] = ({ _i : (0 : stdgo.GoInt), _mustPanic : false } : _internal.reflect_test.Reflect_test_t__struct_121.T__struct_121);
            s[2] = ({ _i : (1 : stdgo.GoInt), _mustPanic : true } : _internal.reflect_test.Reflect_test_t__struct_121.T__struct_121);
            s[3] = ({ _i : (1024 : stdgo.GoInt), _mustPanic : true } : _internal.reflect_test.Reflect_test_t__struct_121.T__struct_121);
            s;
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6755"
        for (_i => _tt in _testIndices.__copy__()) {
            var _recoveredErr = @:assignType (_internal.reflect_test.Reflect_test__fieldindexrecover._fieldIndexRecover(_typ, _tt._i) : stdgo.AnyInterface);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6757"
            if (_tt._mustPanic) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6758"
                if (({
                    final value = _recoveredErr;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6759"
                    _t.errorf(("#%d: fieldIndex %d expected to panic" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6762"
                if (({
                    final value = _recoveredErr;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6763"
                    _t.errorf(("#%d: got err=%v, expected no panic" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), _recoveredErr);
                };
            };
        };
    }
