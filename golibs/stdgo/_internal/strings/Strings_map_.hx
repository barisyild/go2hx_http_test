package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function map_(_mapping:stdgo.GoInt32 -> stdgo.GoInt32, _s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L488"
        if (_s != null) for (_i => _c in _s) {
            var _r = @:assignType (_mapping(_c) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L490"
            if (((_r == _c) && (_c != (65533 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L491"
                continue;
            };
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L495"
            if (_c == ((65533 : stdgo.GoInt32))) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _c = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L497"
                if (((_width != (1 : stdgo.GoInt)) && (_r == _c) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L498"
                    continue;
                };
            } else {
                _width = stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_c);
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L504"
            _b.grow(((_s.length) + (4 : stdgo.GoInt) : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L505"
            _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L506"
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L507"
                _b.writeRune(_r);
            };
            _s = (_s.__slice__((_i + _width : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L511"
            break;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L515"
        if (_b.cap() == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L516"
            return _s?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L519"
        if (_s != null) for (__0 => _c in _s) {
            var _r = @:assignType (_mapping(_c) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L522"
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L526"
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L527"
                    _b.writeByte((_r : stdgo.GoUInt8));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L530"
                    _b.writeRune(_r);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L535"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
