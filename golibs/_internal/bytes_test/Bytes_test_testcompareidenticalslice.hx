package _internal.bytes_test;
function testCompareIdenticalSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = ((("Hello Gophers!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L60"
        if (stdgo._internal.bytes.Bytes_compare.compare(_b, _b) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L61"
            _t.error(new stdgo.AnyInterface(("b != b" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L63"
        if (stdgo._internal.bytes.Bytes_compare.compare(_b, (_b.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/compare_test.go#L64"
            _t.error(new stdgo.AnyInterface(("b > b[:1] failed" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
