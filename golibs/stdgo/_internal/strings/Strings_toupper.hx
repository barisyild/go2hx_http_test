package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function toUpper(_s:stdgo.GoString):stdgo.GoString {
        var __0 = @:assignType (true : Bool), __1 = @:assignType (false : Bool);
var _hasLower = __1, _isASCII = __0;
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L603"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L605"
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L607"
                    break;
                };
_hasLower = (_hasLower || ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L612"
        if (_isASCII) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L613"
            if (!_hasLower) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L614"
                return _s?.__copy__();
            };
            var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder), _pos:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L620"
            _b.grow((_s.length));
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L621"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L623"
                    if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L625"
                        if ((_pos < _i : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L626"
                            _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString).__copy__());
                        };
                        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L628"
                        _b.writeByte(_c);
                        _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L632"
            if ((_pos < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L633"
                _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L635"
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L637"
        return stdgo._internal.strings.Strings_map_.map_(stdgo._internal.unicode.Unicode_toupper.toUpper, _s?.__copy__())?.__copy__();
    }
