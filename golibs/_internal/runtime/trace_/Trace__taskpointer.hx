package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:follow @:using(_internal.runtime.trace_.Trace__task_static_extension.Task_static_extension) @:using(_internal.runtime.trace_.Trace__taskpointer_static_extension.TaskPointer_static_extension) typedef TaskPointer = stdgo.Pointer<_internal.runtime.trace_.Trace__task.Task>;
