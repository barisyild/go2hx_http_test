package _internal.runtime.internal.atomic_;
@:structInit @:using(_internal.runtime.internal.atomic_.Atomic__bool__static_extension.Bool__static_extension) @:using(_internal.runtime.internal.atomic_.Atomic__bool__static_extension.Bool__static_extension) class Bool_ {
    public var _u : _internal.runtime.internal.atomic_.Atomic__uint8.Uint8 = ({} : _internal.runtime.internal.atomic_.Atomic__uint8.Uint8);
    public function new(?_u:_internal.runtime.internal.atomic_.Atomic__uint8.Uint8) {
        if (_u != null) this._u = _u;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_u", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotruntimedotinternaldotatomic_dotatomic__uint8dotuint8.__type___internaldotruntimedotinternaldotatomic_dotAtomic__uint8dotUint8 }, optional : false }])));
    public function __copy__() {
        return new Bool_(_u);
    }
}
