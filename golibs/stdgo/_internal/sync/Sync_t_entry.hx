package stdgo._internal.sync;
@:structInit @:using(stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension) @:using(stdgo._internal.sync.Sync_t_entry_static_extension.T_entry_static_extension) class T_entry {
    public var _p : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface> = ({} : stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface>);
    public function new(?_p:stdgo._internal.sync.atomic_.Atomic__pointer_.Pointer_<stdgo.AnyInterface>) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_p", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__pointer_dotpointer_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__pointer_dotPointer_ }, optional : false }])));
    public function __copy__() {
        return new T_entry(_p);
    }
}
