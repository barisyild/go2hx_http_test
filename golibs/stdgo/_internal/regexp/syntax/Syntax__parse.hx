package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _parse(_s:stdgo.GoString, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _0 = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err = (null : stdgo.Error);
        try {
            var _max_120:stdgo.GoInt = (0 : stdgo.GoInt);
            var _before_116:stdgo.GoString = ("" : stdgo.GoString);
            var _lastRepeat_113:stdgo.GoString = ("" : stdgo.GoString);
            var _op_112:stdgo._internal.regexp.syntax.Syntax_op.Op = ((0 : stdgo.GoUInt8) : stdgo._internal.regexp.syntax.Syntax_op.Op);
            var _re_138:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
            var _lit_123:stdgo.GoString = ("" : stdgo.GoString);
            var _before_118:stdgo.GoString = ("" : stdgo.GoString);
            var _repeat_115:stdgo.GoString = ("" : stdgo.GoString);
            var _c_111:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _n_144:stdgo.GoInt = (0 : stdgo.GoInt);
            var _rest_143:stdgo.GoString = ("" : stdgo.GoString);
            var _ok_122:Bool = false;
            var _err_109:stdgo.Error = (null : stdgo.Error);
            var _rest_125:stdgo.GoString = ("" : stdgo.GoString);
            var _c_124:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            var _after_117:stdgo.GoString = ("" : stdgo.GoString);
            var _min_119:stdgo.GoInt = (0 : stdgo.GoInt);
            var _r_142:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _rest_140:stdgo.GoString = ("" : stdgo.GoString);
            var _after_121:stdgo.GoString = ("" : stdgo.GoString);
            var _p_110:stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser = ({} : stdgo._internal.regexp.syntax.Syntax_t_parser.T_parser);
            var bigSwitchBreak = false;
            var _err_141:stdgo.Error = (null : stdgo.Error);
            var _err_126:stdgo.Error = (null : stdgo.Error);
            var _t_114:stdgo.GoString = ("" : stdgo.GoString);
            var _r_139:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
            var _gotoNext = 0i64;
            _gotoNext == ((0i64 : stdgo.GoInt));
            //"file://#L0"
            while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
                //"file://#L0"
                {
                    final __value__ = _gotoNext;
                    if (__value__ == (0i64)) {
                        {
                            __deferstack__.unshift({ ran : false, f : () -> ({
                                var a = function():Void {
                                    //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L896"
                                    {
                                        var _r = @:assignType ({
                                            final r = stdgo.Go.recover_exception;
                                            stdgo.Go.recover_exception = null;
                                            r;
                                        } : stdgo.AnyInterface);
                                        {
                                            final __value__ = _r;
                                            if (({
                                                final value = __value__;
                                                (value == null || (value : Dynamic).__nil__);
                                            })) {} else if (__value__ == (new stdgo.AnyInterface(stdgo.Go.asInterface((("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode)))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression too large" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError }));
                                            } else if (__value__ == (new stdgo.AnyInterface(stdgo.Go.asInterface((("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errorcodedoterrorcode.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errorcodedotErrorCode)))) {
                                                _err = stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("expression nests too deeply" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError }));
                                            } else {
                                                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L898"
                                                throw ({
                                                    final __t__ = _r;
                                                    if (__t__ == null) {
                                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                                    } else {
                                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                    };
                                                });
                                            };
                                        };
                                    };
                                };
                                a();
                            }) });
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L908"
                        if ((_flags & (2 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3377732i64;
                        } else {
                            _gotoNext = 3377913i64;
                        };
                    } else if (__value__ == (3377732i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L910"
                        {
                            _err_109 = stdgo._internal.regexp.syntax.Syntax__checkutf8._checkUTF8(_s?.__copy__());
                            if (_err_109 != null) {
                                _gotoNext = 3377811i64;
                            } else {
                                _gotoNext = 3377838i64;
                            };
                        };
                    } else if (__value__ == (3377811i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L911"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_109 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3377838i64;
                    } else if (__value__ == (3377838i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L913"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : stdgo._internal.regexp.syntax.Syntax__literalregexp._literalRegexp(_s?.__copy__(), _flags), _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3377913i64;
                    } else if (__value__ == (3377913i64)) {
                        _p_110._flags = _flags;
                        _p_110._wholeRegexp = _s?.__copy__();
                        _t_114 = _s?.__copy__();
                        0i64;
                        _gotoNext = 3378041i64;
                    } else if (__value__ == (3378041i64)) {
                        //"file://#L0"
                        if (_t_114 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3378053i64;
                        } else {
                            _gotoNext = 3381443i64;
                        };
                    } else if (__value__ == (3378053i64)) {
                        _repeat_115 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        _gotoNext = 3378071i64;
                    } else if (__value__ == (3378071i64)) {
                        bigSwitchBreak = false;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3378084i64)) {
                        //"file://#L0"
                        if (!bigSwitchBreak) {
                            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L929"
                            {
                                final __value__ = _t_114[(0 : stdgo.GoInt)];
                                if (__value__ == ((40 : stdgo.GoUInt8))) {
                                    _gotoNext = 3378197i64;
                                } else if (__value__ == ((124 : stdgo.GoUInt8))) {
                                    _gotoNext = 3378467i64;
                                } else if (__value__ == ((41 : stdgo.GoUInt8))) {
                                    _gotoNext = 3378564i64;
                                } else if (__value__ == ((94 : stdgo.GoUInt8))) {
                                    _gotoNext = 3378660i64;
                                } else if (__value__ == ((36 : stdgo.GoUInt8))) {
                                    _gotoNext = 3378775i64;
                                } else if (__value__ == ((46 : stdgo.GoUInt8))) {
                                    _gotoNext = 3378905i64;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _gotoNext = 3379019i64;
                                } else if (__value__ == ((42 : stdgo.GoUInt8)) || __value__ == ((43 : stdgo.GoUInt8)) || __value__ == ((63 : stdgo.GoUInt8))) {
                                    _gotoNext = 3379101i64;
                                } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                                    _gotoNext = 3379402i64;
                                } else if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    _gotoNext = 3379958i64;
                                } else {
                                    _gotoNext = 3378100i64;
                                };
                            };
                        } else {
                            _gotoNext = 3381418i64;
                        };
                    } else if (__value__ == (3378100i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L931"
                        {
                            {
                                var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_t_114?.__copy__());
                                _c_111 = @:tmpset0 __tmp__._0;
                                _t_114 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3378151i64;
                            } else {
                                _gotoNext = 3378181i64;
                            };
                        };
                    } else if (__value__ == (3378151i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L932"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3378181i64;
                    } else if (__value__ == (3378181i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L934"
                        _p_110._literal(_c_111);
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3378197i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L937"
                        if ((((_p_110._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_114.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && (_t_114[(1 : stdgo.GoInt)] == (63 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3378262i64;
                        } else {
                            _gotoNext = 3378405i64;
                        };
                    } else if (__value__ == (3378262i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L939"
                        {
                            {
                                var __tmp__ = _p_110._parsePerlFlags(_t_114?.__copy__());
                                _t_114 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3378358i64;
                            } else {
                                _gotoNext = 3378391i64;
                            };
                        };
                    } else if (__value__ == (3378358i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L940"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3378391i64;
                    } else if (__value__ == (3378391i64)) {
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3378405i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L944"
                        _p_110._numCap++;
                        _p_110._op((128 : stdgo._internal.regexp.syntax.Syntax_op.Op)).cap = _p_110._numCap;
                        _t_114 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3378467i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L948"
                        {
                            _err = _p_110._parseVerticalBar();
                            if (_err != null) {
                                _gotoNext = 3378522i64;
                            } else {
                                _gotoNext = 3378552i64;
                            };
                        };
                    } else if (__value__ == (3378522i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L949"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3378552i64;
                    } else if (__value__ == (3378552i64)) {
                        _t_114 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3378564i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L953"
                        {
                            _err = _p_110._parseRightParen();
                            if (_err != null) {
                                _gotoNext = 3378618i64;
                            } else {
                                _gotoNext = 3378648i64;
                            };
                        };
                    } else if (__value__ == (3378618i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L954"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3378648i64;
                    } else if (__value__ == (3378648i64)) {
                        _t_114 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3378660i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L958"
                        if ((_p_110._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3378697i64;
                        } else {
                            _gotoNext = 3378731i64;
                        };
                    } else if (__value__ == (3378697i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L959"
                        _p_110._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3378763i64;
                    } else if (__value__ == (3378731i64)) {
                        _gotoNext = 3378731i64;
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L961"
                        _p_110._op((7 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3378763i64;
                    } else if (__value__ == (3378763i64)) {
                        _t_114 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3378775i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L965"
                        if ((_p_110._flags & (16 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3378812i64;
                        } else {
                            _gotoNext = 3378863i64;
                        };
                    } else if (__value__ == (3378812i64)) {
                        {
                            final __t__ = _p_110._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                            __t__.flags = __t__.flags | ((256 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                        };
                        _gotoNext = 3378893i64;
                    } else if (__value__ == (3378863i64)) {
                        _gotoNext = 3378863i64;
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L968"
                        _p_110._op((8 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3378893i64;
                    } else if (__value__ == (3378893i64)) {
                        _t_114 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3378905i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L972"
                        if ((_p_110._flags & (8 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != ((0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags))) {
                            _gotoNext = 3378940i64;
                        } else {
                            _gotoNext = 3378972i64;
                        };
                    } else if (__value__ == (3378940i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L973"
                        _p_110._op((6 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _gotoNext = 3379007i64;
                    } else if (__value__ == (3378972i64)) {
                        _gotoNext = 3378972i64;
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L975"
                        _p_110._op((5 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        0i64;
                        _gotoNext = 3379007i64;
                    } else if (__value__ == (3379007i64)) {
                        _t_114 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3379019i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L979"
                        {
                            {
                                var __tmp__ = _p_110._parseClass(_t_114?.__copy__());
                                _t_114 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3379072i64;
                            } else {
                                _gotoNext = 3381418i64;
                            };
                        };
                    } else if (__value__ == (3379072i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L980"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3379101i64)) {
                        _before_116 = _t_114?.__copy__();
                        _gotoNext = 3379139i64;
                    } else if (__value__ == (3379139i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L984"
                        {
                            final __value__ = _t_114[(0 : stdgo.GoInt)];
                            if (__value__ == ((42 : stdgo.GoUInt8))) {
                                _gotoNext = 3379156i64;
                            } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                                _gotoNext = 3379185i64;
                            } else if (__value__ == ((63 : stdgo.GoUInt8))) {
                                _gotoNext = 3379214i64;
                            } else {
                                _gotoNext = 3379249i64;
                            };
                        };
                    } else if (__value__ == (3379156i64)) {
                        _op_112 = (14 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3379249i64;
                    } else if (__value__ == (3379185i64)) {
                        _op_112 = (15 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3379249i64;
                    } else if (__value__ == (3379214i64)) {
                        _op_112 = (16 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _gotoNext = 3379249i64;
                    } else if (__value__ == (3379249i64)) {
                        _after_117 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L993"
                        {
                            {
                                var __tmp__ = _p_110._repeat(_op_112, (0 : stdgo.GoInt), (0 : stdgo.GoInt), _before_116?.__copy__(), _after_117?.__copy__(), _lastRepeat_113?.__copy__());
                                _after_117 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3379341i64;
                            } else {
                                _gotoNext = 3379371i64;
                            };
                        };
                    } else if (__value__ == (3379341i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L994"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3379371i64;
                    } else if (__value__ == (3379371i64)) {
                        _repeat_115 = _before_116?.__copy__();
                        _t_114 = _after_117?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3379402i64)) {
                        _op_112 = (17 : stdgo._internal.regexp.syntax.Syntax_op.Op);
                        _before_118 = _t_114?.__copy__();
                        {
                            var __tmp__ = _p_110._parseRepeat(_t_114?.__copy__());
                            _min_119 = @:tmpset0 __tmp__._0;
                            _max_120 = @:tmpset0 __tmp__._1;
                            _after_121 = @:tmpset0 __tmp__._2?.__copy__();
                            _ok_122 = @:tmpset0 __tmp__._3;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1002"
                        if (!_ok_122) {
                            _gotoNext = 3379497i64;
                        } else {
                            _gotoNext = 3379605i64;
                        };
                    } else if (__value__ == (3379497i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1004"
                        _p_110._literal((123 : stdgo.GoInt32));
                        _t_114 = (_t_114.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3379605i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1008"
                        if (((((_min_119 < (0 : stdgo.GoInt) : Bool) || (_min_119 > (1000 : stdgo.GoInt) : Bool) : Bool) || (_max_120 > (1000 : stdgo.GoInt) : Bool) : Bool) || ((_max_120 >= (0 : stdgo.GoInt) : Bool) && (_min_119 > _max_120 : Bool) : Bool) : Bool)) {
                            _gotoNext = 3379669i64;
                        } else {
                            _gotoNext = 3379819i64;
                        };
                    } else if (__value__ == (3379669i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1010"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid repeat count" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_before_118.__slice__(0, ((_before_118.length) - (_after_121.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3379819i64;
                    } else if (__value__ == (3379819i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1012"
                        {
                            {
                                var __tmp__ = _p_110._repeat(_op_112, _min_119, _max_120, _before_118?.__copy__(), _after_121?.__copy__(), _lastRepeat_113?.__copy__());
                                _after_121 = @:tmpset0 __tmp__._0?.__copy__();
                                _err = @:tmpset0 __tmp__._1;
                            };
                            if (_err != null) {
                                _gotoNext = 3379897i64;
                            } else {
                                _gotoNext = 3379927i64;
                            };
                        };
                    } else if (__value__ == (3379897i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1013"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3379927i64;
                    } else if (__value__ == (3379927i64)) {
                        _repeat_115 = _before_118?.__copy__();
                        _t_114 = _after_121?.__copy__();
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3379958i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1018"
                        if ((((_p_110._flags & (64 : stdgo._internal.regexp.syntax.Syntax_flags.Flags) : stdgo._internal.regexp.syntax.Syntax_flags.Flags) != (0 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)) && ((_t_114.length) >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                            _gotoNext = 3380009i64;
                        } else {
                            _gotoNext = 3380733i64;
                        };
                    } else if (__value__ == (3380009i64)) {
                        _gotoNext = 3380015i64;
                    } else if (__value__ == (3380015i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1019"
                        {
                            final __value__ = _t_114[(1 : stdgo.GoInt)];
                            if (__value__ == ((65 : stdgo.GoUInt8))) {
                                _gotoNext = 3380033i64;
                            } else if (__value__ == ((98 : stdgo.GoUInt8))) {
                                _gotoNext = 3380106i64;
                            } else if (__value__ == ((66 : stdgo.GoUInt8))) {
                                _gotoNext = 3380182i64;
                            } else if (__value__ == ((67 : stdgo.GoUInt8))) {
                                _gotoNext = 3380260i64;
                            } else if (__value__ == ((81 : stdgo.GoUInt8))) {
                                _gotoNext = 3380355i64;
                            } else if (__value__ == ((122 : stdgo.GoUInt8))) {
                                _gotoNext = 3380651i64;
                            } else {
                                _gotoNext = 3380733i64;
                            };
                        };
                    } else if (__value__ == (3380033i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1021"
                        _p_110._op((9 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_114 = (_t_114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3380106i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1025"
                        _p_110._op((11 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_114 = (_t_114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3380182i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1029"
                        _p_110._op((12 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_114 = (_t_114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3380260i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1034"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("invalid escape sequence" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), (_t_114.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3380733i64;
                    } else if (__value__ == (3380355i64)) {
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_t_114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("\\E" : stdgo.GoString));
                            _lit_123 = @:tmpset0 __tmp__._0?.__copy__();
                            _t_114 = @:tmpset0 __tmp__._1?.__copy__();
                        };
                        0i64;
                        _gotoNext = 3380478i64;
                    } else if (__value__ == (3380478i64)) {
                        //"file://#L0"
                        if (_lit_123 != ((stdgo.Go.str() : stdgo.GoString))) {
                            _gotoNext = 3380492i64;
                        } else {
                            _gotoNext = 3380631i64;
                        };
                    } else if (__value__ == (3380492i64)) {
                        {
                            var __tmp__ = stdgo._internal.regexp.syntax.Syntax__nextrune._nextRune(_lit_123?.__copy__());
                            _c_124 = @:tmpset0 __tmp__._0;
                            _rest_125 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_126 = @:tmpset0 __tmp__._2;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1041"
                        if (_err_126 != null) {
                            _gotoNext = 3380550i64;
                        } else {
                            _gotoNext = 3380589i64;
                        };
                    } else if (__value__ == (3380550i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1042"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_126 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3380589i64;
                    } else if (__value__ == (3380589i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1044"
                        _p_110._literal(_c_124);
                        _lit_123 = _rest_125?.__copy__();
                        _gotoNext = 3380478i64;
                    } else if (__value__ == (3380631i64)) {
                        bigSwitchBreak = true;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3380651i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1049"
                        _p_110._op((10 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        _t_114 = (_t_114.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        bigSwitchBreak = true;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3380733i64)) {
                        _re_138 = _p_110._newRegexp((4 : stdgo._internal.regexp.syntax.Syntax_op.Op));
                        (@:checkr _re_138 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flags = _p_110._flags;
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1059"
                        if ((((_t_114.length) >= (2 : stdgo.GoInt) : Bool) && (((_t_114[(1 : stdgo.GoInt)] == (112 : stdgo.GoUInt8)) || (_t_114[(1 : stdgo.GoInt)] == (80 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _gotoNext = 3380889i64;
                        } else {
                            _gotoNext = 3381131i64;
                        };
                    } else if (__value__ == (3380889i64)) {
                        {
                            var __tmp__ = _p_110._parseUnicodeClass(_t_114?.__copy__(), ((@:checkr _re_138 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                            _r_139 = @:tmpset0 __tmp__._0;
                            _rest_140 = @:tmpset0 __tmp__._1?.__copy__();
                            _err_141 = @:tmpset0 __tmp__._2;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1061"
                        if (_err_141 != null) {
                            _gotoNext = 3380966i64;
                        } else {
                            _gotoNext = 3380999i64;
                        };
                    } else if (__value__ == (3380966i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1062"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err_141 };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3380999i64;
                    } else if (__value__ == (3380999i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1064"
                        if (_r_139 != null) {
                            _gotoNext = 3381011i64;
                        } else {
                            _gotoNext = 3381131i64;
                        };
                    } else if (__value__ == (3381011i64)) {
                        (@:checkr _re_138 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = _r_139;
                        _t_114 = _rest_140?.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1067"
                        _p_110._push(_re_138);
                        bigSwitchBreak = true;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3381131i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1073"
                        {
                            {
                                var __tmp__ = _p_110._parsePerlClassEscape(_t_114?.__copy__(), ((@:checkr _re_138 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune0.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
                                _r_142 = @:tmpset0 __tmp__._0;
                                _rest_143 = @:tmpset0 __tmp__._1?.__copy__();
                            };
                            if (_r_142 != null) {
                                _gotoNext = 3381195i64;
                            } else {
                                _gotoNext = 3381269i64;
                            };
                        };
                    } else if (__value__ == (3381195i64)) {
                        (@:checkr _re_138 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rune = _r_142;
                        _t_114 = _rest_143?.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1076"
                        _p_110._push(_re_138);
                        bigSwitchBreak = true;
                        _gotoNext = 3378084i64;
                    } else if (__value__ == (3381269i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1079"
                        _p_110._reuse(_re_138);
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1082"
                        {
                            {
                                var __tmp__ = _p_110._parseEscape(_t_114?.__copy__());
                                _c_111 = @:tmpset0 __tmp__._0;
                                _t_114 = @:tmpset0 __tmp__._1?.__copy__();
                                _err = @:tmpset0 __tmp__._2;
                            };
                            if (_err != null) {
                                _gotoNext = 3381369i64;
                            } else {
                                _gotoNext = 3381399i64;
                            };
                        };
                    } else if (__value__ == (3381369i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1083"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3381399i64;
                    } else if (__value__ == (3381399i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1085"
                        _p_110._literal(_c_111);
                        _gotoNext = 3381418i64;
                    } else if (__value__ == (3381418i64)) {
                        _lastRepeat_113 = _repeat_115?.__copy__();
                        _gotoNext = 3378041i64;
                    } else if (__value__ == (3381443i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1090"
                        _p_110._concat();
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1091"
                        if (_p_110._swapVerticalBar()) {
                            _gotoNext = 3381478i64;
                        } else {
                            _gotoNext = 3381543i64;
                        };
                    } else if (__value__ == (3381478i64)) {
                        _p_110._stack = (_p_110._stack.__slice__(0, ((_p_110._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>>);
                        _gotoNext = 3381543i64;
                    } else if (__value__ == (3381543i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1095"
                        _p_110._alternate();
                        _n_144 = (_p_110._stack.length);
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1098"
                        if (_n_144 != ((1 : stdgo.GoInt))) {
                            _gotoNext = 3381588i64;
                        } else {
                            _gotoNext = 3381635i64;
                        };
                    } else if (__value__ == (3381588i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1099"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.regexp.syntax.Syntax_error.Error((("missing closing )" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), _s?.__copy__()) : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = 3381635i64;
                    } else if (__value__ == (3381635i64)) {
                        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L1101"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>; var _1 : stdgo.Error; } = { _0 : _p_110._stack[(0 : stdgo.GoInt)], _1 : (null : stdgo.Error) };
                                _0 = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _0 = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                        _gotoNext = -1i64;
                    };
                };
            };
            //"file://#L0"
            throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _0, _1 : _err };
            };
        };
    }
