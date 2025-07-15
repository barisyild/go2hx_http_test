package _internal.bytes_test;
function exampleIndexFunc():Void {
        var _f = @:assignType (function(_c:stdgo.GoInt32):Bool {
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L329"
            return stdgo._internal.unicode.Unicode_is_.is_(stdgo._internal.unicode.Unicode_han.han, _c);
        } : stdgo.GoInt32 -> Bool);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L331"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_indexfunc.indexFunc(((("Hello, 世界" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _f), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L332"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_indexfunc.indexFunc(((("Hello, world" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _f), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
    }
