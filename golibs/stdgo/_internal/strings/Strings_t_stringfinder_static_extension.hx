package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.strings.Strings.T_stringFinder_asInterface) class T_stringFinder_static_extension {
    @:keep
    @:tdfield
    static public function _next( _f:stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>, _text:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder> = _f;
        var _i = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L104"
        while ((_i < (_text.length) : Bool)) {
            var _j = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L107"
            while (((_j >= (0 : stdgo.GoInt) : Bool) && (_text[(_i : stdgo.GoInt)] == (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_j : stdgo.GoInt)]) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L108"
                _i--;
                //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L109"
                _j--;
            };
            //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L111"
            if ((_j < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L112"
                return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            _i = (_i + (stdgo._internal.strings.Strings__max._max((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._badCharSkip[(_text[(_i : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodSuffixSkip[(_j : stdgo.GoInt)])) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/search.go#L116"
        return (-1 : stdgo.GoInt);
    }
}
