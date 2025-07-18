package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function _slicingMakeTable(_poly:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table> {
        var _t = (stdgo.Go.setRef(new stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table(8, 8, ...[for (i in 0 ... 8) new stdgo._internal.hash.crc32.Crc32_table.Table(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt32)])]), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdotcrc32dotcrc32_t_slicing8tabledott_slicing8table.__type__stdgodot_internaldothashdotcrc32dotCrc32_t_slicing8tabledotT_slicing8Table })) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_t_slicing8table.T_slicing8Table>);
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L60"
        stdgo._internal.hash.crc32.Crc32__simplepopulatetable._simplePopulateTable(_poly, (stdgo.Go.setRef(_t[(0 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldothashdotcrc32dotcrc32_tabledottable.__type__stdgodot_internaldothashdotcrc32dotCrc32_tabledotTable })) : stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>));
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L61"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (256 : stdgo.GoInt) : Bool)) {
                var _crc = @:assignType (_t[(0 : stdgo.GoInt)][(_i : stdgo.GoInt)] : stdgo.GoUInt32);
//"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L63"
                {
                    var _j = @:assignType (1 : stdgo.GoInt);
                    while ((_j < (8 : stdgo.GoInt) : Bool)) {
                        _crc = (_t[(0 : stdgo.GoInt)][((_crc & (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] ^ ((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
_t[(_j : stdgo.GoInt)][(_i : stdgo.GoInt)] = _crc;
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L68"
        return _t;
    }
