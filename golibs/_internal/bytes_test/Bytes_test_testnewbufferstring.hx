package _internal.bytes_test;
function testNewBufferString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _buf = stdgo._internal.bytes.Bytes_newbufferstring.newBufferString(_internal.bytes_test.Bytes_test__teststring._testString?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L99"
        _internal.bytes_test.Bytes_test__check._check(_t, ("NewBufferString" : stdgo.GoString), _buf, _internal.bytes_test.Bytes_test__teststring._testString?.__copy__());
    }
