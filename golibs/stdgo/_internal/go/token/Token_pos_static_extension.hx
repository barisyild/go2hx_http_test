package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.token.Token.Pos_asInterface) class Pos_static_extension {
    @:keep
    @:tdfield
    static public function isValid( _p:stdgo._internal.go.token.Token_pos.Pos):Bool {
        @:recv var _p:stdgo._internal.go.token.Token_pos.Pos = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L88"
        return _p != ((0 : stdgo._internal.go.token.Token_pos.Pos));
    }
}
