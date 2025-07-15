package _internal.bytes_test;
function testReaderWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L139"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (30 : stdgo.GoInt) : Bool)) {
                var _l:stdgo.GoInt = (0 : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L141"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _l = ((_internal.bytes_test.Bytes_test__teststring._testString.length) / _i : stdgo.GoInt);
                };
var _s = @:assignType ((_internal.bytes_test.Bytes_test__teststring._testString.__slice__(0, _l) : stdgo.GoString).__copy__() : stdgo.GoString);
var _r = stdgo._internal.bytes.Bytes_newreader.newReader((_internal.bytes_test.Bytes_test__testbytes._testBytes.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
var __tmp__ = _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L148"
                {
                    var _expect = @:assignType (_s.length : stdgo.GoInt64);
                    if (_n != (_expect)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L149"
                        _t.errorf(("got %v; want %v" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_expect, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L151"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L152"
                    _t.errorf(("for length %d: got error = %v; want nil" : stdgo.GoString), new stdgo.AnyInterface(_l, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L154"
                if ((_b.string() : stdgo.GoString) != (_s)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L155"
                    _t.errorf(("got string %q; want %q" : stdgo.GoString), new stdgo.AnyInterface((_b.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L157"
                if (_r.len() != ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L158"
                    _t.errorf(("reader contains %v bytes; want 0" : stdgo.GoString), new stdgo.AnyInterface(_r.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                };
                _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
