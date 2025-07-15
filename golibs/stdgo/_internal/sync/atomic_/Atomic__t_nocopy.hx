package stdgo._internal.sync.atomic_;
@:structInit @:using(stdgo._internal.sync.atomic_.Atomic__t_nocopy_static_extension.T_noCopy_static_extension) @:using(stdgo._internal.sync.atomic_.Atomic__t_nocopy_static_extension.T_noCopy_static_extension) class T_noCopy {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_noCopy();
    }
}
