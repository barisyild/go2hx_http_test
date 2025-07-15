package _internal.fmt_test;
function benchmarkManyArgs(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1388"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1390"
            while (_pb.next()) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1391"
                _buf.reset();
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1392"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%2d/%2d/%2d %d:%d:%d %s %s\n" : stdgo.GoString), new stdgo.AnyInterface((3 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((4 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((5 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((11 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((12 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((13 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(("hello" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        });
    }
