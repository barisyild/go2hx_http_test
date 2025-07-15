package _internal.runtime.internal.atomic_;
@:structInit @:using(_internal.runtime.internal.atomic_.Atomic__unsafepointer_static_extension.UnsafePointer_static_extension) @:using(_internal.runtime.internal.atomic_.Atomic__unsafepointer_static_extension.UnsafePointer_static_extension) class UnsafePointer {
    public var _noCopy : _internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy = ({} : _internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _value : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_noCopy:_internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy, ?_value:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_noCopy", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotruntimedotinternaldotatomic_dotatomic__t_nocopydott_nocopy.__type___internaldotruntimedotinternaldotatomic_dotAtomic__t_nocopydotT_noCopy }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }])));
    public function __copy__() {
        return new UnsafePointer(_noCopy, _value);
    }
}
