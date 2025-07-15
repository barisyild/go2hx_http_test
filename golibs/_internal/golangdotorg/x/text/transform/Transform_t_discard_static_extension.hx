package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(_internal.golangdotorg.x.text.transform.Transform.T_discard_asInterface) class T_discard_static_extension {
    @:keep
    @:tdfield
    static public function transform( _:_internal.golangdotorg.x.text.transform.Transform_t_discard.T_discard, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _:_internal.golangdotorg.x.text.transform.Transform_t_discard.T_discard = _?.__copy__();
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L327"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (_src.length), _2 : (null : stdgo.Error) };
            _nDst = __tmp__._0;
            _nSrc = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function reset( __self__:_internal.golangdotorg.x.text.transform.Transform_t_discard.T_discard):Void return @:_5 __self__.reset();
}
