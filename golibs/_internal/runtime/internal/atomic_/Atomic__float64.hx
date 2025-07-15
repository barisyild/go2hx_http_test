package _internal.runtime.internal.atomic_;
@:structInit @:using(_internal.runtime.internal.atomic_.Atomic__float64_static_extension.Float64_static_extension) @:using(_internal.runtime.internal.atomic_.Atomic__float64_static_extension.Float64_static_extension) class Float64 {
    public var _u : _internal.runtime.internal.atomic_.Atomic__uint64.Uint64 = ({} : _internal.runtime.internal.atomic_.Atomic__uint64.Uint64);
    public function new(?_u:_internal.runtime.internal.atomic_.Atomic__uint64.Uint64) {
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_u", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotruntimedotinternaldotatomic_dotatomic__uint64dotuint64.__type___internaldotruntimedotinternaldotatomic_dotAtomic__uint64dotUint64 }, optional : false }])));
    public function __copy__() {
        return new Float64(_u);
    }
}
