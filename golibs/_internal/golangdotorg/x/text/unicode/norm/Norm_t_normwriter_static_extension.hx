package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_normWriter_asInterface) class T_normWriter_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter.T_normWriter>):stdgo.Error {
        @:recv var _w:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter.T_normWriter> = _w;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L53"
        if ((((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L55"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L56"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L59"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter.T_normWriter>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normwriter.T_normWriter> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {};
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L22"
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            var _m = @:assignType (_data.length : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L25"
            if ((_m > (4000 : stdgo.GoInt) : Bool)) {
                _m = (4000 : stdgo.GoInt);
            };
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src = _internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes((_data.__slice__(0, _m) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc = _m;
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _internal.golangdotorg.x.text.unicode.norm.Norm__doappend._doAppend((stdgo.Go.setRef((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, (0 : stdgo.GoInt));
            _data = (_data.__slice__(_m) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + (_m) : stdgo.GoInt);
            var _i = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__lastboundary._lastBoundary((stdgo.Go.setRef((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_forminfodott_forminfo.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_forminfodotT_formInfo })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>), (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L37"
            if (_i == ((-1 : stdgo.GoInt))) {
                _i = (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L40"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L41"
                {
                    {
                        var __tmp__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L42"
                        break;
                    };
                };
                var _bn = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__copyTo__(((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _bn) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L48"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
