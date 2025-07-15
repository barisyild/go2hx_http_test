package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
function _bulkHash4(_b:stdgo.Slice<stdgo.GoUInt8>, _dst:stdgo.Slice<stdgo.GoUInt32>):Void {
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L302"
        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L303"
            return;
        };
        var _hb = @:assignType ((((_b[(3 : stdgo.GoInt)] : stdgo.GoUInt32) | ((_b[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_b[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32);
        _dst[(0 : stdgo.GoInt)] = (((_hb * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
        var _end = @:assignType (((_b.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L308"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < _end : Bool)) {
                _hb = (((_hb << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | (_b[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
_dst[(_i : stdgo.GoInt)] = (((_hb * (506832829u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) >> (15i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                _i++;
            };
        };
    }
