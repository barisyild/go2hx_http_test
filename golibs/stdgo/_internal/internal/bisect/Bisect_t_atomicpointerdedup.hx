package stdgo._internal.internal.bisect;
@:structInit @:using(stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup_static_extension.T_atomicPointerDedup_static_extension) @:using(stdgo._internal.internal.bisect.Bisect_t_atomicpointerdedup_static_extension.T_atomicPointerDedup_static_extension) class T_atomicPointerDedup {
    public var _p : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_p:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }])));
    public function __copy__() {
        return new T_atomicPointerDedup(_p);
    }
}
