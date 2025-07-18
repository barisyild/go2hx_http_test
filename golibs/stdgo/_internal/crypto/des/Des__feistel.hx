package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _feistel(_l:stdgo.GoUInt32, _r:stdgo.GoUInt32, _k0:stdgo.GoUInt64, _k1:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } {
        var _lout = (0 : stdgo.GoUInt32), _rout = (0 : stdgo.GoUInt32);
        var _t:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        _t = (_r ^ ((_k0 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _l = (_l ^ ((((stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(7 : stdgo.GoInt)][((_t & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(5 : stdgo.GoInt)][((((_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(3 : stdgo.GoInt)][((((_t >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(1 : stdgo.GoInt)][((((_t >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _t = (((((_r << (28i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_r >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32)) ^ (_k0 : stdgo.GoUInt32) : stdgo.GoUInt32);
        _l = (_l ^ ((((stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(6 : stdgo.GoInt)][(((_t) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(4 : stdgo.GoInt)][((((_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(2 : stdgo.GoInt)][((((_t >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(0 : stdgo.GoInt)][((((_t >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _t = (_l ^ ((_k1 >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _r = (_r ^ ((((stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(7 : stdgo.GoInt)][((_t & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(5 : stdgo.GoInt)][((((_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(3 : stdgo.GoInt)][((((_t >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(1 : stdgo.GoInt)][((((_t >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _t = (((((_l << (28i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | ((_l >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32)) ^ (_k1 : stdgo.GoUInt32) : stdgo.GoUInt32);
        _r = (_r ^ ((((stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(6 : stdgo.GoInt)][(((_t) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(4 : stdgo.GoInt)][((((_t >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(2 : stdgo.GoInt)][((((_t >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ stdgo._internal.crypto.des.Des__feistelbox._feistelBox[(0 : stdgo.GoInt)][((((_t >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (63u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/block.go#L77"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt32; var _1 : stdgo.GoUInt32; } = { _0 : _l, _1 : _r };
            _lout = __tmp__._0;
            _rout = __tmp__._1;
            __tmp__;
        };
    }
