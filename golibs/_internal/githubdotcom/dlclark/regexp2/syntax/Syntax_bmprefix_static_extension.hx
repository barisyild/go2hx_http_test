package _internal.githubdotcom.dlclark.regexp2.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.BmPrefix_asInterface) class BmPrefix_static_extension {
    @:keep
    @:tdfield
    static public function _matchPattern( _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _text:stdgo.Slice<stdgo.GoInt32>, _index:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L764"
        if ((((_text.length) - _index : stdgo.GoInt) < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L765"
            return false;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L768"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L769"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L771"
                    if (stdgo._internal.unicode.Unicode_tolower.toLower(_text[(_index + _i : stdgo.GoInt)]) != ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_i : stdgo.GoInt)])) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L772"
                        return false;
                    };
                    _i++;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L775"
            return true;
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L777"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L778"
                    if (_text[(_index + _i : stdgo.GoInt)] != ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_i : stdgo.GoInt)])) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L779"
                        return false;
                    };
                    _i++;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L782"
            return true;
        };
    }
    @:keep
    @:tdfield
    static public function isMatch( _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _text:stdgo.Slice<stdgo.GoInt32>, _index:stdgo.GoInt, _beglimit:stdgo.GoInt, _endlimit:stdgo.GoInt):Bool {
        @:recv var _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L748"
        if (!(@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L749"
            if (((_index < _beglimit : Bool) || ((_endlimit - _index : stdgo.GoInt) < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L750"
                return false;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L753"
            return _b._matchPattern(_text, _index);
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L755"
            if (((_index > _endlimit : Bool) || ((_index - _beglimit : stdgo.GoInt) < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L756"
                return false;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L759"
            return _b._matchPattern(_text, (_index - ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) : stdgo.GoInt));
        };
    }
    @:keep
    @:tdfield
    static public function scan( _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _text:stdgo.Slice<stdgo.GoInt32>, _index:stdgo.GoInt, _beglimit:stdgo.GoInt, _endlimit:stdgo.GoInt):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        var _defadv:stdgo.GoInt = (0 : stdgo.GoInt), _test:stdgo.GoInt = (0 : stdgo.GoInt), _test2:stdgo.GoInt = (0 : stdgo.GoInt), _match:stdgo.GoInt = (0 : stdgo.GoInt), _startmatch:stdgo.GoInt = (0 : stdgo.GoInt), _endmatch:stdgo.GoInt = (0 : stdgo.GoInt), _bump:stdgo.GoInt = (0 : stdgo.GoInt), _advance:stdgo.GoInt = (0 : stdgo.GoInt), _chTest:stdgo.GoInt32 = (0 : stdgo.GoInt32), _unicodeLookup:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L649"
        if (!(@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
            _defadv = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length);
            _startmatch = (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            _endmatch = (0 : stdgo.GoInt);
            _test = ((_index + _defadv : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
            _bump = (1 : stdgo.GoInt);
        } else {
            _defadv = -((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length);
            _startmatch = (0 : stdgo.GoInt);
            _endmatch = (-_defadv - (1 : stdgo.GoInt) : stdgo.GoInt);
            _test = (_index + _defadv : stdgo.GoInt);
            _bump = (-1 : stdgo.GoInt);
        };
        var _chMatch = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_startmatch : stdgo.GoInt)] : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L665"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L666"
            if (((_test >= _endlimit : Bool) || (_test < _beglimit : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L667"
                return (-1 : stdgo.GoInt);
            };
            _chTest = _text[(_test : stdgo.GoInt)];
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L672"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive) {
                _chTest = stdgo._internal.unicode.Unicode_tolower.toLower(_chTest);
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L676"
            if (_chTest != (_chMatch)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L677"
                if ((_chTest < (128 : stdgo.GoInt32) : Bool)) {
                    _advance = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII[(_chTest : stdgo.GoInt)];
                } else if (((_chTest < (65535 : stdgo.GoInt32) : Bool) && (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _unicodeLookup = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode[((_chTest >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt)];
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L681"
                    if (((_unicodeLookup.length) > (0 : stdgo.GoInt) : Bool)) {
                        _advance = _unicodeLookup[((_chTest & (255 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)];
                    } else {
                        _advance = _defadv;
                    };
                } else {
                    _advance = _defadv;
                };
                _test = (_test + (_advance) : stdgo.GoInt);
            } else {
                _test2 = _test;
                _match = _startmatch;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L695"
                while (true) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L696"
                    if (_match == (_endmatch)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L697"
                        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L698"
                            return (_test2 + (1 : stdgo.GoInt) : stdgo.GoInt);
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L700"
                            return _test2;
                        };
                    };
                    _match = (_match - (_bump) : stdgo.GoInt);
                    _test2 = (_test2 - (_bump) : stdgo.GoInt);
                    _chTest = _text[(_test2 : stdgo.GoInt)];
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L709"
                    if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive) {
                        _chTest = stdgo._internal.unicode.Unicode_tolower.toLower(_chTest);
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L713"
                    if (_chTest != ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_match : stdgo.GoInt)])) {
                        _advance = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive[(_match : stdgo.GoInt)];
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L715"
                        if ((_chTest < (128 : stdgo.GoInt32) : Bool)) {
                            _test2 = (((_match - _startmatch : stdgo.GoInt)) + (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII[(_chTest : stdgo.GoInt)] : stdgo.GoInt);
                        } else if (((_chTest < (65535 : stdgo.GoInt32) : Bool) && (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                            _unicodeLookup = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeUnicode[((_chTest >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt32) : stdgo.GoInt)];
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L719"
                            if (((_unicodeLookup.length) > (0 : stdgo.GoInt) : Bool)) {
                                _test2 = (((_match - _startmatch : stdgo.GoInt)) + _unicodeLookup[((_chTest & (255 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoInt);
                            } else {
                                _test = (_test + (_advance) : stdgo.GoInt);
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L723"
                                break;
                            };
                        } else {
                            _test = (_test + (_advance) : stdgo.GoInt);
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L727"
                            break;
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L730"
                        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rightToLeft) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L731"
                            if ((_test2 < _advance : Bool)) {
                                _advance = _test2;
                            };
                        } else if ((_test2 > _advance : Bool)) {
                            _advance = _test2;
                        };
                        _test = (_test + (_advance) : stdgo.GoInt);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L739"
                        break;
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function dump( _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>, _indent:stdgo.GoString):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        var _buf = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L614"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%sBM Pattern: %s\n%sPositive: " : stdgo.GoString), new stdgo.AnyInterface(_indent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_indent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L615"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive.length) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L616"
                _buf.writeString(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._positive[(_i : stdgo.GoInt)]).__copy__());
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L617"
                _buf.writeRune((32 : stdgo.GoInt32));
                _i++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L619"
        _buf.writeRune((10 : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L621"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L622"
            _buf.writeString(_indent?.__copy__());
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L623"
            _buf.writeString(("Negative table\n" : stdgo.GoString));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L624"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII.length) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L625"
                    if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII[(_i : stdgo.GoInt)] != (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L626"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("%s  %s %s\n" : stdgo.GoString), new stdgo.AnyInterface(_indent, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_escape.escape(((_i : stdgo.GoInt32) : stdgo.GoString).__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negativeASCII[(_i : stdgo.GoInt)]), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    _i++;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L631"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix> = _b;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L607"
        return ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern : stdgo.GoString)?.__copy__();
    }
}
