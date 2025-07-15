package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L890"
        {
            var _i = @:assignType (_s.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __0 = @:assignType (_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType (1 : stdgo.GoInt);
var _size = __1, _r = __0;
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L892"
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune((_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
                        _r = @:tmpset0 __tmp__._0;
                        _size = @:tmpset0 __tmp__._1;
                    };
                };
                _i = (_i - (_size) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L896"
                if (_f(_r) == (_truth)) {
                    //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L897"
                    return _i;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L900"
        return (-1 : stdgo.GoInt);
    }
