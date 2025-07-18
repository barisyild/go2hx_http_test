package _internal.runtime.trace_;
import stdgo._internal.context.Context;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.runtime.Runtime;
@:structInit @:using(_internal.runtime.trace_.Trace__region_static_extension.Region_static_extension) @:using(_internal.runtime.trace_.Trace__region_static_extension.Region_static_extension) class Region {
    public var _id : stdgo.GoUInt64 = 0;
    public var _regionType : stdgo.GoString = "";
    public function new(?_id:stdgo.GoUInt64, ?_regionType:stdgo.GoString) {
        if (_id != null) this._id = _id;
        if (_regionType != null) this._regionType = _regionType;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }, { name : "_regionType", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new Region(_id, _regionType);
    }
}
