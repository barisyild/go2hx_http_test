package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L42"
        if ((_substr.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L43"
            return (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L45"
        if ((_substr.length) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L46"
            return stdgo._internal.internal.bytealg.Bytealg_countstring.countString(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        };
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L49"
        while (true) {
            var _i = @:assignType (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), _substr?.__copy__()) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L51"
            if (_i == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L52"
                return _n;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L54"
            _n++;
            _s = (_s.__slice__((_i + (_substr.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
