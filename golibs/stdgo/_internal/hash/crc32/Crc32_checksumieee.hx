package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function checksumIEEE(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L251"
        stdgo._internal.hash.crc32.Crc32__ieeeonce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeinit._ieeeInit);
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L252"
        return stdgo._internal.hash.crc32.Crc32__updateieee._updateIEEE((0u32 : stdgo.GoUInt32), _data);
    }
