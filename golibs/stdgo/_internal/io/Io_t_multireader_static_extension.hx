package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.T_multiReader_asInterface) class T_multiReader_static_extension {
    @:keep
    @:tdfield
    static public function _writeToWithBuffer( _mr:stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>, _w:stdgo._internal.io.Io_writer.Writer, _buf:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader> = _mr;
        var _sum = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L49"
        if ((@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers != null) for (_i => _r in (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers) {
            var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L51"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _r;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_multireaderdott_multireader.__type__stdgodot_internaldotiodotIo_t_multireaderdotT_multiReader })) : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>), _1 : false };
                }, _subMr = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = _subMr._writeToWithBuffer(_w, _buf);
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else {
                    {
                        var __tmp__ = stdgo._internal.io.Io__copybuffer._copyBuffer(_w, _r, _buf);
                        _n = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                };
            };
            _sum = (_sum + (_n) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L57"
            if (_err != null) {
                (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers = ((@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers.__slice__(_i) : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>);
                //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L59"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _sum, _1 : _err };
                    _sum = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers[(_i : stdgo.GoInt)] = (null : stdgo._internal.io.Io_reader.Reader);
        };
        (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers = (null : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>);
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L64"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _sum, _1 : (null : stdgo.Error) };
            _sum = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeTo( _mr:stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader> = _mr;
        var _sum = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L45"
        return ({
            @:explicitConversion final __tmp__ = _mr._writeToWithBuffer(_w, (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            { _0 : __tmp__._0, _1 : __tmp__._1 };
        });
    }
    @:keep
    @:tdfield
    static public function read( _mr:stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _mr:stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader> = _mr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L18"
        while ((((@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L20"
            if (((@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers.length) == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L21"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers[(0 : stdgo.GoInt)];
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_multireaderdott_multireader.__type__stdgodot_internaldotiodotIo_t_multireaderdotT_multiReader })) : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>), _1 : false };
                    }, _r = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers;
                        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L23"
                        continue;
                    };
                };
            };
            {
                var __tmp__ = (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers[(0 : stdgo.GoInt)].read(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L27"
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
                (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers[(0 : stdgo.GoInt)] = stdgo.Go.asInterface((new stdgo._internal.io.Io_t_eofreader.T_eofReader() : stdgo._internal.io.Io_t_eofreader.T_eofReader), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_t_eofreaderdott_eofreader.__type__stdgodot_internaldotiodotIo_t_eofreaderdotT_eofReader);
                (@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers = ((@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>);
            };
            //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L33"
            if (((_n > (0 : stdgo.GoInt) : Bool) || (({
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
                //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L34"
                if (((({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == ({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })) && (((@:checkr _mr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readers.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _err = (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L38"
                return { _0 : _n, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/multi.go#L41"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
