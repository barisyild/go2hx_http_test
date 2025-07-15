package _internal.bytes_test;
function testWriteInvalidRune(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L422"
        if ((new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>) != null) for (__0 => _r in (new stdgo.Slice<stdgo.GoInt32>(2, 2, ...[(-1 : stdgo.GoInt32), (1114112 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)) {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L424"
            _buf.writeRune(_r);
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L425"
            _internal.bytes_test.Bytes_test__check._check(_t, stdgo._internal.fmt.Fmt_sprintf.sprintf(("TestWriteInvalidRune (%d)" : stdgo.GoString), new stdgo.AnyInterface(_r, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))))?.__copy__(), (stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), ("�" : stdgo.GoString));
        };
    }
