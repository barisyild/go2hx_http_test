package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:local @:using(_internal.runtime.trace_.Trace__t__struct_0_static_extension.T__struct_0_static_extension) @:using(_internal.runtime.trace_.Trace__t__struct_0_static_extension.T__struct_0_static_extension) @:using(_internal.runtime.trace_.Trace__t__struct_0_static_extension.T__struct_0_static_extension) typedef T__struct_0 = {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync_mutex.Mutex;
    public var _enabled : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_;
};
