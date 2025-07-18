package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _explode(_s:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L33"
        if (((_n <= (0 : stdgo.GoInt) : Bool) || (_n > (_s.length) : Bool) : Bool)) {
            _n = (_s.length);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        var _na = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L39"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L40"
            if (((_na + (1 : stdgo.GoInt) : stdgo.GoInt) >= _n : Bool)) {
                _a[(_na : stdgo.GoInt)] = _s;
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L42"
                _na++;
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L43"
                break;
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_s);
                _size = @:tmpset0 __tmp__._1;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__((0 : stdgo.GoInt), _size, _size) : stdgo.Slice<stdgo.GoUInt8>);
            _s = (_s.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L48"
            _na++;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L50"
        return (_a.__slice__((0 : stdgo.GoInt), _na) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    }
