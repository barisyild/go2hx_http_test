package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(_internal.runtime.trace_.Trace__t_tracecontextkey_static_extension.T_traceContextKey_static_extension) @:using(_internal.runtime.trace_.Trace__t_tracecontextkey_static_extension.T_traceContextKey_static_extension) class T_traceContextKey {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_traceContextKey();
    }
}
