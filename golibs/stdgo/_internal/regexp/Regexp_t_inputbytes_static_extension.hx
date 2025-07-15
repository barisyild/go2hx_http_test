package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputBytes_asInterface) class T_inputBytes_static_extension {
    @:keep
    @:tdfield
    static public function _context( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes> = _i;
        var __0 = @:assignType (-1 : stdgo.GoInt32), __1 = @:assignType (-1 : stdgo.GoInt32);
var _r2 = __1, _r1 = __0;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L464"
        if ((((_pos - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) < ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length : stdgo.GoUInt) : Bool)) {
            _r1 = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_pos - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L466"
            if ((_r1 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(0, _pos) : stdgo.Slice<stdgo.GoUInt8>));
                    _r1 = @:tmpset0 __tmp__._0;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L471"
        if (((_pos : stdgo.GoUInt) < ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length : stdgo.GoUInt) : Bool)) {
            _r2 = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_pos : stdgo.GoInt)] : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L473"
            if ((_r2 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
                    _r2 = @:tmpset0 __tmp__._0;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L477"
        return stdgo._internal.regexp.Regexp__newlazyflag._newLazyFlag(_r1, _r2);
    }
    @:keep
    @:tdfield
    static public function _index( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L458"
        return stdgo._internal.bytes.Bytes_index.index(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixBytes);
    }
    @:keep
    @:tdfield
    static public function _hasPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L454"
        return stdgo._internal.bytes.Bytes_hasprefix.hasPrefix((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str, (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prefixBytes);
    }
    @:keep
    @:tdfield
    static public function _canCheckPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L450"
        return true;
    }
    @:keep
    @:tdfield
    static public function _step( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_t_inputbytes.T_inputBytes> = _i;
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L439"
        if ((_pos < ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) : Bool)) {
            var _c = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_pos : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L441"
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L442"
                return { _0 : (_c : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L444"
            return stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/regexp.go#L446"
        return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
    }
}
