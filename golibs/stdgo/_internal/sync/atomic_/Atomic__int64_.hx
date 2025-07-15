package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension) @:using(stdgo._internal.sync.atomic_.Atomic__int64__static_extension.Int64__static_extension) class Int64_ {
    @:optional
    public var __0 : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy = ({} : stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy);
    @:optional
    public var __1 : stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64 = ({} : stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64);
    public var _v : stdgo.GoInt64 = 0;
    public function new(?__0:stdgo._internal.sync.atomic_.Atomic__t_nocopy.T_noCopy, ?__1:stdgo._internal.sync.atomic_.Atomic__t_align64.T_align64, ?_v:stdgo.GoInt64) {
        if (__0 != null) this.__0 = __0;
        if (__1 != null) this.__1 = __1;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__t_nocopydott_nocopy.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__t_nocopydotT_noCopy }, optional : false }, { name : "__1", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__t_align64dott_align64.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__t_align64dotT_align64 }, optional : false }, { name : "_v", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new Int64_(__0, __1, _v);
    }
}
