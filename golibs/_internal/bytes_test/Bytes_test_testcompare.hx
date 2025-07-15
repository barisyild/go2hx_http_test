package _internal.bytes_test;
function testCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L43"
        if (_internal.bytes_test.Bytes_test__comparetests._compareTests != null) for (__0 => _tt in _internal.bytes_test.Bytes_test__comparetests._compareTests) {
            var _numShifts = @:assignType (16 : stdgo.GoInt);
            var _buffer = (new stdgo.Slice<stdgo.GoUInt8>(((_tt._b.length) + _numShifts : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L47"
            {
                var _offset = @:assignType (0 : stdgo.GoInt);
                while ((_offset <= _numShifts : Bool)) {
                    var _shiftedB = (_buffer.__slice__(_offset, ((_tt._b.length) + _offset : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L49"
                    _shiftedB.__copyTo__(_tt._b);
var _cmp = @:assignType (stdgo._internal.bytes.Bytes_compare.compare(_tt._a, _shiftedB) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L51"
                    if (_cmp != (_tt._i)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L52"
                        _t.errorf(("Compare(%q, %q), offset %d = %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_tt._a, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_tt._b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_offset, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_cmp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_tt._i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _offset++;
                };
            };
        };
    }
