package _internal.runtime.internal.atomic_;
@:structInit @:using(_internal.runtime.internal.atomic_.Atomic__uint64_static_extension.Uint64_static_extension) @:using(_internal.runtime.internal.atomic_.Atomic__uint64_static_extension.Uint64_static_extension) class Uint64 {
    public var _noCopy : _internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy = ({} : _internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy);
    @:optional
    public var __0 : _internal.runtime.internal.atomic_.Atomic__t_align64.T_align64 = ({} : _internal.runtime.internal.atomic_.Atomic__t_align64.T_align64);
    public var _value : stdgo.GoUInt64 = 0;
    public function new(?_noCopy:_internal.runtime.internal.atomic_.Atomic__t_nocopy.T_noCopy, ?__0:_internal.runtime.internal.atomic_.Atomic__t_align64.T_align64, ?_value:stdgo.GoUInt64) {
        if (_noCopy != null) this._noCopy = _noCopy;
        if (__0 != null) this.__0 = __0;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_noCopy", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotruntimedotinternaldotatomic_dotatomic__t_nocopydott_nocopy.__type___internaldotruntimedotinternaldotatomic_dotAtomic__t_nocopydotT_noCopy }, optional : false }, { name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotruntimedotinternaldotatomic_dotatomic__t_align64dott_align64.__type___internaldotruntimedotinternaldotatomic_dotAtomic__t_align64dotT_align64 }, optional : false }, { name : "_value", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }, optional : false }])));
    public function __copy__() {
        return new Uint64(_noCopy, __0, _value);
    }
}
