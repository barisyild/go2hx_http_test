package stdgo._internal.encoding.base64;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_encoder_asInterface) class T_encoder_static_extension {
    @:keep
    @:tdfield
    static public function close( _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder> = _e;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L260"
        if ((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) && ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L261"
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc.encode(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf) : stdgo.Slice<stdgo.GoUInt8>));
            {
                var __tmp__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc.encodedLen((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf)) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf = (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L265"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
    }
    @:keep
    @:tdfield
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_encoder.T_encoder> = _e;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L211"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L212"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L216"
        if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf > (0 : stdgo.GoInt) : Bool)) {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L218"
            {
                _i = (0 : stdgo.GoInt);
                while (((_i < (_p.length) : Bool) && ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf < (3 : stdgo.GoInt) : Bool) : Bool)) {
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf : stdgo.GoInt)] = _p[(_i : stdgo.GoInt)];
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L220"
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf++;
                    _i++;
                };
            };
            _n = (_n + (_i) : stdgo.GoInt);
            _p = (_p.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L224"
            if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L225"
                return { _0 : _n, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L227"
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc.encode(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L228"
            {
                {
                    var __tmp__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L229"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf = (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L235"
        while (((_p.length) >= (3 : stdgo.GoInt) : Bool)) {
            var _nn = @:assignType (768 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L237"
            if ((_nn > (_p.length) : Bool)) {
                _nn = (_p.length);
                _nn = (_nn - ((_nn % (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L241"
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enc.encode(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (_p.__slice__(0, _nn) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L242"
            {
                {
                    var __tmp__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__((0 : stdgo.GoInt), ((_nn / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
                };
                if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L243"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _n = (_n + (_nn) : stdgo.GoInt);
            _p = (_p.__slice__(_nn) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L250"
        ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_p);
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbuf = (_p.length);
        _n = (_n + ((_p.length)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L253"
        return { _0 : _n, _1 : _err };
    }
}
