package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.regexp.syntax.Syntax_instop.InstOp):stdgo.GoString {
        @:recv var _i:stdgo._internal.regexp.syntax.Syntax_instop.InstOp = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L56"
        if (((_i : stdgo.GoUInt) >= (stdgo._internal.regexp.syntax.Syntax__instopnames._instOpNames.length : stdgo.GoUInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L57"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/prog.go#L59"
        return stdgo._internal.regexp.syntax.Syntax__instopnames._instOpNames[(_i : stdgo.GoInt)]?.__copy__();
    }
}
