package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:follow @:using(stdgo._internal.compress.flate.Flate_internalerror_static_extension.InternalError_static_extension) @:using(stdgo._internal.compress.flate.Flate_internalerrorpointer_static_extension.InternalErrorPointer_static_extension) typedef InternalErrorPointer = stdgo.Pointer<stdgo._internal.compress.flate.Flate_internalerror.InternalError>;
