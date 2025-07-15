package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__pointer__static_extension.Pointer__static_extension) @:using(stdgo._internal.sync.atomic_.Atomic__pointer__static_extension.Pointer__static_extension) class Pointer_<T_> {
    @:optional
    public var __0 : stdgo.GoArray<stdgo.Pointer<T_>> = new stdgo.GoArray<stdgo.Pointer<T_>>(0, 0);
    @:optional
    public var __1 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    public var _v : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?__0:stdgo.GoArray<stdgo.Pointer<T_>>, ?__1:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?_v:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (__0 != null) this.__0 = __0;
        if (__1 != null) this.__1 = __1;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.typeParam("T", []) }) }, 0) }, optional : false }, { name : "__1", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__t_nocopydott_nocopy.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__t_nocopydotT_noCopy }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }])));
    public function __copy__() {
        return new Pointer_<T_>(__0, __1, _v);
    }
}
