package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimSpace(_s:stdgo.GoString):stdgo.GoString {
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1010"
        while ((_start < (_s.length) : Bool)) {
            var _c = @:assignType (_s[(_start : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1012"
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1015"
                return stdgo._internal.strings.Strings_trimfunc.trimFunc((_s.__slice__(_start) : stdgo.GoString).__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace).__copy__();
            };
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1017"
            if (stdgo._internal.strings.Strings__asciispace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1018"
                break;
            };
            _start++;
        };
        var _stop = @:assignType (_s.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1024"
        while ((_stop > _start : Bool)) {
            var _c = @:assignType (_s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1026"
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1028"
                return stdgo._internal.strings.Strings_trimrightfunc.trimRightFunc((_s.__slice__(_start, _stop) : stdgo.GoString).__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace).__copy__();
            };
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1030"
            if (stdgo._internal.strings.Strings__asciispace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1031"
                break;
            };
            _stop--;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1038"
        return (_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__();
    }
