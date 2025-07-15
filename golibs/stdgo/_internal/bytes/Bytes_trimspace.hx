package stdgo._internal.bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
function trimSpace(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1075"
        while ((_start < (_s.length) : Bool)) {
            var _c = @:assignType (_s[(_start : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1077"
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1080"
                return stdgo._internal.bytes.Bytes_trimfunc.trimFunc((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isspace.isSpace);
            };
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1082"
            if (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1083"
                break;
            };
            _start++;
        };
        var _stop = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1089"
        while ((_stop > _start : Bool)) {
            var _c = @:assignType (_s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1091"
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1092"
                return stdgo._internal.bytes.Bytes_trimfunc.trimFunc((_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isspace.isSpace);
            };
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1094"
            if (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1095"
                break;
            };
            _stop--;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1102"
        if (_start == (_stop)) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1105"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes.go#L1107"
        return (_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>);
    }
