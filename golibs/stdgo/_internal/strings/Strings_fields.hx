package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        var _n = @:assignType (0 : stdgo.GoInt);
        var _wasSpace = @:assignType (1 : stdgo.GoInt);
        var _setBits = @:assignType ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L340"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _r = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_setBits = (_setBits | (_r) : stdgo.GoUInt8);
var _isSpace = @:assignType (stdgo._internal.strings.Strings__asciispace._asciiSpace[(_r : stdgo.GoInt)] : stdgo.GoInt);
_n = (_n + ((_wasSpace & (-1 ^ _isSpace) : stdgo.GoInt)) : stdgo.GoInt);
_wasSpace = _isSpace;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L348"
        if ((_setBits >= (128 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L350"
            return stdgo._internal.strings.Strings_fieldsfunc.fieldsFunc(_s?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace);
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _na = @:assignType (0 : stdgo.GoInt);
        var _fieldStart = @:assignType (0 : stdgo.GoInt);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L358"
        while (((_i < (_s.length) : Bool) && (stdgo._internal.strings.Strings__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L359"
            _i++;
        };
        _fieldStart = _i;
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L362"
        while ((_i < (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L363"
            if (stdgo._internal.strings.Strings__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L364"
                _i++;
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L365"
                continue;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, _i) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L368"
            _na++;
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L369"
            _i++;
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L371"
            while (((_i < (_s.length) : Bool) && (stdgo._internal.strings.Strings__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L372"
                _i++;
            };
            _fieldStart = _i;
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L376"
        if ((_fieldStart < (_s.length) : Bool)) {
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L379"
        return _a;
    }
