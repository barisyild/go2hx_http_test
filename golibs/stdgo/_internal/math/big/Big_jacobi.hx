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
function jacobi(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L938"
        if ((((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs.length == (0 : stdgo.GoInt)) || (((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs[(0 : stdgo.GoInt)] & (1u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (0u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L939"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("big: invalid 2nd argument to Int.Jacobi: need odd integer but got %s" : stdgo.GoString), new stdgo.AnyInterface((_y.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _a:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _b:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _c:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L947"
        _a.set(_x);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L948"
        _b.set(_y);
        var _j = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L951"
        if (_b._neg) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L952"
            if (_a._neg) {
                _j = (-1 : stdgo.GoInt);
            };
            _b._neg = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L958"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L959"
            if (_b.cmp(stdgo._internal.math.big.Big__intone._intOne) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L960"
                return _j;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L962"
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L963"
                return (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L965"
            _a.mod((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L966"
            if ((_a._abs.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L967"
                return (0 : stdgo.GoInt);
            };
            var _s = @:assignType (_a._abs._trailingZeroBits() : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L973"
            if ((_s & (1u32 : stdgo.GoUInt) : stdgo.GoUInt) != ((0u32 : stdgo.GoUInt))) {
                var _bmod8 = @:assignType (_b._abs[(0 : stdgo.GoInt)] & (7u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word);
                //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L975"
                if (((_bmod8 == (3u32 : stdgo._internal.math.big.Big_word.Word)) || (_bmod8 == (5u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                    _j = -_j;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L979"
            _c.rsh((stdgo.Go.setRef(_a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _s);
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L982"
            if ((((_b._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (3u32 : stdgo._internal.math.big.Big_word.Word)) && ((_c._abs[(0 : stdgo.GoInt)] & (3u32 : stdgo._internal.math.big.Big_word.Word) : stdgo._internal.math.big.Big_word.Word) == (3u32 : stdgo._internal.math.big.Big_word.Word)) : Bool)) {
                _j = -_j;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L985"
            _a.set((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L986"
            _b.set((stdgo.Go.setRef(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
    }
