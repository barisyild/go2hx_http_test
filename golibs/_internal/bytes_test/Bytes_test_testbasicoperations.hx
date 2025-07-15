package _internal.bytes_test;
function testBasicOperations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L125"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (5 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L126"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.str() : stdgo.GoString).__copy__());
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L128"
                _buf.reset();
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L129"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (2)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.str() : stdgo.GoString).__copy__());
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L131"
                _buf.truncate((0 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L132"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (3)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.str() : stdgo.GoString).__copy__());
var __tmp__ = _buf.write((_internal.bytes_test.Bytes_test__testbytes._testBytes.__slice__((0 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L135"
                {
                    var _want = @:assignType (1 : stdgo.GoInt);
                    if (((_err != null) || (_n != _want) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L136"
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), (null : stdgo.AnyInterface));
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L138"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (4)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), ("a" : stdgo.GoString));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L140"
                _buf.writeByte(_internal.bytes_test.Bytes_test__teststring._testString[(1 : stdgo.GoInt)]);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L141"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (5)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), ("ab" : stdgo.GoString));
{
                    var __tmp__ = _buf.write((_internal.bytes_test.Bytes_test__testbytes._testBytes.__slice__((2 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L144"
                {
                    var _want = @:assignType (24 : stdgo.GoInt);
                    if (((_err != null) || (_n != _want) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L145"
                        _t.errorf(("Write: got (%d, %v), want (%d, %v)" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), (null : stdgo.AnyInterface));
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L147"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (6)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_internal.bytes_test.Bytes_test__teststring._testString.__slice__((0 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.GoString).__copy__());
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L149"
                _buf.truncate((26 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L150"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (7)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_internal.bytes_test.Bytes_test__teststring._testString.__slice__((0 : stdgo.GoInt), (26 : stdgo.GoInt)) : stdgo.GoString).__copy__());
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L152"
                _buf.truncate((20 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L153"
                _internal.bytes_test.Bytes_test__check._check(_t, ("TestBasicOperations (8)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_internal.bytes_test.Bytes_test__teststring._testString.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.GoString).__copy__());
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L155"
                _internal.bytes_test.Bytes_test__empty._empty(_t, ("TestBasicOperations (9)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (_internal.bytes_test.Bytes_test__teststring._testString.__slice__((0 : stdgo.GoInt), (20 : stdgo.GoInt)) : stdgo.GoString).__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((5 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L156"
                _internal.bytes_test.Bytes_test__empty._empty(_t, ("TestBasicOperations (10)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.str() : stdgo.GoString).__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L158"
                _buf.writeByte(_internal.bytes_test.Bytes_test__teststring._testString[(1 : stdgo.GoInt)]);
var __tmp__ = _buf.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L160"
                {
                    var _want = @:assignType (_internal.bytes_test.Bytes_test__teststring._testString[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_err != null) || (_c != _want) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L161"
                        _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), (null : stdgo.AnyInterface));
                    };
                };
{
                    var __tmp__ = _buf.readByte();
                    _c = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L164"
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L165"
                    _t.errorf(("ReadByte: got (%q, %v), want (%q, %v)" : stdgo.GoString), new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), new stdgo.AnyInterface((0 : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), ({
                        final __t__ = stdgo._internal.io.Io_eof.eOF;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                _i++;
            };
        };
    }
