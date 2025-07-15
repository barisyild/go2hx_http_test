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
function _writeMultiple(_s:stdgo._internal.fmt.Fmt_state.State, _text:stdgo.GoString, _count:stdgo.GoInt):Void {
        //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L45"
        if (((_text.length) > (0 : stdgo.GoInt) : Bool)) {
            var _b = (_text : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L47"
            while ((_count > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L48"
                _s.write(_b);
                _count--;
            };
        };
    }
