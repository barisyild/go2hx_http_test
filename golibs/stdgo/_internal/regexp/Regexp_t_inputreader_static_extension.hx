package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputReader_asInterface) class T_inputReader_static_extension {
    @:keep
    @:tdfield
    static public function _context( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L514"
        return (0i64 : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
    }
    @:keep
    @:tdfield
    static public function _index( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L510"
        return (-1 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _hasPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L506"
        return false;
    }
    @:keep
    @:tdfield
    static public function _canCheckPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L502"
        return false;
    }
    @:keep
    @:tdfield
    static public function _step( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputreader.T_inputReader> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L488"
        if ((!(@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._atEOT && (_pos != (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L489"
            return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        var __tmp__ = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.readRune(), _r:stdgo.GoInt32 = __tmp__._0, _w:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L493"
        if (_err != null) {
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._atEOT = true;
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L495"
            return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pos + (_w) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L498"
        return { _0 : _r, _1 : _w };
    }
}
