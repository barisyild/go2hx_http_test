package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_readLogger_asInterface) class T_readLogger_static_extension {
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/logger.go#L41"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/logger.go#L42"
            stdgo._internal.log.Log_printf.printf(("%s %x: %v" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/logger.go#L44"
            stdgo._internal.log.Log_printf.printf(("%s %x" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/logger.go#L46"
        return { _0 : _n, _1 : _err };
    }
}
