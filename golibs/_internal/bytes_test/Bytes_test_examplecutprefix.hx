package _internal.bytes_test;
function exampleCutPrefix():Void {
        var _show = @:assignType (function(_s:stdgo.GoString, _sep:stdgo.GoString):Void {
            var __tmp__ = stdgo._internal.bytes.Bytes_cutprefix.cutPrefix((_s : stdgo.Slice<stdgo.GoUInt8>), (_sep : stdgo.Slice<stdgo.GoUInt8>)), _after:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _found:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L242"
            stdgo._internal.fmt.Fmt_printf.printf(("CutPrefix(%q, %q) = %q, %v\n" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_sep, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_after, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_found, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        } : (stdgo.GoString, stdgo.GoString) -> Void);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L244"
        _show(("Gopher" : stdgo.GoString), ("Go" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L245"
        _show(("Gopher" : stdgo.GoString), ("ph" : stdgo.GoString));
    }
