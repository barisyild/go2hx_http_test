package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
function _p384Selectznz(_out1:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg1:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1, _arg2:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg3:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x1__pointer__ = stdgo.Go.pointer(_x1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_fiat64.go#L2744"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x1__pointer__, _arg1, _arg2[(0 : stdgo.GoInt)], _arg3[(0 : stdgo.GoInt)]);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x2__pointer__ = stdgo.Go.pointer(_x2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_fiat64.go#L2746"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x2__pointer__, _arg1, _arg2[(1 : stdgo.GoInt)], _arg3[(1 : stdgo.GoInt)]);
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x3__pointer__ = stdgo.Go.pointer(_x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_fiat64.go#L2748"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x3__pointer__, _arg1, _arg2[(2 : stdgo.GoInt)], _arg3[(2 : stdgo.GoInt)]);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x4__pointer__ = stdgo.Go.pointer(_x4);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_fiat64.go#L2750"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x4__pointer__, _arg1, _arg2[(3 : stdgo.GoInt)], _arg3[(3 : stdgo.GoInt)]);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x5__pointer__ = stdgo.Go.pointer(_x5);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_fiat64.go#L2752"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x5__pointer__, _arg1, _arg2[(4 : stdgo.GoInt)], _arg3[(4 : stdgo.GoInt)]);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x6__pointer__ = stdgo.Go.pointer(_x6);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p384_fiat64.go#L2754"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x6__pointer__, _arg1, _arg2[(5 : stdgo.GoInt)], _arg3[(5 : stdgo.GoInt)]);
        _out1[(0 : stdgo.GoInt)] = _x1;
        _out1[(1 : stdgo.GoInt)] = _x2;
        _out1[(2 : stdgo.GoInt)] = _x3;
        _out1[(3 : stdgo.GoInt)] = _x4;
        _out1[(4 : stdgo.GoInt)] = _x5;
        _out1[(5 : stdgo.GoInt)] = _x6;
    }
