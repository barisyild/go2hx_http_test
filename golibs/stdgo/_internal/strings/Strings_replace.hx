package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new_:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1066"
        if (((_old == _new_) || (_n == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1067"
            return _s?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1071"
        {
            var _m = @:assignType (stdgo._internal.strings.Strings_count.count(_s?.__copy__(), _old?.__copy__()) : stdgo.GoInt);
            if (_m == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1072"
                return _s?.__copy__();
            } else if (((_n < (0 : stdgo.GoInt) : Bool) || (_m < _n : Bool) : Bool)) {
                _n = _m;
            };
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1079"
        _b.grow(((_s.length) + (_n * (((_new_.length) - (_old.length) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt));
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1081"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                var _j = @:assignType (_start : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1083"
                if ((_old.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1084"
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_start) : stdgo.GoString).__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                        _j = (_j + (_wid) : stdgo.GoInt);
                    };
                } else {
                    _j = (_j + (stdgo._internal.strings.Strings_index.index((_s.__slice__(_start) : stdgo.GoString).__copy__(), _old.__copy__())) : stdgo.GoInt);
                };
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1091"
                _b.writeString((_s.__slice__(_start, _j) : stdgo.GoString).__copy__());
//"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1092"
                _b.writeString(_new_.__copy__());
_start = (_j + (_old.length) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1095"
        _b.writeString((_s.__slice__(_start) : stdgo.GoString)?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L1096"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
