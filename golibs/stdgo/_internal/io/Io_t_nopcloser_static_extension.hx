package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.T_nopCloser_asInterface) class T_nopCloser_static_extension {
    @:keep
    @:tdfield
    static public function close( _:stdgo._internal.io.Io_t_nopcloser.T_nopCloser):stdgo.Error {
        @:recv var _:stdgo._internal.io.Io_t_nopcloser.T_nopCloser = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L685"
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.io.Io_t_nopcloser.T_nopCloser, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}
