package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function logf(_ctx:stdgo._internal.context.Context_context.Context, _category:stdgo.GoString, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L102"
        if (_internal.runtime.trace_.Trace__isenabled.isEnabled()) {
            var _id = @:assignType (_internal.runtime.trace_.Trace___fromcontext._fromContext(_ctx)._id : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L106"
            _internal.runtime.trace_.Trace___userlog._userLog(_id, _category?.__copy__(), stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
        };
    }
