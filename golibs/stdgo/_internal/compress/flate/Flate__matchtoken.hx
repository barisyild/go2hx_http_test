package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _matchToken(_xlength:stdgo.GoUInt32, _xoffset:stdgo.GoUInt32):stdgo._internal.compress.flate.Flate_t_token.T_token {
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/token.go#L75"
        return ((((1073741824u32 : stdgo.GoUInt32) + (_xlength << (22i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) + _xoffset : stdgo.GoUInt32) : stdgo._internal.compress.flate.Flate_t_token.T_token);
    }
