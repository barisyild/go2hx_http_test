package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function readAll(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (512 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L703"
        while (true) {
            var __tmp__ = _r.read((_b.__slice__((_b.length), _b.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _b = (_b.__slice__(0, ((_b.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L706"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L707"
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    _err = (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L710"
                return { _0 : _b, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L713"
            if ((_b.length) == (_b.capacity)) {
                _b = ((_b.__append__((0 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
    }
