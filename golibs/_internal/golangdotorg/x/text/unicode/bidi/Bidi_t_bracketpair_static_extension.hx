package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.T_bracketPair_asInterface) class T_bracketPair_static_extension {
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpair.T_bracketPair> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L57"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("(%v, %v)" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._opener, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closer, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
    }
}
