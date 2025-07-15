package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
@:keep @:allow(stdgo._internal.math.big.Big.ErrNaN_asInterface) class ErrNaN_static_extension {
    @:keep
    @:tdfield
    static public function error( _err:stdgo._internal.math.big.Big_errnan.ErrNaN):stdgo.GoString {
        @:recv var _err:stdgo._internal.math.big.Big_errnan.ErrNaN = _err?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/math/big/float.go#L82"
        return _err._msg?.__copy__();
    }
}
