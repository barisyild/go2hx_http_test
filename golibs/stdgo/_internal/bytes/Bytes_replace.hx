package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function replace(_s:stdgo.Slice<stdgo.GoUInt8>, _old:stdgo.Slice<stdgo.GoUInt8>, _new_:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        var _m = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1132"
        if (_n != ((0 : stdgo.GoInt))) {
            _m = stdgo._internal.bytes.Bytes_count.count(_s, _old);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1136"
        if (_m == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1138"
            return ((null : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1140"
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_m < _n : Bool) : Bool)) {
            _n = _m;
        };
        var _t = (new stdgo.Slice<stdgo.GoUInt8>(((_s.length) + (_n * (((_new_.length) - (_old.length) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _w = @:assignType (0 : stdgo.GoInt);
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1148"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _j = @:assignType (_start : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1150"
                if ((_old.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1151"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                        _j = (_j + (_wid) : stdgo.GoInt);
                    };
                } else {
                    _j = (_j + (stdgo._internal.bytes.Bytes_index.index((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), _old)) : stdgo.GoInt);
                };
_w = (_w + ((_t.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_s.__slice__(_start, _j) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
_w = (_w + ((_t.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_new_)) : stdgo.GoInt);
_start = (_j + (_old.length) : stdgo.GoInt);
                _i++;
            };
        };
        _w = (_w + ((_t.__slice__(_w) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1163"
        return (_t.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>);
    }
