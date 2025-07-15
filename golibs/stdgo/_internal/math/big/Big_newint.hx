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
function newInt(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        var _u = @:assignType (_x : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L82"
        if ((_x < (0i64 : stdgo.GoInt64) : Bool)) {
            _u = -_u;
        };
        var _abs:stdgo.Slice<stdgo._internal.math.big.Big_word.Word> = (null : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L86"
        if (_x == ((0i64 : stdgo.GoInt64))) {} else if ((true && ((_u >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) != (0i64 : stdgo.GoUInt64)) : Bool)) {
            _abs = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(2, 2, ...[(_u : stdgo._internal.math.big.Big_word.Word), ((_u >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        } else {
            _abs = (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(_u : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_word.Word>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L92"
        return (stdgo.Go.setRef(({ _neg : (_x < (0i64 : stdgo.GoInt64) : Bool), _abs : _abs } : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    }
