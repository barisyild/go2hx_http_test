package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.T_teeReader_asInterface) class T_teeReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _t:stdgo.Ref<stdgo._internal.io.Io_t_teereader.T_teeReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.io.Io_t_teereader.T_teeReader> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L621"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L622"
            {
                var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write((_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/io/io.go#L623"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L626"
        return { _0 : _n, _1 : _err };
    }
}
