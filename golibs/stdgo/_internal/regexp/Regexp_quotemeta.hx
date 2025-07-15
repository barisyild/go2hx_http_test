package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function quoteMeta(_s:stdgo.GoString):stdgo.GoString {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L731"
        {
            _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L732"
                if (stdgo._internal.regexp.Regexp__special._special(_s[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L733"
                    break;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L737"
        if ((_i >= (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L738"
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((((2 : stdgo.GoInt) * (_s.length) : stdgo.GoInt) - _i : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L742"
        _b.__copyTo__((_s.__slice__(0, _i) : stdgo.GoString));
        var _j = @:assignType (_i : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L744"
        while ((_i < (_s.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L745"
            if (stdgo._internal.regexp.Regexp__special._special(_s[(_i : stdgo.GoInt)])) {
                _b[(_j : stdgo.GoInt)] = (92 : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L747"
                _j++;
            };
_b[(_j : stdgo.GoInt)] = _s[(_i : stdgo.GoInt)];
//"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L750"
            _j++;
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L752"
        return ((_b.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
