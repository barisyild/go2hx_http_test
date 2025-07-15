package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function _newID():stdgo.GoUInt64 {
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L87"
        return stdgo._internal.sync.atomic_.Atomic__adduint64.addUint64(stdgo.Go.pointer(_internal.runtime.trace_.Trace___lasttaskid._lastTaskID), (1i64 : stdgo.GoUInt64));
    }
