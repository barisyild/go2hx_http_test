package _internal.bytes_test;
var unreadRuneErrorTests : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_165.T__struct_165> = (new stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_165.T__struct_165>(5, 5, ...[({ _name : ("Read" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>):Void {
    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L187"
    _r.read((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
} } : _internal.bytes_test.Bytes_test_t__struct_165.T__struct_165), ({ _name : ("ReadByte" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>):Void {
    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L188"
    _r.readByte();
} } : _internal.bytes_test.Bytes_test_t__struct_165.T__struct_165), ({ _name : ("UnreadRune" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>):Void {
    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L189"
    _r.unreadRune();
} } : _internal.bytes_test.Bytes_test_t__struct_165.T__struct_165), ({ _name : ("Seek" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>):Void {
    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L190"
    _r.seek((0i64 : stdgo.GoInt64), (1 : stdgo.GoInt));
} } : _internal.bytes_test.Bytes_test_t__struct_165.T__struct_165), ({ _name : ("WriteTo" : stdgo.GoString), _f : function(_r:stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>):Void {
    //"file:///Users/o/.go/go1.21.3/src/bytes/reader_test.go#L191"
    _r.writeTo(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
} } : _internal.bytes_test.Bytes_test_t__struct_165.T__struct_165)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : _internal.bytes_test.Bytes_test_t__struct_165.T__struct_165)])) : stdgo.Slice<_internal.bytes_test.Bytes_test_t__struct_165.T__struct_165>);
