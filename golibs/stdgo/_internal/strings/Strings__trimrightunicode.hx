package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L992"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0 = @:assignType (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32), __1 = @:assignType (1 : stdgo.GoInt);
var _n = __1, _r = __0;
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L994"
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(_s?.__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _n = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L997"
            if (!stdgo._internal.strings.Strings_containsrune.containsRune(_cutset?.__copy__(), _r)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L998"
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - _n : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1002"
        return _s?.__copy__();
    }
