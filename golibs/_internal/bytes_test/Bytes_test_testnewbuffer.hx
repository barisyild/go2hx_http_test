package _internal.bytes_test;
function testNewBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_internal.bytes_test.Bytes_test__testbytes._testBytes);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L94"
        _internal.bytes_test.Bytes_test__check._check(_t, ("NewBuffer" : stdgo.GoString), _buf, _internal.bytes_test.Bytes_test__teststring._testString?.__copy__());
    }
