package _internal.bytes_test;
function testWriteAppend(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _got:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _want:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L333"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                var _b = _got.availableBuffer();
_b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
_want = stdgo._internal.strconv.Strconv_appendint.appendInt(_want, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L337"
                _got.write(_b);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L339"
        if (!stdgo._internal.bytes.Bytes_equal.equal(_got.bytes(), _want)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L340"
            _t.fatalf(("Bytes() = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_got, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer)), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        var _n = @:assignType (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L345"
            _got.reset();
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L346"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                    var _b = _got.availableBuffer();
_b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_i : stdgo.GoInt64), (10 : stdgo.GoInt));
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L349"
                    _got.write(_b);
                    _i++;
                };
            };
        }) : stdgo.GoFloat64);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L352"
        if ((_n > (0 : stdgo.GoFloat64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L353"
            _t.errorf(("allocations occurred while appending" : stdgo.GoString));
        };
    }
