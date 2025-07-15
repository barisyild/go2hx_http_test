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
function _lehmerUpdate(a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _q:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _r:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _s:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _t:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _u0:stdgo._internal.math.big.Big_word.Word, _u1:stdgo._internal.math.big.Big_word.Word, _v0:stdgo._internal.math.big.Big_word.Word, _v1:stdgo._internal.math.big.Big_word.Word, _even:Bool):Void {
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs._setWord(_u0);
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs._setWord(_v0);
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._neg = !_even;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._neg = _even;
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L722"
        _t.mul(a, _t);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L723"
        _s.mul(b, _s);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs._setWord(_u1);
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs._setWord(_v1);
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._neg = _even;
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._neg = !_even;
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L730"
        _r.mul(a, _r);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L731"
        _q.mul(b, _q);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L733"
        a.add(_t, _s);
        //"file:///Users/o/.go/go1.21.3/src/math/big/int.go#L734"
        b.add(_r, _q);
    }
