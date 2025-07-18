package stdgo._internal.encoding.hex;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.encoding.hex.Hex.T_dumper_asInterface) class T_dumper_static_extension {
    @:keep
    @:tdfield
    static public function close( _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper>):stdgo.Error {
        @:recv var _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper> = _h;
        var _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L305"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L306"
            return _err;
        };
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L309"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L310"
            return _err;
        };
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(0 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(1 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        var _nBytes = @:assignType ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L318"
        while (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used < (16 : stdgo.GoInt) : Bool)) {
            var _l = @:assignType (3 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L320"
            if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used == ((7 : stdgo.GoInt))) {
                _l = (4 : stdgo.GoInt);
            } else if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used == ((15 : stdgo.GoInt))) {
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L326"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L327"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L329"
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used++;
        };
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightChars[(_nBytes : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightChars[(_nBytes + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        {
            var __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightChars.__slice__(0, (_nBytes + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L334"
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _h:stdgo.Ref<stdgo._internal.encoding.hex.Hex_t_dumper.T_dumper> = _h;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L245"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L246"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors_new_.new_(("encoding/hex: dumper closed" : stdgo.GoString)) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L252"
        if (_data != null) for (_i => _ in _data) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L253"
            if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used == ((0 : stdgo.GoInt))) {
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(0 : stdgo.GoInt)] = (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(1 : stdgo.GoInt)] = (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(2 : stdgo.GoInt)] = (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(3 : stdgo.GoInt)] = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L260"
                stdgo._internal.encoding.hex.Hex_encode.encode(((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(12 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(13 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                {
                    var __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L264"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L265"
                    return { _0 : _n, _1 : _err };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L268"
            stdgo._internal.encoding.hex.Hex_encode.encode(((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_data.__slice__(_i, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(2 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
            var _l = @:assignType (3 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L271"
            if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used == ((7 : stdgo.GoInt))) {
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                _l = (4 : stdgo.GoInt);
            } else if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used == ((15 : stdgo.GoInt))) {
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(3 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(4 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                _l = (5 : stdgo.GoInt);
            };
            {
                var __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L283"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L284"
                return { _0 : _n, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L286"
            _n++;
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightChars[((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used : stdgo.GoInt)] = stdgo._internal.encoding.hex.Hex__tochar._toChar(_data[(_i : stdgo.GoInt)]);
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L288"
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used++;
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L289"
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n++;
            //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L290"
            if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used == ((16 : stdgo.GoInt))) {
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightChars[(16 : stdgo.GoInt)] = (124 : stdgo.GoUInt8);
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightChars[(17 : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
                {
                    var __tmp__ = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightChars.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L294"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L295"
                    return { _0 : _n, _1 : _err };
                };
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used = (0 : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/hex/hex.go#L300"
        return { _0 : _n, _1 : _err };
    }
}
