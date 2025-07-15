package _internal.bytes_test;
function testNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L252"
        if ((_b.string() : stdgo.GoString) != (("<nil>" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L253"
            _t.errorf(("expected <nil>; got %q" : stdgo.GoString), new stdgo.AnyInterface((_b.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
