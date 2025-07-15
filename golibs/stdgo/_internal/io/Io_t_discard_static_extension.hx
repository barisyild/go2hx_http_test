package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    @:tdfield
    static public function readFrom( _:stdgo._internal.io.Io_t_discard.T_discard, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_t_discard.T_discard = _?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        var _bufp = (stdgo.Go.typeAssert(stdgo._internal.io.Io__blackholepool._blackHolePool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
        var _readSize = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L657"
        while (true) {
            {
                var __tmp__ = _r.read((_bufp : stdgo.Slice<stdgo.GoUInt8>));
                _readSize = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + ((_readSize : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L660"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L661"
                stdgo._internal.io.Io__blackholepool._blackHolePool.put(new stdgo.AnyInterface(_bufp, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))));
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L662"
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
                    //"file:///Users/o/.go/go1.21.3/src/io/io.go#L663"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/io/io.go#L665"
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _:stdgo._internal.io.Io_t_discard.T_discard, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_t_discard.T_discard = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L644"
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function write( _:stdgo._internal.io.Io_t_discard.T_discard, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.io.Io_t_discard.T_discard = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L640"
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
