package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:follow @:using(stdgo._internal.compress.flate.Flate_t_token_static_extension.T_token_static_extension) @:using(stdgo._internal.compress.flate.Flate_t_tokenpointer_static_extension.T_tokenPointer_static_extension) typedef T_tokenPointer = stdgo.Pointer<stdgo._internal.compress.flate.Flate_t_token.T_token>;
