package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _parseClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _t = @:assignType ((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _re = _p._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags;
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        var _sign = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1738"
        if (((_t != (stdgo.Go.str() : stdgo.GoString)) && (_t[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = (-1 : stdgo.GoInt);
            _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1744"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (4 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__append__((10 : stdgo.GoInt32), (10 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
            };
        };
        var _class = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune;
        var _first = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1751"
        while (((_t == ((stdgo.Go.str() : stdgo.GoString)) || _t[(0 : stdgo.GoInt)] != ((93 : stdgo.GoUInt8)) : Bool) || _first : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1754"
            if (((((_t != ((stdgo.Go.str() : stdgo.GoString)) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool) && !_first : Bool) && (((_t.length == (1 : stdgo.GoInt)) || (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1756"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : (_t.__slice__(0, ((1 : stdgo.GoInt) + _size : stdgo.GoInt)) : stdgo.GoString)?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                    _rest = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _first = false;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1761"
            if (((((_t.length) > (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
                var __tmp__ = _p._parseNamedClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1763"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1764"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1766"
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1768"
                    continue;
                };
            };
            var __tmp__ = _p._parseUnicodeClass(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1774"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1775"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                    _rest = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1777"
            if (_nclass != null) {
                {
                    final __tmp__0 = _nclass;
                    final __tmp__1 = _nt?.__copy__();
                    _class = @:binopAssign __tmp__0;
                    _t = @:binopAssign __tmp__1;
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1779"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1783"
            {
                var __tmp__ = _p._parsePerlClassEscape(_t?.__copy__(), _class), _nclass:stdgo.Slice<stdgo.GoInt32> = __tmp__._0, _nt:stdgo.GoString = __tmp__._1;
                if (_nclass != null) {
                    {
                        final __tmp__0 = _nclass;
                        final __tmp__1 = _nt?.__copy__();
                        _class = @:binopAssign __tmp__0;
                        _t = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1785"
                    continue;
                };
            };
            var _rng = @:assignType (_t?.__copy__() : stdgo.GoString);
            var _lo:stdgo.GoInt32 = (0 : stdgo.GoInt32), _hi:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1791"
            {
                {
                    var __tmp__ = _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                    _lo = @:tmpset0 __tmp__._0;
                    _t = @:tmpset0 __tmp__._1?.__copy__();
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1792"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _hi = _lo;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1796"
            if (((((_t.length) >= (2 : stdgo.GoInt) : Bool) && _t[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_t[(1 : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) {
                _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1798"
                {
                    {
                        var __tmp__ = _p._parseClassChar(_t?.__copy__(), _s?.__copy__());
                        _hi = @:tmpset0 __tmp__._0;
                        _t = @:tmpset0 __tmp__._1?.__copy__();
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1799"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                            _rest = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1801"
                if ((_hi < _lo : Bool)) {
                    _rng = (_rng.__slice__(0, ((_rng.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1803"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _rng?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1806"
            if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                _class = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_class, _lo, _hi);
            } else {
                _class = stdgo._internal.regexp.syntax.Syntax__appendfoldedrange._appendFoldedRange(_class, _lo, _hi);
            };
        };
        _t = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = _class;
        _class = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1817"
        if ((_sign < (0 : stdgo.GoInt) : Bool)) {
            _class = stdgo._internal.regexp.syntax.Syntax__negateclass._negateClass(_class);
        };
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = _class;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1821"
        _p._push(_re);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1822"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _t?.__copy__(), _1 : (null : stdgo.Error) };
            _rest = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseUnicodeClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1659"
        if ((((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (128 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || _s[(0 : stdgo.GoInt)] != ((92 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != ((112 : stdgo.GoUInt8)) && _s[(1 : stdgo.GoInt)] != ((80 : stdgo.GoUInt8)) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1660"
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _sign = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1665"
        if (_s[(1 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8))) {
            _sign = (-1 : stdgo.GoInt);
        };
        var _t = @:assignType ((_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t?.__copy__()), _c:stdgo.GoInt32 = __tmp__._0, _t:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1670"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1671"
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _seq:stdgo.GoString = ("" : stdgo.GoString), _name:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1674"
        if (_c != ((123 : stdgo.GoInt32))) {
            _seq = (_s.__slice__(0, ((_s.length) - (_t.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _name = (_seq.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            var _end = @:assignType (stdgo._internal.strings.Strings_indexrune.indexRune(_s?.__copy__(), (125 : stdgo.GoInt32)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1681"
            if ((_end < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1682"
                {
                    _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1683"
                        return { _0 : _out, _1 : _rest, _2 : _err };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1685"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                    _out = __tmp__._0;
                    _rest = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            {
                final __tmp__0 = (_s.__slice__(0, (_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_s.__slice__((_end + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _seq = @:binopAssign __tmp__0;
                _t = @:binopAssign __tmp__1;
            };
            _name = (_s.__slice__((3 : stdgo.GoInt), _end) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1689"
            {
                _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_name?.__copy__());
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1690"
                    return { _0 : _out, _1 : _rest, _2 : _err };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1695"
        if (((_name != (stdgo.Go.str() : stdgo.GoString)) && (_name[(0 : stdgo.GoInt)] == (94 : stdgo.GoUInt8)) : Bool)) {
            _sign = -_sign;
            _name = (_name.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__unicodetable._unicodeTable(_name?.__copy__()), _tab:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._0, _fold:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1701"
        if (({
            final value = _tab;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1702"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _seq?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                _out = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1705"
        if (((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || ({
            final value = _fold;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1706"
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendtable._appendTable(_r, _tab);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedtable._appendNegatedTable(_r, _tab);
            };
        } else {
            var _tmp = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendtable._appendTable(_tmp, _tab);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendtable._appendTable(_tmp, _fold);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpClass, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1720"
            if ((_sign > (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendclass._appendClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedclass._appendNegatedClass(_r, _tmp);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1726"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t?.__copy__(), _2 : (null : stdgo.Error) };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _appendGroup( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _r:stdgo.Slice<stdgo.GoInt32>, _g:stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1614"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1615"
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedclass._appendNegatedClass(_r, _g._class);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendclass._appendClass(_r, _g._class);
            };
        } else {
            var _tmp = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpClass.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            _tmp = stdgo._internal.regexp.syntax.Syntax__appendfoldedclass._appendFoldedClass(_tmp, _g._class);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpClass = _tmp;
            _tmp = stdgo._internal.regexp.syntax.Syntax__cleanclass._cleanClass((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpClass, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>));
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1625"
            if ((_g._sign < (0 : stdgo.GoInt) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendnegatedclass._appendNegatedClass(_r, _tmp);
            } else {
                _r = stdgo._internal.regexp.syntax.Syntax__appendclass._appendClass(_r, _tmp);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1631"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _parseNamedClass( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1596"
        if (((((_s.length) < (2 : stdgo.GoInt) : Bool) || _s[(0 : stdgo.GoInt)] != ((91 : stdgo.GoUInt8)) : Bool) || (_s[(1 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1597"
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        var _i = @:assignType (stdgo._internal.strings.Strings_index.index((_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (":]" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1601"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1602"
            return { _0 : _out, _1 : _rest, _2 : _err };
        };
        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        var __0 = @:assignType ((_s.__slice__((0 : stdgo.GoInt), (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = @:assignType ((_s.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _s = __1, _name = __0;
        var _g = @:assignType ((stdgo._internal.regexp.syntax.Syntax__posixgroup._posixGroup[_name] ?? ({} : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1607"
        if (_g._sign == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1608"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid character class range" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _name?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                _out = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1610"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : _s?.__copy__(), _2 : (null : stdgo.Error) };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parsePerlClassEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _r:stdgo.Slice<stdgo.GoInt32>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _out = (null : stdgo.Slice<stdgo.GoInt32>), _rest = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1582"
        if (((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) == ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) || ((_s.length) < (2 : stdgo.GoInt) : Bool) : Bool) || (_s[(0 : stdgo.GoInt)] != (92 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1583"
            return { _0 : _out, _1 : _rest };
        };
        var _g = @:assignType ((stdgo._internal.regexp.syntax.Syntax__perlgroup._perlGroup[(_s.__slice__((0 : stdgo.GoInt), (2 : stdgo.GoInt)) : stdgo.GoString)] ?? ({} : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup))?.__copy__() : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1586"
        if (_g._sign == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1587"
            return { _0 : _out, _1 : _rest };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1589"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.GoString; } = { _0 : _p._appendGroup(_r, _g?.__copy__()), _1 : (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
            _out = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseClassChar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString, _wholeClass:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1560"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1561"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("missing closing ]" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _wholeClass?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                _r = __tmp__._0;
                _rest = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1566"
        if (_s[(0 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1567"
            return _p._parseEscape(_s?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1570"
        return stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _parseEscape( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var _t_175:stdgo.GoString = ("" : stdgo.GoString);
        var switchBreak = false;
        var _c_176:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _y_182:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _x_181:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _v_180:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nhex_179:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_178:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_177:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _t_175 = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1445"
                    if (_t_175 == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3389675i64;
                    } else {
                        _gotoNext = 3389730i64;
                    };
                } else if (__value__ == (3389675i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1446"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("trailing backslash at end of expression" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3389730i64;
                } else if (__value__ == (3389730i64)) {
                    {
                        var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_175?.__copy__());
                        _c_176 = @:tmpset0 __tmp__._0;
                        _t_175 = @:tmpset0 __tmp__._1?.__copy__();
                        _err_177 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1449"
                    if (_err_177 != null) {
                        _gotoNext = 3389770i64;
                    } else {
                        _gotoNext = 3389796i64;
                    };
                } else if (__value__ == (3389770i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1450"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3389796i64;
                } else if (__value__ == (3389796i64)) {
                    _gotoNext = 3389796i64;
                    switchBreak = false;
                    _gotoNext = 3389805i64;
                } else if (__value__ == (3389805i64)) {
                    //"file://#L0"
                    if (!switchBreak) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1454"
                        {
                            final __value__ = _c_176;
                            if (__value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                                _gotoNext = 3390145i64;
                            } else if (__value__ == ((48 : stdgo.GoInt32))) {
                                _gotoNext = 3390317i64;
                            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                                _gotoNext = 3390577i64;
                            } else if (__value__ == ((97 : stdgo.GoInt32))) {
                                _gotoNext = 3391770i64;
                            } else if (__value__ == ((102 : stdgo.GoInt32))) {
                                _gotoNext = 3391803i64;
                            } else if (__value__ == ((110 : stdgo.GoInt32))) {
                                _gotoNext = 3391836i64;
                            } else if (__value__ == ((114 : stdgo.GoInt32))) {
                                _gotoNext = 3391869i64;
                            } else if (__value__ == ((116 : stdgo.GoInt32))) {
                                _gotoNext = 3391902i64;
                            } else if (__value__ == ((118 : stdgo.GoInt32))) {
                                _gotoNext = 3391935i64;
                            } else {
                                _gotoNext = 3389817i64;
                            };
                        };
                    } else {
                        _gotoNext = 3391971i64;
                    };
                } else if (__value__ == (3389817i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1456"
                    if (((_c_176 < (128 : stdgo.GoInt32) : Bool) && !stdgo._internal.regexp.syntax.Syntax__isalnum._isalnum(_c_176) : Bool)) {
                        _gotoNext = 3389864i64;
                    } else {
                        _gotoNext = 3391971i64;
                    };
                } else if (__value__ == (3389864i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1461"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _c_176, _1 : _t_175?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3390145i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1467"
                    if (((_t_175 == ((stdgo.Go.str() : stdgo.GoString)) || (_t_175[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_175[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3390287i64;
                    } else {
                        _gotoNext = 3390304i64;
                    };
                } else if (__value__ == (3390287i64)) {
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3390304i64)) {
                    _gotoNext = 3390317i64;
                } else if (__value__ == (3390317i64)) {
                    _r = (_c_176 - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _i_178 = (1 : stdgo.GoInt);
                    _gotoNext = 3390400i64;
                } else if (__value__ == (3390400i64)) {
                    //"file://#L0"
                    if ((_i_178 < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3390423i64;
                    } else {
                        _gotoNext = 3390533i64;
                    };
                } else if (__value__ == (3390423i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1475"
                    if (((_t_175 == ((stdgo.Go.str() : stdgo.GoString)) || (_t_175[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_t_175[(0 : stdgo.GoInt)] > (55 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 3390467i64;
                    } else {
                        _gotoNext = 3390487i64;
                    };
                } else if (__value__ == (3390467i64)) {
                    _gotoNext = 3390533i64;
                } else if (__value__ == (3390487i64)) {
                    _r = (((_r * (8 : stdgo.GoInt32) : stdgo.GoInt32) + (_t_175[(0 : stdgo.GoInt)] : stdgo.GoInt32) : stdgo.GoInt32) - (48 : stdgo.GoInt32) : stdgo.GoInt32);
                    _t_175 = (_t_175.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1474"
                    _i_178++;
                    _gotoNext = 3390400i64;
                } else if (__value__ == (3390533i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1481"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t_175?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3390577i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1485"
                    if (_t_175 == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3390600i64;
                    } else {
                        _gotoNext = 3390617i64;
                    };
                } else if (__value__ == (3390600i64)) {
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3390617i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1488"
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_175?.__copy__());
                            _c_176 = @:tmpset0 __tmp__._0;
                            _t_175 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_177 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_177 != null) {
                            _gotoNext = 3390656i64;
                        } else {
                            _gotoNext = 3390685i64;
                        };
                    };
                } else if (__value__ == (3390656i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1489"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3390685i64;
                } else if (__value__ == (3390685i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1491"
                    if (_c_176 == ((123 : stdgo.GoInt32))) {
                        _gotoNext = 3390697i64;
                    } else {
                        _gotoNext = 3391305i64;
                    };
                } else if (__value__ == (3390697i64)) {
                    _nhex_179 = (0 : stdgo.GoInt);
                    _r = (0 : stdgo.GoInt32);
                    0i64;
                    _gotoNext = 3390907i64;
                } else if (__value__ == (3390907i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 3390911i64;
                    } else {
                        _gotoNext = 3391209i64;
                    };
                } else if (__value__ == (3390911i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1499"
                    if (_t_175 == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3390928i64;
                    } else {
                        _gotoNext = 3390958i64;
                    };
                } else if (__value__ == (3390928i64)) {
                    switchBreak = true;
                    _gotoNext = 3389805i64;
                } else if (__value__ == (3390958i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1502"
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_175?.__copy__());
                            _c_176 = @:tmpset0 __tmp__._0;
                            _t_175 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_177 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_177 != null) {
                            _gotoNext = 3390997i64;
                        } else {
                            _gotoNext = 3391032i64;
                        };
                    };
                } else if (__value__ == (3390997i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1503"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391032i64;
                } else if (__value__ == (3391032i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1505"
                    if (_c_176 == ((125 : stdgo.GoInt32))) {
                        _gotoNext = 3391044i64;
                    } else {
                        _gotoNext = 3391067i64;
                    };
                } else if (__value__ == (3391044i64)) {
                    _gotoNext = 3391209i64;
                } else if (__value__ == (3391067i64)) {
                    _v_180 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_176);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1509"
                    if ((_v_180 < (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3391094i64;
                    } else {
                        _gotoNext = 3391124i64;
                    };
                } else if (__value__ == (3391094i64)) {
                    switchBreak = true;
                    _gotoNext = 3389805i64;
                } else if (__value__ == (3391124i64)) {
                    _r = ((_r * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _v_180 : stdgo.GoInt32);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1513"
                    if ((_r > (1114111 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3391164i64;
                    } else {
                        _gotoNext = 3391194i64;
                    };
                } else if (__value__ == (3391164i64)) {
                    switchBreak = true;
                    _gotoNext = 3389805i64;
                } else if (__value__ == (3391194i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1516"
                    _nhex_179++;
                    _gotoNext = 3390907i64;
                } else if (__value__ == (3391209i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1518"
                    if (_nhex_179 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3391222i64;
                    } else {
                        _gotoNext = 3391249i64;
                    };
                } else if (__value__ == (3391222i64)) {
                    switchBreak = true;
                    _gotoNext = 3389805i64;
                } else if (__value__ == (3391249i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1521"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : _r, _1 : _t_175?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391305i64;
                } else if (__value__ == (3391305i64)) {
                    _x_181 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_176);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1526"
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_175?.__copy__());
                            _c_176 = @:tmpset0 __tmp__._0;
                            _t_175 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_177 = @:tmpset0 __tmp__._2;
                        };
                        if (_err_177 != null) {
                            _gotoNext = 3391360i64;
                        } else {
                            _gotoNext = 3391389i64;
                        };
                    };
                } else if (__value__ == (3391360i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1527"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391389i64;
                } else if (__value__ == (3391389i64)) {
                    _y_182 = stdgo._internal.regexp.syntax.Syntax__unhex._unhex(_c_176);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1530"
                    if (((_x_181 < (0 : stdgo.GoInt32) : Bool) || (_y_182 < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 3391423i64;
                    } else {
                        _gotoNext = 3391440i64;
                    };
                } else if (__value__ == (3391423i64)) {
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391440i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1533"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : ((_x_181 * (16 : stdgo.GoInt32) : stdgo.GoInt32) + _y_182 : stdgo.GoInt32), _1 : _t_175?.__copy__(), _2 : (null : stdgo.Error) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391770i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1542"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (7 : stdgo.GoInt32), _1 : _t_175?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391803i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1544"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (12 : stdgo.GoInt32), _1 : _t_175?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391836i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1546"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (10 : stdgo.GoInt32), _1 : _t_175?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391869i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1548"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (13 : stdgo.GoInt32), _1 : _t_175?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391902i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1550"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (9 : stdgo.GoInt32), _1 : _t_175?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391935i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1552"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (11 : stdgo.GoInt32), _1 : _t_175?.__copy__(), _2 : _err_177 };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 3391971i64;
                } else if (__value__ == (3391971i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1554"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoString; var _2 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_175.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                        _r = __tmp__._0;
                        _rest = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _parseRightParen( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1410"
        _p._concat();
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1411"
        if (_p._swapVerticalBar()) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(0, (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1415"
        _p._alternate();
        var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1418"
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1419"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError }));
        };
        var _re1 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(0, (_n - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1424"
        if ((@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op != ((128 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1425"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("unexpected )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wholeRegexp?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError }));
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags = (@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1429"
        if ((@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cap == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1431"
            _p._push(_re1);
        } else {
            (@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (13 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            (@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = ((@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
            (@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)] = _re1;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1436"
            _p._push(_re2);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1438"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _swapVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1377"
        if (((((_n >= (3 : stdgo.GoInt) : Bool) && (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((129 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
            var _re1 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re3 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1381"
            if (((@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op > (@:checkr _re3 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op : Bool)) {
                {
                    final __tmp__0 = _re3;
                    final __tmp__1 = _re1;
                    _re1 = @:binopAssign __tmp__0;
                    _re3 = @:binopAssign __tmp__1;
                };
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)] = _re3;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1385"
            stdgo._internal.regexp.syntax.Syntax__mergecharclass._mergeCharClass(_re3, _re1);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1386"
            _p._reuse(_re1);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1388"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1391"
        if ((_n >= (2 : stdgo.GoInt) : Bool)) {
            var _re1 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
            var _re2 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1394"
            if ((@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((129 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1395"
                if ((_n >= (3 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1398"
                    stdgo._internal.regexp.syntax.Syntax__cleanalt._cleanAlt((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (3 : stdgo.GoInt) : stdgo.GoInt)]);
                };
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)] = _re1;
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re2;
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1402"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1405"
        return false;
    }
    @:keep
    @:tdfield
    static public function _parseVerticalBar( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1327"
        _p._concat();
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1333"
        if (!_p._swapVerticalBar()) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1334"
            _p._op((129 : stdgo._internal.regexp.syntax.Syntax_op.Op));
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1337"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _parseInt( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _n = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1270"
        if (((_s == ((stdgo.Go.str() : stdgo.GoString)) || (_s[(0 : stdgo.GoInt)] < (48 : stdgo.GoUInt8) : Bool) : Bool) || ((57 : stdgo.GoUInt8) < _s[(0 : stdgo.GoInt)] : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1271"
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1274"
        if ((((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && ((48 : stdgo.GoUInt8) <= _s[(1 : stdgo.GoInt)] : Bool) : Bool) && (_s[(1 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1275"
            return { _0 : _n, _1 : _rest, _2 : _ok };
        };
        var _t = @:assignType (_s?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1278"
        while (((_s != ((stdgo.Go.str() : stdgo.GoString)) && ((48 : stdgo.GoUInt8) <= _s[(0 : stdgo.GoInt)] : Bool) : Bool) && (_s[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        _rest = _s?.__copy__();
        _ok = true;
        _t = (_t.__slice__(0, ((_t.length) - (_s.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1285"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_t.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1287"
                if ((_n >= (100000000 : stdgo.GoInt) : Bool)) {
                    _n = (-1 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1289"
                    break;
                };
_n = (((_n * (10 : stdgo.GoInt) : stdgo.GoInt) + (_t[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1293"
        return { _0 : _n, _1 : _rest, _2 : _ok };
    }
    @:keep
    @:tdfield
    static public function _parsePerlFlags( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _rest = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var loopBreak = false;
        var _sawFlag_173:Bool = false;
        var _flags_171:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        var _c_160:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _end_146:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_145:stdgo.GoString = ("" : stdgo.GoString);
        var _sign_172:stdgo.GoInt = (0 : stdgo.GoInt);
        var _re_159:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        var _name_148:stdgo.GoString = ("" : stdgo.GoString);
        var _capture_147:stdgo.GoString = ("" : stdgo.GoString);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _t_145 = _s?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1164"
                    if (((((_t_145.length) > (4 : stdgo.GoInt) : Bool) && _t_145[(2 : stdgo.GoInt)] == ((80 : stdgo.GoUInt8)) : Bool) && (_t_145[(3 : stdgo.GoInt)] == (60 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3383536i64;
                    } else {
                        _gotoNext = 3384150i64;
                    };
                } else if (__value__ == (3383536i64)) {
                    _end_146 = stdgo._internal.strings.Strings_indexrune.indexRune(_t_145?.__copy__(), (62 : stdgo.GoInt32));
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1167"
                    if ((_end_146 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3383606i64;
                    } else {
                        _gotoNext = 3383726i64;
                    };
                } else if (__value__ == (3383606i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1168"
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_t_145?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3383645i64;
                        } else {
                            _gotoNext = 3383674i64;
                        };
                    };
                } else if (__value__ == (3383645i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1169"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3383674i64;
                } else if (__value__ == (3383674i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1171"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3383726i64;
                } else if (__value__ == (3383726i64)) {
                    _capture_147 = (_t_145.__slice__(0, (_end_146 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _name_148 = (_t_145.__slice__((4 : stdgo.GoInt), _end_146) : stdgo.GoString)?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1176"
                    {
                        _err = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_name_148?.__copy__());
                        if (_err != null) {
                            _gotoNext = 3383834i64;
                        } else {
                            _gotoNext = 3383860i64;
                        };
                    };
                } else if (__value__ == (3383834i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1177"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3383860i64;
                } else if (__value__ == (3383860i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1179"
                    if (!stdgo._internal.regexp.syntax.Syntax__isvalidcapturename._isValidCaptureName(_name_148?.__copy__())) {
                        _gotoNext = 3383889i64;
                    } else {
                        _gotoNext = 3383991i64;
                    };
                } else if (__value__ == (3383889i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1180"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid named capture" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _capture_147?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3383991i64;
                } else if (__value__ == (3383991i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1184"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numCap++;
                    _re_159 = _p._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    (@:checkr _re_159 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cap = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numCap;
                    (@:checkr _re_159 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name = _name_148?.__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1188"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (_t_145.__slice__((_end_146 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3384150i64;
                } else if (__value__ == (3384150i64)) {
                    _t_145 = (_t_145.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _flags_171 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags;
                    _sign_172 = (1 : stdgo.GoInt);
                    _sawFlag_173 = false;
                    _gotoNext = 3384231i64;
                } else if (__value__ == (3384231i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384238i64)) {
                    //"file://#L0"
                    if (!loopBreak && (_t_145 != (stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3384250i64;
                    } else {
                        _gotoNext = 3385065i64;
                    };
                } else if (__value__ == (3384250i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1199"
                    {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_145?.__copy__());
                            _c_160 = @:tmpset0 __tmp__._0;
                            _t_145 = @:tmpset0 __tmp__._1?.__copy__();
                            _err = @:tmpset0 __tmp__._2;
                        };
                        if (_err != null) {
                            _gotoNext = 3384293i64;
                        } else {
                            _gotoNext = 3384319i64;
                        };
                    };
                } else if (__value__ == (3384293i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1200"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3384319i64;
                } else if (__value__ == (3384319i64)) {
                    _gotoNext = 3384319i64;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1202"
                    {
                        final __value__ = _c_160;
                        if (__value__ == ((105 : stdgo.GoInt32))) {
                            _gotoNext = 3384370i64;
                        } else if (__value__ == ((109 : stdgo.GoInt32))) {
                            _gotoNext = 3384421i64;
                        } else if (__value__ == ((115 : stdgo.GoInt32))) {
                            _gotoNext = 3384472i64;
                        } else if (__value__ == ((85 : stdgo.GoInt32))) {
                            _gotoNext = 3384520i64;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 3384598i64;
                        } else if (__value__ == ((58 : stdgo.GoInt32)) || __value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 3384858i64;
                        } else {
                            _gotoNext = 3384332i64;
                        };
                    };
                } else if (__value__ == (3384332i64)) {
                    loopBreak = true;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384370i64)) {
                    _flags_171 = (_flags_171 | ((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_173 = true;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384421i64)) {
                    _flags_171 = (_flags_171 & ((((16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_173 = true;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384472i64)) {
                    _flags_171 = (_flags_171 | ((8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_173 = true;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384520i64)) {
                    _flags_171 = (_flags_171 | ((32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
                    _sawFlag_173 = true;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384598i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1222"
                    if ((_sign_172 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3384623i64;
                    } else {
                        _gotoNext = 3384648i64;
                    };
                } else if (__value__ == (3384623i64)) {
                    loopBreak = true;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384648i64)) {
                    _sign_172 = (-1 : stdgo.GoInt);
                    _flags_171 = (-1 ^ _flags_171);
                    _sawFlag_173 = false;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384858i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1233"
                    if ((_sign_172 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3384888i64;
                    } else {
                        _gotoNext = 3384957i64;
                    };
                } else if (__value__ == (3384888i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1234"
                    if (!_sawFlag_173) {
                        _gotoNext = 3384906i64;
                    } else {
                        _gotoNext = 3384934i64;
                    };
                } else if (__value__ == (3384906i64)) {
                    loopBreak = true;
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3384934i64)) {
                    _flags_171 = (-1 ^ _flags_171);
                    _gotoNext = 3384957i64;
                } else if (__value__ == (3384957i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1239"
                    if (_c_160 == ((58 : stdgo.GoInt32))) {
                        _gotoNext = 3384969i64;
                    } else {
                        _gotoNext = 3385023i64;
                    };
                } else if (__value__ == (3384969i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1241"
                    _p._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    _gotoNext = 3385023i64;
                } else if (__value__ == (3385023i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags = _flags_171;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1244"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : _t_145?.__copy__(), _1 : (null : stdgo.Error) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3384238i64;
                } else if (__value__ == (3385065i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1248"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid or unsupported Perl syntax" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_s.__slice__(0, ((_s.length) - (_t_145.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                        _rest = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _parseRepeat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; var _3 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _min = (0 : stdgo.GoInt), _max = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1108"
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_s[(0 : stdgo.GoInt)] != (123 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1109"
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        var _ok1:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1113"
        {
            {
                var __tmp__ = _p._parseInt(_s?.__copy__());
                _min = @:tmpset0 __tmp__._0;
                _s = @:tmpset0 __tmp__._1?.__copy__();
                _ok1 = @:tmpset0 __tmp__._2;
            };
            if (!_ok1) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1114"
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1116"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1117"
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1119"
        if (_s[(0 : stdgo.GoInt)] != ((44 : stdgo.GoUInt8))) {
            _max = _min;
        } else {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1123"
            if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1124"
                return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1126"
            if (_s[(0 : stdgo.GoInt)] == ((125 : stdgo.GoUInt8))) {
                _max = (-1 : stdgo.GoInt);
            } else {
                {
                    var __tmp__ = _p._parseInt(_s?.__copy__());
                    _max = @:tmpset0 __tmp__._0;
                    _s = @:tmpset0 __tmp__._1?.__copy__();
                    _ok1 = @:tmpset0 __tmp__._2;
                };
                if (!_ok1) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1129"
                    return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
                } else if ((_max < (0 : stdgo.GoInt) : Bool)) {
                    _min = (-1 : stdgo.GoInt);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1135"
        if (((_s == (stdgo.Go.str() : stdgo.GoString)) || (_s[(0 : stdgo.GoInt)] != (125 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1136"
            return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
        };
        _rest = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _ok = true;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1140"
        return { _0 : _min, _1 : _max, _2 : _rest, _3 : _ok };
    }
    @:keep
    @:tdfield
    static public function _removeLeadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _reuse:Bool):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L848"
        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L849"
            if (_reuse) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L850"
                _p._reuse((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)]);
            };
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__(0, (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__copyTo__(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>))) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L853"
            {
                final __value__ = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length);
                if (__value__ == ((0 : stdgo.GoInt))) {
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (2 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    var _old = _re;
                    _re = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L860"
                    _p._reuse(_old);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L862"
            return _re;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L864"
        if (_reuse) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L865"
            _p._reuse(_re);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L867"
        return _p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_op.Op));
    }
    @:keep
    @:tdfield
    static public function _leadingRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L831"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L832"
            return null;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L834"
        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L836"
            if ((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L837"
                return null;
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L839"
            return _sub;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L841"
        return _re;
    }
    @:keep
    @:tdfield
    static public function _removeLeadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _n:stdgo.GoInt):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L794"
        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _sub = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)];
            _sub = _p._removeLeadingString(_sub, _n);
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)] = _sub;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L800"
            if ((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L801"
                _p._reuse(_sub);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L802"
                {
                    final __value__ = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length);
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (2 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        var _old = _re;
                        _re = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(1 : stdgo.GoInt)];
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L810"
                        _p._reuse(_old);
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L812"
                        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__copyTo__(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>));
                        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__(0, (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L816"
            return _re;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L819"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__slice__(0, (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__copyTo__(((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__slice__(_n) : stdgo.Slice<stdgo.GoInt32>))) : stdgo.Slice<stdgo.GoInt32>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L821"
            if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((0 : stdgo.GoInt))) {
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (2 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L825"
        return _re;
    }
    @:keep
    @:tdfield
    static public function _leadingString( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L782"
        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _re = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L785"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op != ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L786"
            return { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L788"
        return { _0 : (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune, _1 : ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) };
    }
    @:keep
    @:tdfield
    static public function _factor( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _sub:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>):stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L593"
        if (((_sub.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L594"
            return _sub;
        };
        var _str:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
        var _strflags:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        var _start = @:assignType (0 : stdgo.GoInt);
        var _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L602"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                var _istr:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
var _iflags:stdgo._internal.regexp.syntax.Syntax_flags.Flags = ((0 : stdgo.GoUInt16) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L611"
                if ((_i < (_sub.length) : Bool)) {
                    {
                        var __tmp__ = _p._leadingString(_sub[(_i : stdgo.GoInt)]);
                        _istr = @:tmpset0 __tmp__._0;
                        _iflags = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L613"
                    if (_iflags == (_strflags)) {
                        var _same = @:assignType (0 : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L615"
                        while ((((_same < (_str.length) : Bool) && (_same < (_istr.length) : Bool) : Bool) && (_str[(_same : stdgo.GoInt)] == _istr[(_same : stdgo.GoInt)]) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L616"
                            _same++;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L618"
                        if ((_same > (0 : stdgo.GoInt) : Bool)) {
                            _str = (_str.__slice__(0, _same) : stdgo.Slice<stdgo.GoInt32>);
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L622"
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L632"
                if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                } else {
                    var _prefix = _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    (@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = _strflags;
                    (@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = (((@:checkr _prefix ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>).__append__(...(_str : Array<stdgo.GoInt32>)) : stdgo.Slice<stdgo.GoInt32>);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L643"
                    {
                        var _j = @:assignType (_start : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            _sub[(_j : stdgo.GoInt)] = _p._removeLeadingString(_sub[(_j : stdgo.GoInt)], (_str.length));
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L645"
                            _p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    var _re = _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(_prefix, _suffix) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    _out = (_out.__append__(_re) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                };
_start = _i;
_str = _istr;
_strflags = _iflags;
                _i++;
            };
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        var _first:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L672"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                var _ifirst:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L679"
                if ((_i < (_sub.length) : Bool)) {
                    _ifirst = _p._leadingRegexp(_sub[(_i : stdgo.GoInt)]);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L681"
                    if (((({
                        final value = _first;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && _first.equal(_ifirst) : Bool) && ((stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass(_first) || ((((@:checkr _first ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (@:checkr _first ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min == ((@:checkr _first ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass((@:checkr _first ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)]) : Bool)) : Bool)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L684"
                        {
                            _i++;
                            continue;
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L692"
                if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                } else {
                    var _prefix = _first;
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L700"
                    {
                        var _j = @:assignType (_start : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            var _reuse = @:assignType (_j != (_start) : Bool);
_sub[(_j : stdgo.GoInt)] = _p._removeLeadingRegexp(_sub[(_j : stdgo.GoInt)], _reuse);
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L703"
                            _p._checkLimits(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    var _suffix = _p._collapse((_sub.__slice__(_start, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>), (19 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    var _re = _p._newRegexp((18 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                    (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>).__append__(_prefix, _suffix) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                    _out = (_out.__append__(_re) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                };
_start = _i;
_first = _ifirst;
                _i++;
            };
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L721"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i <= (_sub.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L728"
                if (((_i < (_sub.length) : Bool) && stdgo._internal.regexp.syntax.Syntax__ischarclass._isCharClass(_sub[(_i : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L729"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L734"
                if (_i == (_start)) {} else if (_i == ((_start + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                } else {
                    var _max = @:assignType (_start : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L742"
                    {
                        var _j = @:assignType (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L743"
                            if ((((@:checkr _sub[(_max : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op < (@:checkr _sub[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op : Bool) || ((@:checkr _sub[(_max : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((@:checkr _sub[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op) && (((@:checkr _sub[(_max : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) < ((@:checkr _sub[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) : Bool) : Bool) : Bool)) {
                                _max = _j;
                            };
                            _j++;
                        };
                    };
                    {
                        final __tmp__0 = _sub[(_max : stdgo.GoInt)];
                        final __tmp__1 = _sub[(_start : stdgo.GoInt)];
                        final __tmp__2 = _sub;
                        final __tmp__3 = (_start : stdgo.GoInt);
                        final __tmp__4 = _sub;
                        final __tmp__5 = (_max : stdgo.GoInt);
                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L749"
                    {
                        var _j = @:assignType (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < _i : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L750"
                            stdgo._internal.regexp.syntax.Syntax__mergecharclass._mergeCharClass(_sub[(_start : stdgo.GoInt)], _sub[(_j : stdgo.GoInt)]);
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L751"
                            _p._reuse(_sub[(_j : stdgo.GoInt)]);
                            _j++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L753"
                    stdgo._internal.regexp.syntax.Syntax__cleanalt._cleanAlt(_sub[(_start : stdgo.GoInt)]);
                    _out = (_out.__append__(_sub[(_start : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                };
//"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L758"
                if ((_i < (_sub.length) : Bool)) {
                    _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                };
_start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                _i++;
            };
        };
        _sub = _out;
        _start = (0 : stdgo.GoInt);
        _out = (_sub.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L768"
        if (_sub != null) for (_i => _ in _sub) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L769"
            if (((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_sub.length) : Bool) && (@:checkr _sub[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((2 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) && ((@:checkr _sub[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (2 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L770"
                continue;
            };
            _out = (_out.__append__(_sub[(_i : stdgo.GoInt)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        };
        _sub = _out;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L776"
        return _sub;
    }
    @:keep
    @:tdfield
    static public function _collapse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _subs:stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L553"
        if ((_subs.length) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L554"
            return _subs[(0 : stdgo.GoInt)];
        };
        var _re = _p._newRegexp(_op);
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L558"
        if (_subs != null) for (__1 => _sub in _subs) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L559"
            if ((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == (_op)) {
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__append__(...((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub : Array<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L561"
                _p._reuse(_sub);
            } else {
                (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.__append__(_sub) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L566"
        if (_op == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = _p._factor((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L568"
            if (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length) == ((1 : stdgo.GoInt))) {
                var _old = _re;
                _re = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)];
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L571"
                _p._reuse(_old);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L574"
        return _re;
    }
    @:keep
    @:tdfield
    static public function _alternate( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L504"
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op < (128 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L505"
            _i--;
        };
        var _subs = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L512"
        if (((_subs.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L513"
            stdgo._internal.regexp.syntax.Syntax__cleanalt._cleanAlt(_subs[((_subs.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L518"
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L519"
            return _p._push(_p._newRegexp((1 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L522"
        return _p._push(_p._collapse(_subs, (19 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
    }
    @:keep
    @:tdfield
    static public function _concat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L481"
        _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
        var _i = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L485"
        while (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op < (128 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L486"
            _i--;
        };
        var _subs = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L492"
        if ((_subs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L493"
            return _p._push(_p._newRegexp((2 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L496"
        return _p._push(_p._collapse(_subs, (18 : stdgo._internal.regexp.syntax.Syntax_op.Op)));
    }
    @:keep
    @:tdfield
    static public function _repeat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op, _min:stdgo.GoInt, _max:stdgo.GoInt, _before:stdgo.GoString, _after:stdgo.GoString, _lastRepeat:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _flags = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L409"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L410"
            if ((((_after.length) > (0 : stdgo.GoInt) : Bool) && (_after[(0 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                _after = (_after.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _flags = (_flags ^ ((32 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L414"
            if (_lastRepeat != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L418"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid nested repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_lastRepeat.__slice__(0, ((_lastRepeat.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
            };
        };
        var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L422"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L423"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
        };
        var _sub = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L426"
        if (((@:checkr _sub ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op >= (128 : stdgo._internal.regexp.syntax.Syntax_op.Op) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L427"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing argument to repetition operator" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
        };
        var _re = _p._newRegexp(_op);
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min = _min;
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max = _max;
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = _flags;
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)] = _sub;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _re;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L437"
        _p._checkLimits(_re);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L439"
        if (((_op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && (((_min >= (2 : stdgo.GoInt) : Bool) || (_max >= (2 : stdgo.GoInt) : Bool) : Bool)) : Bool) && !stdgo._internal.regexp.syntax.Syntax__repeatisvalid._repeatIsValid(_re, (1000 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L440"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before.__slice__(0, ((_before.length) - (_after.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L443"
        return { _0 : _after?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _op( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _re = _p._newRegexp(_op);
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L400"
        return _p._push(_re);
    }
    @:keep
    @:tdfield
    static public function _literal( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _r:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _re = _p._newRegexp((3 : stdgo._internal.regexp.syntax.Syntax_op.Op));
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L372"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
            _r = stdgo._internal.regexp.syntax.Syntax__minfoldrune._minFoldRune(_r);
        };
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0[(0 : stdgo.GoInt)] = _r;
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L377"
        _p._push(_re);
    }
    @:keep
    @:tdfield
    static public function _maybeConcat( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _r:stdgo.GoInt32, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L342"
        if ((_n < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L343"
            return false;
        };
        var _re1 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
        var _re2 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L348"
        if ((((@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op != ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || (@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op != ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op)) : Bool) || (((@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags & (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L349"
            return false;
        };
        (@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__append__(...((@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune : Array<stdgo.GoInt32>)) : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L356"
        if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
            (@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] = _r;
            (@:checkr _re1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = _flags;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L360"
            return true;
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L364"
        _p._reuse(_re1);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L365"
        return false;
    }
    @:keep
    @:tdfield
    static public function _push( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numRunes = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numRunes + (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L296"
        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((2 : stdgo.GoInt)) : Bool) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] == (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(1 : stdgo.GoInt)]) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L298"
            if (_p._maybeConcat((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)], ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L299"
                return null;
            };
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (3 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags & (((1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) ^ (-1i64 : stdgo.GoInt32) : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        } else if ((((((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((4 : stdgo.GoInt)) : Bool) && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] == ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(2 : stdgo.GoInt)] == ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((3 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)]) == ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((2 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(2 : stdgo.GoInt)]) == ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) || (((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op)) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length) == ((2 : stdgo.GoInt)) : Bool) && ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32) == ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)]) == ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) && stdgo._internal.unicode.Unicode_simplefold.simpleFold((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(1 : stdgo.GoInt)]) == ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[((0 : stdgo.GoInt) : stdgo.GoInt)]) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L313"
            if (_p._maybeConcat((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune[(0 : stdgo.GoInt)], ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags | (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L314"
                return null;
            };
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = (3 : stdgo._internal.regexp.syntax.Syntax_op.Op);
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>);
            (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flags | (1 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L323"
            _p._maybeConcat((-1 : stdgo.GoInt32), (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack.__append__(_re) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L327"
        _p._checkLimits(_re);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L328"
        return _re;
    }
    @:keep
    @:tdfield
    static public function _calcHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _force:Bool):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L275"
        if (!_force) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L276"
            {
                var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height.__exists__(_re) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height[_re], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _h:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L277"
                    return _h;
                };
            };
        };
        var _h = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L281"
        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub != null) for (__1 => _sub in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub) {
            var _hsub = @:assignType (_p._calcHeight(_sub, false) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L283"
            if ((_h < ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt) : Bool)) {
                _h = ((1 : stdgo.GoInt) + _hsub : stdgo.GoInt);
            };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height[_re] = _h;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L288"
        return _h;
    }
    @:keep
    @:tdfield
    static public function _checkHeight( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L260"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numRegexp < (1000 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L261"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L263"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height == null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L265"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack != null) for (__1 => _re in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L266"
                _p._checkHeight(_re);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L269"
        if ((_p._calcHeight(_re, true) > (1000 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L270"
            throw new stdgo.AnyInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode));
        };
    }
    @:keep
    @:tdfield
    static public function _calcSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _force:Bool):stdgo.GoInt64 {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L212"
        if (!_force) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L213"
            {
                var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size.__exists__(_re) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size[_re], _1 : true } : { _0 : (0 : stdgo.GoInt64), _1 : false }), _size:stdgo.GoInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L214"
                    return _size;
                };
            };
        };
        var _size:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L219"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op;
                    if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        _size = ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune.length : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((14 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        _size = ((2i64 : stdgo.GoInt64) + _p._calcSize((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_op.Op)) || __value__ == ((16 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        _size = ((1i64 : stdgo.GoInt64) + _p._calcSize((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        break;
                    } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L228"
                        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub != null) for (__1 => _sub in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub) {
                            _size = (_size + (_p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L232"
                        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub != null) for (__1 => _sub in (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub) {
                            _size = (_size + (_p._calcSize(_sub, false)) : stdgo.GoInt64);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L235"
                        if ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length) > (1 : stdgo.GoInt) : Bool)) {
                            _size = (_size + ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub.length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64);
                        };
                        break;
                    } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                        var _sub = @:assignType (_p._calcSize((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub[(0 : stdgo.GoInt)], false) : stdgo.GoInt64);
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L240"
                        if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max == ((-1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L241"
                            if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min == ((0 : stdgo.GoInt))) {
                                _size = ((2i64 : stdgo.GoInt64) + _sub : stdgo.GoInt64);
                            } else {
                                _size = ((1i64 : stdgo.GoInt64) + (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min : stdgo.GoInt64) * _sub : stdgo.GoInt64) : stdgo.GoInt64);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L246"
                            break;
                        };
                        _size = ((((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max : stdgo.GoInt64) * _sub : stdgo.GoInt64) + (((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max - (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min : stdgo.GoInt) : stdgo.GoInt64) : stdgo.GoInt64);
                        break;
                    };
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L252"
        if ((_size < (1i64 : stdgo.GoInt64) : Bool)) {
            _size = (1i64 : stdgo.GoInt64);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size[_re] = _size;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L256"
        return _size;
    }
    @:keep
    @:tdfield
    static public function _checkSize( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L170"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size == null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L176"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._repeats == ((0i64 : stdgo.GoInt64))) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._repeats = (1i64 : stdgo.GoInt64);
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L179"
            if ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                var _n = @:assignType ((@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).max : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L181"
                if (_n == ((-1 : stdgo.GoInt))) {
                    _n = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).min;
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L184"
                if ((_n <= (0 : stdgo.GoInt) : Bool)) {
                    _n = (1 : stdgo.GoInt);
                };
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L187"
                if (((_n : stdgo.GoInt64) > ((3355443i64 : stdgo.GoInt64) / (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._repeats : stdgo.GoInt64) : Bool)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._repeats = (3355443i64 : stdgo.GoInt64);
                } else {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._repeats = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._repeats * ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L193"
            if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numRegexp : stdgo.GoInt64) < ((3355443i64 : stdgo.GoInt64) / (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._repeats : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L194"
                return;
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, stdgo.GoInt64>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L201"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack != null) for (__1 => _re in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L202"
                _p._checkSize(_re);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L206"
        if ((_p._calcSize(_re, true) > (3355443i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L207"
            throw new stdgo.AnyInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode));
        };
    }
    @:keep
    @:tdfield
    static public function _checkLimits( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L162"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numRunes > (33554432 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L163"
            throw new stdgo.AnyInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode));
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L165"
        _p._checkSize(_re);
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L166"
        _p._checkHeight(_re);
    }
    @:keep
    @:tdfield
    static public function _reuse( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L154"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height != null) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L155"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height != null) (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._height.__remove__(_re);
        };
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub0[(0 : stdgo.GoInt)] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free = _re;
    }
    @:keep
    @:tdfield
    static public function _newRegexp( _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser>, _op:stdgo._internal.regexp.syntax.Syntax_op.Op):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> {
        @:recv var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser> = _p;
        var _re = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L142"
        if (({
            final value = _re;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free = (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub0[(0 : stdgo.GoInt)];
            {
                var __tmp__ = (new stdgo._internal.regexp.syntax.Syntax_regexp.Regexp() : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp);
                var x = (_re : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp);
                x.op = __tmp__?.op;
                x.flags = __tmp__?.flags;
                x.sub = __tmp__?.sub;
                x.sub0 = __tmp__?.sub0;
                x.rune = __tmp__?.rune;
                x.rune0 = __tmp__?.rune0;
                x.min = __tmp__?.min;
                x.max = __tmp__?.max;
                x.cap = __tmp__?.cap;
                x.name = __tmp__?.name;
            };
        } else {
            _re = (stdgo.Go.setRef(({} : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_regexpdotregexp.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_regexpdotRegexp })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L147"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._numRegexp++;
        };
        (@:checkr _re ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op = _op;
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L150"
        return _re;
    }
}
