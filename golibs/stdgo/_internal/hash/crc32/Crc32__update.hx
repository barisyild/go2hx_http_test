package stdgo._internal.hash.crc32;
import stdgo._internal.errors.Errors;
function _update(_crc:stdgo.GoUInt32, _tab:stdgo.Ref<stdgo._internal.hash.crc32.Crc32_table.Table>, _p:stdgo.Slice<stdgo.GoUInt8>, _checkInitIEEE:Bool):stdgo.GoUInt32 {
        //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L210"
        if ((stdgo._internal.hash.crc32.Crc32__havecastagnoli._haveCastagnoli.load() && (_tab == stdgo._internal.hash.crc32.Crc32__castagnolitable._castagnoliTable) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L212"
            return stdgo._internal.hash.crc32.Crc32__updatecastagnoli._updateCastagnoli(_crc, _p);
        } else if (_tab == (stdgo._internal.hash.crc32.Crc32_ieeetable.iEEETable)) {
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L214"
            if (_checkInitIEEE) {
                //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L215"
                stdgo._internal.hash.crc32.Crc32__ieeeonce._ieeeOnce.do_(stdgo._internal.hash.crc32.Crc32__ieeeinit._ieeeInit);
            };
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L217"
            return stdgo._internal.hash.crc32.Crc32__updateieee._updateIEEE(_crc, _p);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/hash/crc32/crc32.go#L219"
            return stdgo._internal.hash.crc32.Crc32__simpleupdate._simpleUpdate(_crc, _tab, _p);
        };
    }
