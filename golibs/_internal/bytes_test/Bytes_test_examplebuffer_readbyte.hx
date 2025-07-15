package _internal.bytes_test;
function exampleBuffer_ReadByte():Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L113"
        _b.grow((64 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L114"
        _b.write(((("abcde" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var __tmp__ = _b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L116"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L117"
            throw ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L119"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L120"
        stdgo._internal.fmt.Fmt_println.println(new stdgo.AnyInterface((_b.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
