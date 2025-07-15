package stdgo._internal.crypto.elliptic;
@:structInit @:using(stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension) @:using(stdgo._internal.crypto.elliptic.Elliptic_t_nistcurve_static_extension.T_nistCurve_static_extension) class T_nistCurve<Point> {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_nistCurve<Point>();
    }
}
