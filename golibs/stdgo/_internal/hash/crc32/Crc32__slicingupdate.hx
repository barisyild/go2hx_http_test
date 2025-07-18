package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function _slicingUpdate(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L74"
        if (((_p.length) >= (16 : stdgo.GoInt) : Bool)) {
            _crc = (-1 ^ _crc);
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L76"
            while (((_p.length) > (8 : stdgo.GoInt) : Bool)) {
                _crc = (_crc ^ (((((_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_p[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_p[(3 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _crc = (((((((_tab[(0 : stdgo.GoInt)][(_p[(7 : stdgo.GoInt)] : stdgo.GoInt)] ^ _tab[(1 : stdgo.GoInt)][(_p[(6 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(2 : stdgo.GoInt)][(_p[(5 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(3 : stdgo.GoInt)][(_p[(4 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(4 : stdgo.GoInt)][((_crc >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(5 : stdgo.GoInt)][((((_crc >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(6 : stdgo.GoInt)][((((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32) ^ _tab[(7 : stdgo.GoInt)][((_crc & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32);
                _p = (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _crc = (-1 ^ _crc);
        };
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L85"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L86"
            return _crc;
        };
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L88"
        return stdgo._internal.hash.crc32.Crc32__simpleupdate._simpleUpdate(_crc, (stdgo.Go.setRef(_tab[(0 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdotcrc32dotcrc32_tabledottable.__type__stdgodot_internaldothashdotcrc32dotCrc32_tabledotTable })) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>), _p);
    }
