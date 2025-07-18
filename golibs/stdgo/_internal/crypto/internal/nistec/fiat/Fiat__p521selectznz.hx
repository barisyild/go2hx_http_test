package stdgo._internal.crypto.internal.nistec.fiat;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.errors.Errors;
function _p521Selectznz(_out1:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg1:stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p521uint1.T_p521Uint1, _arg2:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>, _arg3:stdgo.Ref<stdgo.GoArray<stdgo.GoUInt64>>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x1__pointer__ = stdgo.Go.pointer(_x1);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5153"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x1__pointer__, _arg1, _arg2[(0 : stdgo.GoInt)], _arg3[(0 : stdgo.GoInt)]);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x2__pointer__ = stdgo.Go.pointer(_x2);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5155"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x2__pointer__, _arg1, _arg2[(1 : stdgo.GoInt)], _arg3[(1 : stdgo.GoInt)]);
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x3__pointer__ = stdgo.Go.pointer(_x3);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5157"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x3__pointer__, _arg1, _arg2[(2 : stdgo.GoInt)], _arg3[(2 : stdgo.GoInt)]);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x4__pointer__ = stdgo.Go.pointer(_x4);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5159"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x4__pointer__, _arg1, _arg2[(3 : stdgo.GoInt)], _arg3[(3 : stdgo.GoInt)]);
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x5__pointer__ = stdgo.Go.pointer(_x5);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5161"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x5__pointer__, _arg1, _arg2[(4 : stdgo.GoInt)], _arg3[(4 : stdgo.GoInt)]);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x6__pointer__ = stdgo.Go.pointer(_x6);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5163"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x6__pointer__, _arg1, _arg2[(5 : stdgo.GoInt)], _arg3[(5 : stdgo.GoInt)]);
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x7__pointer__ = stdgo.Go.pointer(_x7);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5165"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x7__pointer__, _arg1, _arg2[(6 : stdgo.GoInt)], _arg3[(6 : stdgo.GoInt)]);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x8__pointer__ = stdgo.Go.pointer(_x8);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5167"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x8__pointer__, _arg1, _arg2[(7 : stdgo.GoInt)], _arg3[(7 : stdgo.GoInt)]);
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x9__pointer__ = stdgo.Go.pointer(_x9);
        //"file:///Users/o/.go/go1.21.3/src/crypto/internal/nistec/fiat/p521_fiat64.go#L5169"
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p521cmovznzu64._p521CmovznzU64(_x9__pointer__, _arg1, _arg2[(8 : stdgo.GoInt)], _arg3[(8 : stdgo.GoInt)]);
        _out1[(0 : stdgo.GoInt)] = _x1;
        _out1[(1 : stdgo.GoInt)] = _x2;
        _out1[(2 : stdgo.GoInt)] = _x3;
        _out1[(3 : stdgo.GoInt)] = _x4;
        _out1[(4 : stdgo.GoInt)] = _x5;
        _out1[(5 : stdgo.GoInt)] = _x6;
        _out1[(6 : stdgo.GoInt)] = _x7;
        _out1[(7 : stdgo.GoInt)] = _x8;
        _out1[(8 : stdgo.GoInt)] = _x9;
    }
