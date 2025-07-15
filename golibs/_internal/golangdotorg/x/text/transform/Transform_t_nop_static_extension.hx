package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(_internal.golangdotorg.x.text.transform.Transform.T_nop_asInterface) class T_nop_static_extension {
    @:keep
    @:tdfield
    static public function span( _:_internal.golangdotorg.x.text.transform.Transform_t_nop.T_nop, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:_internal.golangdotorg.x.text.transform.Transform_t_nop.T_nop = _?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L321"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_src.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function transform( _:_internal.golangdotorg.x.text.transform.Transform_t_nop.T_nop, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _:_internal.golangdotorg.x.text.transform.Transform_t_nop.T_nop = _?.__copy__();
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _n = @:assignType (_dst.__copyTo__(_src) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L314"
        if ((_n < (_src.length) : Bool)) {
            _err = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L317"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _n, _1 : _n, _2 : _err };
            _nDst = __tmp__._0;
            _nSrc = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function reset( __self__:_internal.golangdotorg.x.text.transform.Transform_t_nop.T_nop):Void return @:_5 __self__.reset();
}
