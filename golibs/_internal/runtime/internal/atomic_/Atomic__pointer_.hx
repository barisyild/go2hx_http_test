package _internal.runtime.internal.atomic_;
@:structInit @:using(_internal.runtime.internal.atomic_.Atomic__pointer__static_extension.Pointer__static_extension) @:using(_internal.runtime.internal.atomic_.Atomic__pointer__static_extension.Pointer__static_extension) class Pointer_<T_> {
    public var _u : _internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer = ({} : _internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer);
    public function new(?_u:_internal.runtime.internal.atomic_.Atomic__unsafepointer.UnsafePointer) {
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_u", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotruntimedotinternaldotatomic_dotatomic__unsafepointerdotunsafepointer.__type___internaldotruntimedotinternaldotatomic_dotAtomic__unsafepointerdotUnsafePointer }, optional : false }])));
    public function __copy__() {
        return new Pointer_<T_>(_u);
    }
}
