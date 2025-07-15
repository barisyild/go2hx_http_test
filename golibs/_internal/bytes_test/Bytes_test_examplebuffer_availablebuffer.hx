package _internal.bytes_test;
function exampleBuffer_AvailableBuffer():Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L43"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (4 : stdgo.GoInt) : Bool)) {
                var _b = _buf.availableBuffer();
_b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
_b = (_b.__append__((32 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L47"
                _buf.write(_b);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/example_test.go#L49"
        stdgo._internal.os.Os_stdout.stdout.write(_buf.bytes());
    }
