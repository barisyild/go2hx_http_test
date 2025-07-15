package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _trimLeftUnicode(_s:stdgo.Slice<stdgo.GoUInt8>, _cutset:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1007"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0 = @:assignType (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType (1 : stdgo.GoInt);
var _n = __1, _r = __0;
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1009"
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                    _r = @:tmpset0 __tmp__._0;
                    _n = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1012"
            if (!stdgo._internal.bytes.Bytes__containsrune._containsRune(_cutset?.__copy__(), _r)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1013"
                break;
            };
            _s = (_s.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1017"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1019"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1021"
        return _s;
    }
