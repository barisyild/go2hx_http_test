package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L914"
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_cutset == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L915"
            return _s?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L917"
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L918"
            return stdgo._internal.strings.Strings__trimleftbyte._trimLeftByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L920"
        {
            var __tmp__ = stdgo._internal.strings.Strings__makeasciiset._makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings_t_asciiset.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L921"
                return stdgo._internal.strings.Strings__trimleftascii._trimLeftASCII(_s?.__copy__(), (stdgo.Go.setRef(_as, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_asciisetdott_asciiset.__type__stdgodot_internaldotstringsdotStrings_t_asciisetdotT_asciiSet })) : stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>))?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L923"
        return stdgo._internal.strings.Strings__trimleftunicode._trimLeftUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
