package _internal.bytes_test;
function testEndianBaseCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((512 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((512 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L132"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (512 : stdgo.GoInt) : Bool)) {
                _a[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
_b[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L136"
        {
            var _i = @:assignType (2 : stdgo.GoInt);
            while ((_i <= (512 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L137"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _a[(_j : stdgo.GoInt)] = (_b[(_j : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
_a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _cmp = @:assignType (stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L141"
                        if (_cmp != ((-1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L142"
                            _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_cmp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
_a[(_j : stdgo.GoInt)] = (_b[(_j : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
_a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
_cmp = stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L147"
                        if (_cmp != ((1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L148"
                            _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_cmp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                        };
_a[(_j : stdgo.GoInt)] = _b[(_j : stdgo.GoInt)];
_a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = _b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)];
                        _j++;
                    };
                };
                _i = (_i << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            };
        };
    }
