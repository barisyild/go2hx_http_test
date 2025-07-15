package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(_internal.runtime.trace_.Trace__task_static_extension.Task_static_extension) @:using(_internal.runtime.trace_.Trace__task_static_extension.Task_static_extension) class Task {
    public var _id : stdgo.GoUInt64 = 0;
    public function new(?_id:stdgo.GoUInt64) {
        if (_id != null) this._id = _id;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }])));
    public function __copy__() {
        return new Task(_id);
    }
}
