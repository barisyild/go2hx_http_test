package stdgo._internal.encoding.binary;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.reflect.Reflect;
function size(_v:stdgo.AnyInterface):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/encoding/binary/binary.go#L467"
        return stdgo._internal.encoding.binary.Binary__datasize._dataSize(stdgo._internal.reflect.Reflect_indirect.indirect(stdgo._internal.reflect.Reflect_valueof.valueOf(_v)?.__copy__())?.__copy__());
    }
