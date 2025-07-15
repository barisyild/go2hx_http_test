package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_t_littleendian_static_extension.T_littleEndian_static_extension) @:using(stdgo._internal.encoding.binary.Binary_t_littleendian_static_extension.T_littleEndian_static_extension) class T_littleEndian {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_littleEndian();
    }
}
