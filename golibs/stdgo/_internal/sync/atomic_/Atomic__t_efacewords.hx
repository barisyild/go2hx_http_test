package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__t_efacewords_static_extension.T_efaceWords_static_extension) @:using(stdgo._internal.sync.atomic_.Atomic__t_efacewords_static_extension.T_efaceWords_static_extension) class T_efaceWords {
    public var _typ : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public var _data : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_typ:stdgo._internal.unsafe.Unsafe.UnsafePointer, ?_data:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_typ != null) this._typ = _typ;
        if (_data != null) this._data = _data;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }, { name : "_data", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(unsafepointer_kind) }, optional : false }])));
    public function __copy__() {
        return new T_efaceWords(_typ, _data);
    }
}
