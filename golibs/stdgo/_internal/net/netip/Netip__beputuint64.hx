package stdgo._internal.net.netip;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.internal.intern.Intern;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.math.bits.Bits;
function _bePutUint64(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt64):Void {
        _b[(7 : stdgo.GoInt)];
        _b[(0 : stdgo.GoInt)] = ((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(1 : stdgo.GoInt)] = ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(3 : stdgo.GoInt)] = ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(4 : stdgo.GoInt)] = ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(5 : stdgo.GoInt)] = ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(6 : stdgo.GoInt)] = ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8);
        _b[(7 : stdgo.GoInt)] = (_v : stdgo.GoUInt8);
    }
