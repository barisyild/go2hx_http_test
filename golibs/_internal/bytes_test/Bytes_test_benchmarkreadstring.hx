package _internal.bytes_test;
function benchmarkReadString(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        {};
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _data[(32767 : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L522"
        _b.setBytes((32768i64 : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L523"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                var _buf = stdgo._internal.bytes.Bytes_newbuffer.newBuffer(_data);
var __tmp__ = _buf.readString((120 : stdgo.GoUInt8)), __0:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L526"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/buffer_test.go#L527"
                    _b.fatal(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                _i++;
            };
        };
    }
