package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _l = @:assignType (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString(_s?.__copy__()) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L23"
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n > _l : Bool) : Bool)) {
            _n = _l;
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L27"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
_a[(_i : stdgo.GoInt)] = (_s.__slice__(0, _size) : stdgo.GoString).__copy__();
_s = (_s.__slice__(_size) : stdgo.GoString).__copy__();
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L32"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _a[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _s?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/strings.go#L35"
        return _a;
    }
