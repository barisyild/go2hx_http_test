package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L707"
        if (_s != null) for (_i => _c in _s) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L708"
            if (_c != ((65533 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L709"
                continue;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L713"
            if (_wid == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L714"
                _b.grow(((_s.length) + (_replacement.length) : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L715"
                _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
                _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L717"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L722"
        if (_b.cap() == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L723"
            return _s?.__copy__();
        };
        var _invalid = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L727"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L729"
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L730"
                    _i++;
                    _invalid = false;
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L732"
                    _b.writeByte(_c);
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L733"
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L736"
                if (_wid == ((1 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L737"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L738"
                    if (!_invalid) {
                        _invalid = true;
                        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L740"
                        _b.writeString(_replacement?.__copy__());
                    };
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L742"
                    continue;
                };
                _invalid = false;
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L745"
                _b.writeString((_s.__slice__(_i, (_i + _wid : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _i = (_i + (_wid) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L749"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
