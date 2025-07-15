package _internal.bytes_test;
function exampleFieldsFunc():Void {
        var _f = @:assignType (function(_c:stdgo.GoInt32):Bool {
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L283"
            return (!stdgo._internal.unicode.Unicode_isletter.isLetter(_c) && !stdgo._internal.unicode.Unicode_isnumber.isNumber(_c) : Bool);
        } : stdgo.GoInt32 -> Bool);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L285"
        stdgo._internal.fmt.Fmt_printf.printf(("Fields are: %q" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc(((("  foo1;bar2,baz3..." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _f), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
    }
