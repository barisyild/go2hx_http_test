package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function _copyBuffer(_dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _written = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L411"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _src;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writertodotwriterto.__type__stdgodot_internaldotiodotIo_writertodotWriterTo) : stdgo._internal.io.Io_writerto.WriterTo), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_writerto.WriterTo), _1 : false };
            }, _wt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L412"
                return ({
                    @:explicitConversion final __tmp__ = _wt.writeTo(_dst);
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L415"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _dst;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerfromdotreaderfrom.__type__stdgodot_internaldotiodotIo_readerfromdotReaderFrom) : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : false };
            }, _rt = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L416"
                return ({
                    @:explicitConversion final __tmp__ = _rt.readFrom(_src);
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L418"
        if (_buf == null) {
            var _size = @:assignType (32768 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L420"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _src;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_limitedreaderdotlimitedreader.__type__stdgodot_internaldotiodotIo_limitedreaderdotLimitedReader })) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
                }, _l = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((_size : stdgo.GoInt64) > (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/io/io.go#L421"
                    if (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n < (1i64 : stdgo.GoInt64) : Bool)) {
                        _size = (1 : stdgo.GoInt);
                    } else {
                        _size = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : stdgo.GoInt);
                    };
                };
            };
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L429"
        while (true) {
            var __tmp__ = _src.read(_buf), _nr:stdgo.GoInt = __tmp__._0, _er:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L431"
            if ((_nr > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = _dst.write((_buf.__slice__((0 : stdgo.GoInt), _nr) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _ew:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L433"
                if (((_nw < (0 : stdgo.GoInt) : Bool) || (_nr < _nw : Bool) : Bool)) {
                    _nw = (0 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/io/io.go#L435"
                    if (_ew == null) {
                        _ew = stdgo._internal.io.Io__errinvalidwrite._errInvalidWrite;
                    };
                };
                _written = (_written + ((_nw : stdgo.GoInt64)) : stdgo.GoInt64);
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L440"
                if (_ew != null) {
                    _err = _ew;
                    //"file:///Users/o/.go/go1.21.3/src/io/io.go#L442"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L444"
                if (_nr != (_nw)) {
                    _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
                    //"file:///Users/o/.go/go1.21.3/src/io/io.go#L446"
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L449"
            if (_er != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L450"
                if (({
                    final __t__ = _er;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) != (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    _err = _er;
                };
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L453"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L456"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _written, _1 : _err };
            _written = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
