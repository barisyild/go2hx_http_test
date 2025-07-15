package _internal.bytes_test;
function exampleCut():Void {
        var _show = @:assignType (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes_cut.cut((_s : stdgo.Slice<stdgo.GoUInt8>), (_sep : stdgo.Slice<stdgo.GoUInt8>)), _before:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _found:Bool = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L226"
            stdgo._internal.fmt.Fmt_printf.printf(("Cut(%q, %q) = %q, %q, %v\n" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_sep, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_before, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_after, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_found, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L228"
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L229"
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L230"
        _show(("Gopher" : stdgo.GoString), ("er" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L231"
        _show(("Gopher" : stdgo.GoString), ("Badger" : stdgo.GoString));
    }
