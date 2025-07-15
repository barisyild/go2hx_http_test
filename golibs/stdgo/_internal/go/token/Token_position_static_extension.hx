package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.token.Token.Position_asInterface) class Position_static_extension {
    @:keep
    @:tdfield
    static public function string( _pos:stdgo._internal.go.token.Token_position.Position):stdgo.GoString {
        @:recv var _pos:stdgo._internal.go.token.Token_position.Position = _pos?.__copy__();
        var _s = @:assignType (_pos.filename?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L41"
        if (_pos.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L42"
            if (_s != ((stdgo.Go.str() : stdgo.GoString))) {
                _s = (_s + ((":" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + (stdgo._internal.strconv.Strconv_itoa.itoa(_pos.line))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L46"
            if (_pos.column != ((0 : stdgo.GoInt))) {
                _s = (_s + (stdgo._internal.fmt.Fmt_sprintf.sprintf(((":%d" : stdgo.GoString) : stdgo.GoString), new stdgo.AnyInterface(_pos.column, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))))?.__copy__() : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L50"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            _s = ("-" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L53"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function isValid( _pos:stdgo.Ref<stdgo._internal.go.token.Token_position.Position>):Bool {
        @:recv var _pos:stdgo.Ref<stdgo._internal.go.token.Token_position.Position> = _pos;
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L29"
        return ((@:checkr _pos ?? throw stdgo.Error._nullPointerDereference.__underlying__()).line > (0 : stdgo.GoInt) : Bool);
    }
}
