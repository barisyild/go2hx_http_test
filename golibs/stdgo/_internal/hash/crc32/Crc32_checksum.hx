package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function checksum(_data:stdgo.Slice<stdgo.GoUInt8>, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L246"
        return stdgo._internal.hash.crc32.Crc32_update.update((0u32 : stdgo.GoUInt32), _tab, _data);
    }
