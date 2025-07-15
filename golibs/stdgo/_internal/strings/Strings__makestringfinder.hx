package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder> {
        var _f = (stdgo.Go.setRef(({ _pattern : _pattern?.__copy__(), _goodSuffixSkip : (new stdgo.Slice<stdgo.GoInt>((_pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_t_stringfinderdott_stringfinder.__type__stdgodot_internaldotstringsdotStrings_t_stringfinderdotT_stringFinder })) : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>);
        var _last = @:assignType ((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L58"
        for (_i => _ in (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._badCharSkip.__copy__()) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._badCharSkip[(_i : stdgo.GoInt)] = (_pattern.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L64"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _last : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._badCharSkip[(_pattern[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (_last - _i : stdgo.GoInt);
                _i++;
            };
        };
        var _lastPrefix = @:assignType (_last : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L72"
        {
            var _i = @:assignType (_last : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L73"
                if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_pattern.__copy__(), (_pattern.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__())) {
                    _lastPrefix = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodSuffixSkip[(_i : stdgo.GoInt)] = ((_lastPrefix + _last : stdgo.GoInt) - _i : stdgo.GoInt);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L80"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _last : Bool)) {
                var _lenSuffix = @:assignType (stdgo._internal.strings.Strings__longestcommonsuffix._longestCommonSuffix(_pattern.__copy__(), (_pattern.__slice__((1 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__()) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/strings/search.go#L82"
                if (_pattern[(_i - _lenSuffix : stdgo.GoInt)] != (_pattern[((_last - _lenSuffix : stdgo.GoInt) : stdgo.GoInt)])) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodSuffixSkip[(_last - _lenSuffix : stdgo.GoInt)] = ((_lenSuffix + _last : stdgo.GoInt) - _i : stdgo.GoInt);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L88"
        return _f;
    }
