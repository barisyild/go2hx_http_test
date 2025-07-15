package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.T_bracketPairs_asInterface) class T_bracketPairs_static_extension {
    @:keep
    @:tdfield
    static public function less( _b:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _b:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L65"
        return (_b[(_i : stdgo.GoInt)]._opener < _b[(_j : stdgo.GoInt)]._opener : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _b:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _b:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs = _b;
        {
            final __tmp__0 = _b[(_j : stdgo.GoInt)];
            final __tmp__1 = _b[(_i : stdgo.GoInt)];
            final __tmp__2 = _b;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _b;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _b:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs):stdgo.GoInt {
        @:recv var _b:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairs.T_bracketPairs = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L63"
        return (_b.length);
    }
}
