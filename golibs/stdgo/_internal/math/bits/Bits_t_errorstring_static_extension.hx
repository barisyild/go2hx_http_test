package stdgo._internal.math.bits;
@:keep @:allow(stdgo._internal.math.bits.Bits.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.math.bits.Bits_t_errorstring.T_errorString):stdgo.GoString {
        @:recv var _e:stdgo._internal.math.bits.Bits_t_errorstring.T_errorString = _e;
        //"file:///Users/o/.go/go1.21.3/src/math/bits/bits_errors_bootstrap.go#L18"
        return (("runtime error: " : stdgo.GoString) + (_e : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function runtimeError( _e:stdgo._internal.math.bits.Bits_t_errorstring.T_errorString):Void {
        @:recv var _e:stdgo._internal.math.bits.Bits_t_errorstring.T_errorString = _e;
    }
}
