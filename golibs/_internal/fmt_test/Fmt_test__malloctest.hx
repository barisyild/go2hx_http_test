package _internal.fmt_test;
var _mallocTest : stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_33.T__struct_33> = (new stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_33.T__struct_33>(13, 13, ...[
({ _count : (0 : stdgo.GoInt), _desc : ("Sprintf(\"\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf((stdgo.Go.str() : stdgo.GoString)?.__copy__());
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"xxx\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf(("xxx" : stdgo.GoString));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (0 : stdgo.GoInt), _desc : ("Sprintf(\"%x\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), new stdgo.AnyInterface((7 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%x\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), new stdgo.AnyInterface((65536 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (3 : stdgo.GoInt), _desc : ("Sprintf(\"%80000s\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf(("%80000s" : stdgo.GoString), new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%s\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s" : stdgo.GoString), new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%x %x\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x %x" : stdgo.GoString), new stdgo.AnyInterface((7 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((112 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (1 : stdgo.GoInt), _desc : ("Sprintf(\"%g\")" : stdgo.GoString), _fn : function():Void {
    stdgo._internal.fmt.Fmt_sprintf.sprintf(("%g" : stdgo.GoString), new stdgo.AnyInterface(((3.14159 : stdgo.GoFloat64) : stdgo.GoFloat32), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%s\")" : stdgo.GoString), _fn : function():Void {
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1439"
    _internal.fmt_test.Fmt_test__mallocbuf._mallocBuf.reset();
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1439"
    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocbuf._mallocBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%s" : stdgo.GoString), new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x\")" : stdgo.GoString), _fn : function():Void {
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1440"
    _internal.fmt_test.Fmt_test__mallocbuf._mallocBuf.reset();
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1440"
    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocbuf._mallocBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%x" : stdgo.GoString), new stdgo.AnyInterface((7 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x\")" : stdgo.GoString), _fn : function():Void {
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1441"
    _internal.fmt_test.Fmt_test__mallocbuf._mallocBuf.reset();
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1441"
    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocbuf._mallocBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%x" : stdgo.GoString), new stdgo.AnyInterface((65536 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (2 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%80000s\")" : stdgo.GoString), _fn : function():Void {
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1442"
    _internal.fmt_test.Fmt_test__mallocbuf._mallocBuf.reset();
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1442"
    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocbuf._mallocBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%80000s" : stdgo.GoString), new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33),
({ _count : (0 : stdgo.GoInt), _desc : ("Fprintf(buf, \"%x %x %x\")" : stdgo.GoString), _fn : function():Void {
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1445"
    _internal.fmt_test.Fmt_test__mallocbuf._mallocBuf.reset();
    //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1446"
    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_internal.fmt_test.Fmt_test__mallocbuf._mallocBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%x %x %x" : stdgo.GoString), new stdgo.AnyInterface(_internal.fmt_test.Fmt_test__mallocpointer._mallocPointer, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_internal.fmt_test.Fmt_test__mallocpointer._mallocPointer, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))), new stdgo.AnyInterface(_internal.fmt_test.Fmt_test__mallocpointer._mallocPointer, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
} } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33)].concat([for (i in 13 ... (13 > 13 ? 13 : 13 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _desc : ("" : stdgo.GoString), _fn : null } : _internal.fmt_test.Fmt_test_t__struct_33.T__struct_33)])) : stdgo.Slice<_internal.fmt_test.Fmt_test_t__struct_33.T__struct_33>);
