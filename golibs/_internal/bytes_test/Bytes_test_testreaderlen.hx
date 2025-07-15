package _internal.bytes_test;
function testReaderLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(((("hello world" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L166"
        {
            var __0 = @:assignType (_r.len() : stdgo.GoInt), __1 = @:assignType (11 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L167"
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L169"
        {
            var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (10 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L170"
                _t.errorf(("Read failed: read %d %v" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L172"
        {
            var __0 = @:assignType (_r.len() : stdgo.GoInt), __1 = @:assignType (1 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L173"
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L175"
        {
            var __tmp__ = _r.read((new stdgo.Slice<stdgo.GoUInt8>((1 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err != null) || (_n != (1 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L176"
                _t.errorf(("Read failed: read %d %v; want 1, nil" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L178"
        {
            var __0 = @:assignType (_r.len() : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L179"
                _t.errorf(("r.Len(): got %d, want %d" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
    }
