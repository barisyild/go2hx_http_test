package _internal.bytes_test;
function testWriteTo(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L322"
        {
            var _i = @:assignType (3 : stdgo.GoInt);
            while ((_i < (30 : stdgo.GoInt) : Bool)) {
                var _s = @:assignType (_internal.bytes_test.Bytes_test__fillbytes._fillBytes(_t, ("TestWriteTo (1)" : stdgo.GoString), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), (stdgo.Go.str() : stdgo.GoString).__copy__(), (5 : stdgo.GoInt), (_internal.bytes_test.Bytes_test__testbytes._testBytes.__slice__((0 : stdgo.GoInt), ((_internal.bytes_test.Bytes_test__testbytes._testBytes.length) / _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)).__copy__() : stdgo.GoString);
var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L325"
                _buf.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L326"
                _internal.bytes_test.Bytes_test__empty._empty(_t, ("TestWriteTo (2)" : stdgo.GoString), (stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _s.__copy__(), (new stdgo.Slice<stdgo.GoUInt8>((_internal.bytes_test.Bytes_test__teststring._testString.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
                _i = (_i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
    }
