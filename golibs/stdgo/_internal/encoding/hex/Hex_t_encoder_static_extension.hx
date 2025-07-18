package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L160"
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {
            var _chunkSize = @:assignType (512 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L162"
            if (((_p.length) < _chunkSize : Bool)) {
                _chunkSize = (_p.length);
            };
            var _written:stdgo.GoInt = (0 : stdgo.GoInt);
            var _encoded = @:assignType (stdgo._internal.encoding.hex.Hex_encode.encode(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _chunkSize) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            {
                var __tmp__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, _encoded) : stdgo.Slice<stdgo.GoUInt8>));
                _written = @:tmpset0 __tmp__._0;
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + ((_written / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            _p = (_p.__slice__(_chunkSize) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L172"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
