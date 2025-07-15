package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:keep @:allow(_internal.runtime.trace_.Trace_.Region_asInterface) class Region_static_extension {
    @:keep
    @:tdfield
    static public function end( _r:stdgo.Ref<_internal.runtime.trace_.Trace_region.Region>):Void {
        @:recv var _r:stdgo.Ref<_internal.runtime.trace_.Trace_region.Region> = _r;
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L171"
        if (_r == (_internal.runtime.trace_.Trace___noopregion._noopRegion)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L172"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/trace/annotation.go#L174"
        _internal.runtime.trace_.Trace___userregion._userRegion((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (1i64 : stdgo.GoUInt64), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._regionType?.__copy__());
    }
}
