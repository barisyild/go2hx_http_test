package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function log(_ctx:stdgo._internal.context.Context_context.Context, _category:stdgo.GoString, _message:stdgo.GoString):Void {
        var _id = @:assignType (_internal.runtime.trace_.Trace___fromcontext._fromContext(_ctx)._id : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L97"
        _internal.runtime.trace_.Trace___userlog._userLog(_id, _category?.__copy__(), _message?.__copy__());
    }
