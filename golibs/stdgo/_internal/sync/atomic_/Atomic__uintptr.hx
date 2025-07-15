package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__uintptr_static_extension.Uintptr_static_extension) @:using(stdgo._internal.sync.atomic_.Atomic__uintptr_static_extension.Uintptr_static_extension) class Uintptr {
    @:optional
    public var __0 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _v : stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
    public function new(?__0:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?_v:stdgo.GoUIntptr) {
        if (__0 != null) this.__0 = __0;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__t_nocopydott_nocopy.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__t_nocopydotT_noCopy }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uintptr_kind) }, optional : false }])));
    public function __copy__() {
        return new Uintptr(__0, _v);
    }
}
