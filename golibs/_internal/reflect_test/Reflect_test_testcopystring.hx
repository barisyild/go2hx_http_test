package _internal.reflect_test;
function testCopyString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L926"
        _t.run(("Slice" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _s = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(95 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (8 : stdgo.GoInt));
            var _val = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _n = @:assignType (stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__()) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L931"
            {
                var _expecting = ((("________" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (0 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal(_s, _expecting) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L932"
                    _t.errorf(("got n = %d, s = %s, expecting n = 0, s = %s" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_expecting, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L936"
            {
                var _expecting = ((("hello___" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (5 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal(_s, _expecting) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L937"
                    _t.errorf(("got n = %d, s = %s, expecting n = 5, s = %s" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_expecting, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("helloworld" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L941"
            {
                var _expecting = ((("hellowor" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (8 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal(_s, _expecting) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L942"
                    _t.errorf(("got n = %d, s = %s, expecting n = 8, s = %s" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_expecting, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
        });
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L945"
        _t.run(("Array" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _s = (new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[(95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8), (95 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
            var _val = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8) })))).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _n = @:assignType (stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__()) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L950"
            {
                var _expecting = ((("________" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (0 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _expecting) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L951"
                    _t.errorf(("got n = %d, s = %s, expecting n = 0, s = %s" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_expecting, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L955"
            {
                var _expecting = ((("hello___" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (5 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _expecting) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L956"
                    _t.errorf(("got n = %d, s = %s, expecting n = 5, s = %s" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_expecting, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
            _n = stdgo._internal.reflect.Reflect_copy.copy(_val?.__copy__(), stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(("helloworld" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L960"
            {
                var _expecting = ((("hellowor" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
                if (((_n != (8 : stdgo.GoInt)) || !stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _expecting) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L961"
                    _t.errorf(("got n = %d, s = %s, expecting n = 8, s = %s" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_s.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_expecting, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                };
            };
        });
    }
