package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.log.Log;
@:keep @:allow(stdgo._internal.testing.iotest.Iotest.T_smallByteReader_asInterface) class T_smallByteReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_smallbytereader.T_smallByteReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L113"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L114"
            return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n % (3 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _n = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L118"
        if ((_n > (_p.length) : Bool)) {
            _n = (_p.length);
        };
        var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read((_p.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L122"
        if (((_err != null) && (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != ({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("Read(%d bytes at offset %d): %v" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (_n) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/testing/iotest/reader.go#L126"
        return { _0 : _n, _1 : _err };
    }
}
