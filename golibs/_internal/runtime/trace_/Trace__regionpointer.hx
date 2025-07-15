package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:follow @:using(_internal.runtime.trace_.Trace__region_static_extension.Region_static_extension) @:using(_internal.runtime.trace_.Trace__regionpointer_static_extension.RegionPointer_static_extension) typedef RegionPointer = stdgo.Pointer<_internal.runtime.trace_.Trace__region.Region>;
