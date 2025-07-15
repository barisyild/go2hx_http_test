package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
function startRegion(_ctx:stdgo._internal.context.Context_context.Context, _regionType:stdgo.GoString):stdgo.Ref<_internal.runtime.trace_.Trace_region.Region> {
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L153"
        if (!_internal.runtime.trace_.Trace__isenabled.isEnabled()) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L154"
            return _internal.runtime.trace_.Trace___noopregion._noopRegion;
        };
        var _id = @:assignType (_internal.runtime.trace_.Trace___fromcontext._fromContext(_ctx)._id : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L157"
        _internal.runtime.trace_.Trace___userregion._userRegion(_id, (0i64 : stdgo.GoUInt64), _regionType?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L158"
        return (stdgo.Go.setRef((new _internal.runtime.trace_.Trace_region.Region(_id, _regionType?.__copy__()) : _internal.runtime.trace_.Trace_region.Region), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotruntimedottrace_dottrace_regiondotregion.__type___internaldotruntimedottrace_dotTrace_regiondotRegion })) : stdgo.Ref<_internal.runtime.trace_.Trace_region.Region>);
    }
