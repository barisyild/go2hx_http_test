package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
@:keep @:follow @:using(stdgo._internal.runtime.pprof.Pprof_t__struct_25pointer_static_extension.T__struct_25Pointer_static_extension) @:using(stdgo._internal.runtime.pprof.Pprof_t__struct_25pointerpointer_static_extension.T__struct_25PointerPointer_static_extension) typedef T__struct_25PointerPointer = stdgo.Pointer<stdgo._internal.runtime.pprof.Pprof_t__struct_25pointer.T__struct_25Pointer>;
