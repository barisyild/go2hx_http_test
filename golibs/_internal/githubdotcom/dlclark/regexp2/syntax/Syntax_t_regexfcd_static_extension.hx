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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.T_regexFcd_asInterface) class T_regexFcd_static_extension {
    @:keep
    @:tdfield
    static public function _calculateFC( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, _nt:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, _node:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, curIndex:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        var _ci = @:assignType (false : Bool);
        var _rtl = @:assignType (false : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L161"
        if ((_nt <= (13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L162"
            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                _ci = true;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L165"
            if ((((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions))) {
                _rtl = true;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L170"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _nt;
                    if (__value__ == ((89 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((88 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((97 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((90 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((91 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L172"
                        break;
                        break;
                    } else if (__value__ == ((98 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L175"
                        if (curIndex == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L176"
                            _s._skipChild();
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L178"
                        break;
                        break;
                    } else if (__value__ == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L181"
                        _s._pushFC(({ _nullable : true } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L182"
                        break;
                        break;
                    } else if (__value__ == ((153 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L185"
                        if (curIndex != ((0 : stdgo.GoInt))) {
                            var _child = _s._popFC();
                            var _cumul = _s._topFC();
                            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._failed = !_cumul._addFC((_child : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)?.__copy__(), true);
                        };
                        var _fc = _s._topFC();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L193"
                        if (!(@:checkr _fc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nullable) {
                            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._skipAllChildren = true;
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L196"
                        break;
                        break;
                    } else if (__value__ == ((162 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L199"
                        if ((curIndex > (1 : stdgo.GoInt) : Bool)) {
                            var _child = _s._popFC();
                            var _cumul = _s._topFC();
                            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._failed = !_cumul._addFC((_child : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)?.__copy__(), false);
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L205"
                        break;
                        break;
                    } else if (__value__ == ((152 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((161 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L208"
                        if (curIndex != ((0 : stdgo.GoInt))) {
                            var _child = _s._popFC();
                            var _cumul = _s._topFC();
                            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._failed = !_cumul._addFC((_child : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)?.__copy__(), false);
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L214"
                        break;
                        break;
                    } else if (__value__ == ((154 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((155 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L217"
                        if ((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt))) {
                            var _fc = _s._topFC();
                            (@:checkr _fc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nullable = true;
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L221"
                        break;
                        break;
                    } else if (__value__ == ((93 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((157 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((92 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((156 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((96 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((160 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L224"
                        break;
                        break;
                    } else if (__value__ == ((94 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((95 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L227"
                        _s._skipChild();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L228"
                        _s._pushFC(({ _nullable : true } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L229"
                        break;
                        break;
                    } else if (__value__ == ((158 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((159 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L232"
                        break;
                        break;
                    } else if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L235"
                        _s._pushFC(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch, _nt == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)), false, _ci)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L236"
                        break;
                        break;
                    } else if (__value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L239"
                        _s._pushFC(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch, false, (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt)), _ci)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L240"
                        break;
                        break;
                    } else if (__value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L243"
                        _s._pushFC(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch, true, (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt)), _ci)?.__copy__());
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L244"
                        break;
                        break;
                    } else if (__value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L247"
                        if (((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L248"
                            _s._pushFC(({ _nullable : true } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        } else if (!_rtl) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L250"
                            _s._pushFC(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(0 : stdgo.GoInt)], false, false, _ci)?.__copy__());
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L252"
                            _s._pushFC(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexfc._newRegexFc((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(((@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], false, false, _ci)?.__copy__());
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L254"
                        break;
                        break;
                    } else if (__value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L257"
                        _s._pushFC(({ _cc : (@:checkr (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).copy()?.__copy__(), _nullable : false, _caseInsensitive : _ci } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L258"
                        break;
                        break;
                    } else if (__value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L261"
                        _s._pushFC(({ _cc : (@:checkr (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._set ?? throw stdgo.Error._nullPointerDereference.__underlying__()).copy()?.__copy__(), _nullable : (@:checkr _node ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m == ((0 : stdgo.GoInt)), _caseInsensitive : _ci } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L262"
                        break;
                        break;
                    } else if (__value__ == ((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L265"
                        _s._pushFC(({ _cc : (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anyclass.anyClass() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet)?.__copy__(), _nullable : true, _caseInsensitive : false } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L266"
                        break;
                        break;
                    } else if (__value__ == ((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((17 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((42 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L269"
                        _s._pushFC(({ _nullable : true } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc));
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L270"
                        break;
                        break;
                    } else {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L273"
                        throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected op code: %v" : stdgo.GoString), new stdgo.AnyInterface(_nt, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_nodetypedott_nodetype.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_nodetypedotT_nodeType))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _skipChild( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):Void {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._skipchild = true;
    }
    @:keep
    @:tdfield
    static public function _topFC( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L147"
        return (stdgo.Go.setRef((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth - (1 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexfcdott_regexfc.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexfcdotT_regexFc })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>);
    }
    @:keep
    @:tdfield
    static public function _popFC( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L141"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth--;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L142"
        return (stdgo.Go.setRef((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexfcdott_regexfc.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexfcdotT_regexFc })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>);
    }
    @:keep
    @:tdfield
    static public function _fcIsEmpty( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):Bool {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L136"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _pushFC( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, _fc:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc):Void {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L124"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth >= ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcStack.length) : Bool)) {
            var _expanded = (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L126"
            _expanded.__copyTo__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcStack);
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcStack = _expanded;
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth : stdgo.GoInt)] = _fc?.__copy__();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L131"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fcDepth++;
    }
    @:keep
    @:tdfield
    static public function _popInt( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L117"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intDepth--;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L118"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intDepth : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _intIsEmpty( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>):Bool {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L112"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intDepth == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _pushInt( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, i:stdgo.GoInt):Void {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L100"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intDepth >= ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack.length) : Bool)) {
            var _expanded = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intDepth * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L102"
            _expanded.__copyTo__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack);
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack = _expanded;
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intDepth : stdgo.GoInt)] = i;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L107"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._intDepth++;
    }
    @:keep
    @:tdfield
    static public function _regexFCFromRegexTree( _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd>, _tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc> {
        @:recv var _s:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd> = _s;
        var _curNode = (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root;
        var _curChild = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L51"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L52"
            if (((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L54"
                _s._calculateFC((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t, _curNode, (0 : stdgo.GoInt));
            } else if (((_curChild < ((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool) && !(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._skipAllChildren : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L57"
                _s._calculateFC(((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _curNode, _curChild);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L59"
                if (!(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._skipchild) {
                    _curNode = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_curChild : stdgo.GoInt)];
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L62"
                    _s._pushInt(_curChild);
                    _curChild = (0 : stdgo.GoInt);
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L65"
                    _curChild++;
                    (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._skipchild = false;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L68"
                continue;
            };
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._skipAllChildren = false;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L75"
            if (_s._intIsEmpty()) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L76"
                break;
            };
            _curChild = _s._popInt();
            _curNode = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L82"
            _s._calculateFC(((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t | (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), _curNode, _curChild);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L83"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._failed) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L84"
                return null;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L87"
            _curChild++;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L90"
        if (_s._fcIsEmpty()) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L91"
            return null;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L94"
        return _s._popFC();
    }
}
