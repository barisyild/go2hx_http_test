package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function _simpleUpdate(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        _crc = (-1 ^ _crc);
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L44"
        if (_p != null) for (__0 => _v in _p) {
            _crc = (_tab[(((_crc : stdgo.GoUInt8) ^ _v : stdgo.GoUInt8) : stdgo.GoInt)] ^ ((_crc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32_generic.go#L47"
        return (-1 ^ _crc);
    }
