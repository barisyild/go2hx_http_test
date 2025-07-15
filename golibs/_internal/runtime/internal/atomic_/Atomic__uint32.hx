package _internal.runtime.internal.atomic_;
@:structInit @:using(_internal.runtime.internal.atomic_.Atomic__uint32_static_extension.Uint32_static_extension) @:using(_internal.runtime.internal.atomic_.Atomic__uint32_static_extension.Uint32_static_extension) class Uint32 {
    public var _noCopy : _internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy = ({} : _internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _value : stdgo.GoUInt32 = 0;
    public function new(?_noCopy:_internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy, ?_value:stdgo.GoUInt32) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_noCopy", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotruntimedotinternaldotatomic_dotatomic__t_nocopydott_nocopy.__type___internaldotruntimedotinternaldotatomic_dotAtomic__t_nocopydotT_noCopy }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new Uint32(_noCopy, _value);
    }
}
