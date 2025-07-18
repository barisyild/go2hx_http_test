package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputString_asInterface) class T_inputString_static_extension {
    @:keep
    @:tdfield
    static public function _context( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString> = _i;
        var __0 = @:assignType (-1 : stdgo.GoInt32), __1 = @:assignType (-1 : stdgo.GoInt32);
var _r2 = __1, _r1 = __0;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L417"
        if ((((_pos - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) < ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length : stdgo.GoUInt) : Bool)) {
            _r1 = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_pos - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L419"
            if ((_r1 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(0, _pos) : stdgo.GoString)?.__copy__());
                    _r1 = @:tmpset0 __tmp__._0;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L424"
        if (((_pos : stdgo.GoUInt) < ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length : stdgo.GoUInt) : Bool)) {
            _r2 = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_pos : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L426"
            if ((_r2 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_pos) : stdgo.GoString)?.__copy__());
                    _r2 = @:tmpset0 __tmp__._0;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L430"
        return stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r1, _r2);
    }
    @:keep
    @:tdfield
    static public function _index( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L411"
        return stdgo._internal.strings.Strings_index.index(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_pos) : stdgo.GoString)?.__copy__(), (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _hasPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L407"
        return stdgo._internal.strings.Strings_hasprefix.hasPrefix((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str?.__copy__(), (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefix?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _canCheckPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L403"
        return true;
    }
    @:keep
    @:tdfield
    static public function _step( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputstring.T_inputString> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L392"
        if ((_pos < ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) : Bool)) {
            var _c = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_pos : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L394"
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L395"
                return { _0 : (_c : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L397"
            return stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_pos) : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L399"
        return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
    }
}
