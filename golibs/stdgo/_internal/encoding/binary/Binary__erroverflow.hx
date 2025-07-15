package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
var _errOverflow : stdgo.Error = stdgo._internal.errors.Errors_new_.new_(("binary: varint overflows a 64-bit integer" : stdgo.GoString));
