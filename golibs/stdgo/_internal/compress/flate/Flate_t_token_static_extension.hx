package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_token_asInterface) class T_token_static_extension {
    @:keep
    @:tdfield
    static public function _length( _t:stdgo._internal.compress.flate.Flate_t_token.T_token):stdgo.GoUInt32 {
        @:recv var _t:stdgo._internal.compress.flate.Flate_t_token.T_token = _t;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/token.go#L84"
        return ((((_t - (1073741824u32 : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo._internal.compress.flate.Flate_t_token.T_token)) >> (22i64 : stdgo.GoUInt64) : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _offset( _t:stdgo._internal.compress.flate.Flate_t_token.T_token):stdgo.GoUInt32 {
        @:recv var _t:stdgo._internal.compress.flate.Flate_t_token.T_token = _t;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/token.go#L82"
        return ((_t : stdgo.GoUInt32) & (4194303u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _literal( _t:stdgo._internal.compress.flate.Flate_t_token.T_token):stdgo.GoUInt32 {
        @:recv var _t:stdgo._internal.compress.flate.Flate_t_token.T_token = _t;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/token.go#L79"
        return ((_t - (0u32 : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo._internal.compress.flate.Flate_t_token.T_token) : stdgo.GoUInt32);
    }
}
