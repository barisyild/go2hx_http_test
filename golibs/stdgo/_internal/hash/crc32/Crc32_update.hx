package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L227"
        return stdgo._internal.hash.crc32.Crc32__update._update(_crc, _tab, _p, true);
    }
