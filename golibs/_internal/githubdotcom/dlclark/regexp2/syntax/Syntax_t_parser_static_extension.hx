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
@:keep @:allow(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax.T_parser_asInterface) class T_parser_static_extension {
    @:keep
    @:tdfield
    static public function _isTrueQuantifier( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _nChars = @:assignType (_p._charsRight() : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2216"
        if (_nChars == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2217"
            return false;
        };
        var _startpos = @:assignType (_p._textpos() : stdgo.GoInt);
        var _ch = @:assignType (_p._charAt(_startpos) : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2222"
        if (_ch != ((123 : stdgo.GoInt32))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2223"
            return ((_ch <= (123 : stdgo.GoInt32) : Bool) && (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax___category.__category[(_ch : stdgo.GoInt)] >= (5 : stdgo.GoUInt8) : Bool) : Bool);
        };
        var _pos = @:assignType (_startpos : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2228"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2229"
            _nChars--;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2230"
            if ((_nChars <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2231"
                break;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2233"
            _pos++;
            _ch = _p._charAt(_pos);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2235"
            if (((_ch < (48 : stdgo.GoInt32) : Bool) || (_ch > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2236"
                break;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2240"
        if (((_nChars == (0 : stdgo.GoInt)) || ((_pos - _startpos : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2241"
            return false;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2243"
        if (_ch == ((125 : stdgo.GoInt32))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2244"
            return true;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2246"
        if (_ch != ((44 : stdgo.GoInt32))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2247"
            return false;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2249"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2250"
            _nChars--;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2251"
            if ((_nChars <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2252"
                break;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2254"
            _pos++;
            _ch = _p._charAt(_pos);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2256"
            if (((_ch < (48 : stdgo.GoInt32) : Bool) || (_ch > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2257"
                break;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2261"
        return ((_nChars > (0 : stdgo.GoInt) : Bool) && (_ch == (125 : stdgo.GoInt32)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _addAlternate( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2165"
        if ((((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2166"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation._reverseLeft());
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2168"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation._reverseLeft());
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
    }
    @:keep
    @:tdfield
    static public function _startGroup( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _openGroup:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group = _openGroup;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((24 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
    }
    @:keep
    @:tdfield
    static public function _emptyStack( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2151"
        return ({
            final value = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack;
            (value == null || (value : Dynamic).__nil__);
        });
    }
    @:keep
    @:tdfield
    static public function _popGroup( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation = (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group = (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2138"
        if ((((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) && ((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2139"
            if (({
                final value = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2140"
                return _p._getErr((("illegal conditional (?(...)) expression" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2143"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = null;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2146"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _pushGroup( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack;
        (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group;
        (@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation;
    }
    @:keep
    @:tdfield
    static public function _addToConcatenate( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _pos:stdgo.GoInt, _cch:stdgo.GoInt, _isReplacement:Bool):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _node:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2090"
        if (_cch == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2091"
            return;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2094"
        if ((_cch > (1 : stdgo.GoInt) : Bool)) {
            var _str = (new stdgo.Slice<stdgo.GoInt32>((_cch : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2096"
            _str.__copyTo__(((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.__slice__(_pos, (_pos + _cch : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt32>));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2098"
            if ((_p._useOptionI() && !_isReplacement : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2103"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (_str.length) : Bool)) {
                        _str[(_i : stdgo.GoInt)] = stdgo._internal.unicode.Unicode_tolower.toLower(_str[(_i : stdgo.GoInt)]);
                        _i++;
                    };
                };
            };
            _node = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodestr._newRegexNodeStr((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _str);
        } else {
            var _ch = @:assignType (_p._charAt(_pos) : stdgo.GoInt32);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2112"
            if ((_p._useOptionI() && !_isReplacement : Bool)) {
                _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
            };
            _node = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _ch);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2119"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation._addChild(_node);
    }
    @:keep
    @:tdfield
    static public function _pushOptions( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.__append__((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
    }
    @:keep
    @:tdfield
    static public function _popOptions( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _lastIdx = @:assignType (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack[(_lastIdx : stdgo.GoInt)];
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.__slice__(0, _lastIdx) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
    }
    @:keep
    @:tdfield
    static public function _popKeepOptions( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _lastIdx = @:assignType (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.__slice__(0, _lastIdx) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
    }
    @:keep
    @:tdfield
    static public function _addGroup( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2053"
        if ((((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || ((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2054"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation._reverseLeft());
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2055"
            if ((((((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t == (33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) && (((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) > (2 : stdgo.GoInt) : Bool) : Bool)) || (((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) > (3 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2056"
                return _p._getErr((("too many | in (?()|)" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2059"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation._reverseLeft());
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2060"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alternation);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2064"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _addUnitType( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _t:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_t, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
    }
    @:keep
    @:tdfield
    static public function _addUnitNode( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _node:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = _node;
    }
    @:keep
    @:tdfield
    static public function _addUnitSet( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _set:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _set);
    }
    @:keep
    @:tdfield
    static public function _addUnitNotone( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _ch:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2029"
        if (_p._useOptionI()) {
            _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _ch);
    }
    @:keep
    @:tdfield
    static public function _addUnitOne( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _ch:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2020"
        if (_p._useOptionI()) {
            _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _ch);
    }
    @:keep
    @:tdfield
    static public function _addConcatenate3( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _lazy:Bool, _min:stdgo.GoInt, _max:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2014"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit._makeQuantifier(_lazy, _min, _max));
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = null;
    }
    @:keep
    @:tdfield
    static public function _addConcatenate( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2008"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation._addChild((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit = null;
    }
    @:keep
    @:tdfield
    static public function _emptyOptionsStack( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2002"
        return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _useOptionU( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1997"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1024 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useRE2( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1992"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (512 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionE( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1987"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (256 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionX( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1982"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionS( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1977"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionM( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1972"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionI( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1967"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _useOptionN( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1962"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions));
    }
    @:keep
    @:tdfield
    static public function _isCaptureName( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _capname:stdgo.GoString):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1950"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames == null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1951"
            return false;
        };
        var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames.__exists__(_capname?.__copy__()) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_capname?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1955"
        return _ok;
    }
    @:keep
    @:tdfield
    static public function _isCaptureSlot( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1940"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null) {
            var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps.__exists__(_i) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1942"
            return _ok;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1945"
        return (((_i >= (0 : stdgo.GoInt) : Bool) && (_i < (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capsize : Bool) : Bool));
    }
    @:keep
    @:tdfield
    static public function _captureSlotFromName( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _capname:stdgo.GoString):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1935"
        return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_capname] ?? (0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _rightMost( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Bool {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1930"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos == (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length));
    }
    @:keep
    @:tdfield
    static public function _charsRight( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1926"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.length) - (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _rightChar( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1921"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos + _i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _charAt( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1915"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[(_i : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _moveLeft( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1910"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos--;
    }
    @:keep
    @:tdfield
    static public function _moveRight( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos + (_i) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _moveRightGetChar( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _ch = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern[((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos : stdgo.GoInt)] : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1898"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos++;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1899"
        return _ch;
    }
    @:keep
    @:tdfield
    static public function _textto( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _pos:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos = _pos;
    }
    @:keep
    @:tdfield
    static public function _textpos( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1887"
        return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos;
    }
    @:keep
    @:tdfield
    static public function _scanOctal( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt32 {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _c = @:assignType (3 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1857"
        if ((_c > _p._charsRight() : Bool)) {
            _c = _p._charsRight();
        };
        var _i = @:assignType (0 : stdgo.GoInt);
        var _d = @:assignType ((_p._rightChar((0 : stdgo.GoInt)) - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1864"
        while ((((_c > (0 : stdgo.GoInt) : Bool) && (_d <= (7 : stdgo.GoInt) : Bool) : Bool) && (_d >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1865"
            if (((_i >= (32 : stdgo.GoInt) : Bool) && _p._useOptionE() : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1866"
                break;
            };
            _i = (_i * ((8 : stdgo.GoInt)) : stdgo.GoInt);
            _i = (_i + (_d) : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1870"
            _c--;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1872"
            _p._moveRight((1 : stdgo.GoInt));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1873"
            if (!_p._rightMost()) {
                _d = ((_p._rightChar((0 : stdgo.GoInt)) - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
            };
        };
        _i = (_i & ((255 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1882"
        return (_i : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _scanHex( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _c:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1814"
        if ((_p._charsRight() >= _c : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1815"
            while ((_c > (0 : stdgo.GoInt) : Bool)) {
                var _d = @:assignType (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__hexdigit._hexDigit(_p._moveRightGetChar()) : stdgo.GoInt);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1817"
                if ((_d < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1818"
                    break;
                };
                _i = (_i * ((16 : stdgo.GoInt)) : stdgo.GoInt);
                _i = (_i + (_d) : stdgo.GoInt);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1822"
                _c--;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1826"
        if ((_c > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1827"
            return { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("insufficient hexadecimal digits" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1830"
        return { _0 : (_i : stdgo.GoInt32), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanHexUntilBrace( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = @:assignType (0 : stdgo.GoInt);
        var _hasContent = @:assignType (false : Bool);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1780"
        while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            var _ch = @:assignType (_p._moveRightGetChar() : stdgo.GoInt32);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1782"
            if (_ch == ((125 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1785"
                if (!_hasContent) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1786"
                    return { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("insufficient hexadecimal digits" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1788"
                return { _0 : (_i : stdgo.GoInt32), _1 : (null : stdgo.Error) };
            };
            _hasContent = true;
            var _d = @:assignType (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__hexdigit._hexDigit(_ch) : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1793"
            if ((_d < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1794"
                return { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("missing closing }" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
            _i = (_i * ((16 : stdgo.GoInt)) : stdgo.GoInt);
            _i = (_i + (_d) : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1800"
            if ((_i > (1114111 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1801"
                return { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("hex values may not be larger than 0x10FFFF" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1806"
        return { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("missing closing }" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
    }
    @:keep
    @:tdfield
    static public function _scanControl( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1752"
        if ((_p._charsRight() <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1753"
            return { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("missing control character" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _ch = @:assignType (_p._moveRightGetChar() : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1760"
        if (((_ch >= (97 : stdgo.GoInt32) : Bool) && (_ch <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
            _ch = ((_ch - (32 : stdgo.GoInt32) : stdgo.GoInt32));
        };
        _ch = ((_ch - (64 : stdgo.GoInt32) : stdgo.GoInt32));
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1764"
        if (((_ch >= (0 : stdgo.GoInt32) : Bool) && (_ch < (32 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1765"
            return { _0 : _ch, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1768"
        return { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("unrecognized control character" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
    }
    @:keep
    @:tdfield
    static public function _scanCharEscape( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = (0 : stdgo.GoInt32), _err = (null : stdgo.Error);
        var _ch = @:assignType (_p._moveRightGetChar() : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1692"
        if (((_ch >= (48 : stdgo.GoInt32) : Bool) && (_ch <= (55 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1693"
            _p._moveLeft();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1694"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _p._scanOctal(), _1 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _pos = @:assignType (_p._textpos() : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1699"
        {
            final __value__ = _ch;
            if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1702"
                if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (123 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1703"
                    if (_p._useOptionE()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1704"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _ch, _1 : (null : stdgo.Error) };
                            _r = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1706"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1707"
                    return _p._scanHexUntilBrace();
                } else {
                    {
                        var __tmp__ = _p._scanHex((2 : stdgo.GoInt));
                        _r = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                };
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1713"
                if ((((_p._useOptionE() && _p._useOptionU() : Bool) && (_p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (123 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1714"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1715"
                    return _p._scanHexUntilBrace();
                } else {
                    {
                        var __tmp__ = _p._scanHex((4 : stdgo.GoInt));
                        _r = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                };
            } else if (__value__ == ((97 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1720"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (7 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1722"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (8 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((101 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1724"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (27 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((102 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1726"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (12 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((110 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1728"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (10 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((114 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1730"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (13 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((116 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1732"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (9 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1734"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (11 : stdgo.GoInt32), _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if (__value__ == ((99 : stdgo.GoInt32))) {
                {
                    var __tmp__ = _p._scanControl();
                    _r = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1738"
                if (((!_p._useOptionE() && !_p._useRE2() : Bool) && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1739"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt32), _1 : _p._getErr((("unrecognized escape sequence \\%v" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface((_ch : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                        _r = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1741"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _ch, _1 : (null : stdgo.Error) };
                    _r = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1743"
        if (((_err != null) && _p._useOptionE() : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1744"
            _p._textto(_pos);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1745"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } = { _0 : _ch, _1 : (null : stdgo.Error) };
                _r = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1747"
        return { _0 : _r, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _scanOptions( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1665"
        {
            var _off = @:assignType (false : Bool);
            while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                var _ch = @:assignType (_p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1668"
                if (_ch == ((45 : stdgo.GoInt32))) {
                    _off = true;
                } else if (_ch == ((43 : stdgo.GoInt32))) {
                    _off = false;
                } else {
                    var _option = @:assignType (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__optionfromcode._optionFromCode(_ch) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1674"
                    if (((_option == (0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) || _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isonlytopoption._isOnlyTopOption(_option) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1675"
                        return;
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1678"
                    if (_off) {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & ((-1 ^ _option)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    } else {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options | (_option) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    };
                };
                _p._moveRight((1 : stdgo.GoInt));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanDecimal( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _i = @:assignType (0 : stdgo.GoInt);
        var _d:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1639"
        while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            _d = ((_p._rightChar((0 : stdgo.GoInt)) - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1641"
            if (((_d < (0 : stdgo.GoInt) : Bool) || (_d > (9 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1642"
                break;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1644"
            _p._moveRight((1 : stdgo.GoInt));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1646"
            if (((_i > (214748364 : stdgo.GoInt) : Bool) || (((_i == (214748364 : stdgo.GoInt)) && (_d > (7 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1647"
                return { _0 : (0 : stdgo.GoInt), _1 : _p._getErr((("capture group number out of range" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
            _i = (_i * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            _i = (_i + (_d) : stdgo.GoInt);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1654"
        return { _0 : (_i : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanCharSet( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _caseInsensitive:Bool, _scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _ch = @:assignType (0 : stdgo.GoInt32);
        var _chPrev = @:assignType (0 : stdgo.GoInt32);
        var _inRange = @:assignType (false : Bool);
        var _firstChar = @:assignType (true : Bool);
        var _closed = @:assignType (false : Bool);
        var _cc:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1450"
        if (!_scanOnly) {
            _cc = (stdgo.Go.setRef((new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1454"
        if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (94 : stdgo.GoInt32)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1455"
            _p._moveRight((1 : stdgo.GoInt));
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1456"
            if (!_scanOnly) {
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._negate = true;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1461"
        while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            var _fTranslatedChar = @:assignType (false : Bool);
_ch = _p._moveRightGetChar();
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1464"
            if (_ch == ((93 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1465"
                if (!_firstChar) {
                    _closed = true;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1467"
                    break;
                } else if (_p._useOptionE()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1469"
                    if (!_scanOnly) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1470"
                        _cc._addRanges(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_noneclass.noneClass()._ranges);
                    };
                    _closed = true;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1473"
                    break;
                };
            } else if (((_ch == (92 : stdgo.GoInt32)) && (_p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1477"
                {
                    _ch = _p._moveRightGetChar();
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _ch;
                                if (__value__ == ((68 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32))) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1479"
                                    if (!_scanOnly) {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1480"
                                        if (_inRange) {
                                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1481"
                                            return { _0 : null, _1 : _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))) };
                                        };
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1483"
                                        _cc._addDigit((_p._useOptionE() || _p._useRE2() : Bool), _ch == ((68 : stdgo.GoInt32)), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._patternRaw?.__copy__());
                                    };
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1485"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((83 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32))) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1488"
                                    if (!_scanOnly) {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1489"
                                        if (_inRange) {
                                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1490"
                                            return { _0 : null, _1 : _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))) };
                                        };
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1492"
                                        _cc._addSpace(_p._useOptionE(), _p._useRE2(), _ch == ((83 : stdgo.GoInt32)));
                                    };
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1494"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((87 : stdgo.GoInt32)) || __value__ == ((119 : stdgo.GoInt32))) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1497"
                                    if (!_scanOnly) {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1498"
                                        if (_inRange) {
                                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1499"
                                            return { _0 : null, _1 : _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))) };
                                        };
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1502"
                                        _cc._addWord((_p._useOptionE() || _p._useRE2() : Bool), _ch == ((87 : stdgo.GoInt32)));
                                    };
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1504"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((112 : stdgo.GoInt32)) || __value__ == ((80 : stdgo.GoInt32))) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1507"
                                    if (!_scanOnly) {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1508"
                                        if (_inRange) {
                                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1509"
                                            return { _0 : null, _1 : _p._getErr((("cannot include class \\%v in character range" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))) };
                                        };
                                        var __tmp__ = _p._parseProperty(), _prop:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1512"
                                        if (_err != null) {
                                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1513"
                                            return { _0 : null, _1 : _err };
                                        };
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1515"
                                        _cc._addCategory(_prop?.__copy__(), (_ch != (112 : stdgo.GoInt32)), _caseInsensitive, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._patternRaw?.__copy__());
                                    } else {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1517"
                                        _p._parseProperty();
                                    };
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1520"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == ((45 : stdgo.GoInt32))) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1523"
                                    if (!_scanOnly) {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1524"
                                        _cc._addRange(_ch, _ch);
                                    };
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1526"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1529"
                                    _p._moveLeft();
                                    var _err:stdgo.Error = (null : stdgo.Error);
                                    {
                                        var __tmp__ = _p._scanCharEscape();
                                        _ch = @:tmpset0 __tmp__._0;
                                        _err = @:tmpset0 __tmp__._1;
                                    };
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1532"
                                    if (_err != null) {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1533"
                                        return { _0 : null, _1 : _err };
                                    };
                                    _fTranslatedChar = true;
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1536"
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) {
                            _firstChar = false;
                            continue;
                        };
                    };
                };
            } else if (_ch == ((91 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1541"
                if ((((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && _p._rightChar((0 : stdgo.GoInt)) == ((58 : stdgo.GoInt32)) : Bool) && !_inRange : Bool)) {
                    var _savePos = @:assignType (_p._textpos() : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1544"
                    _p._moveRight((1 : stdgo.GoInt));
                    var _negate = @:assignType (false : Bool);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1546"
                    if (((_p._charsRight() > (1 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (94 : stdgo.GoInt32)) : Bool)) {
                        _negate = true;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1548"
                        _p._moveRight((1 : stdgo.GoInt));
                    };
                    var _nm = @:assignType (_p._scanCapname().__copy__() : stdgo.GoString);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1552"
                    if ((!_scanOnly && _p._useRE2() : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1555"
                        {
                            var _ok = @:assignType (_cc._addNamedASCII(_nm.__copy__(), _negate) : Bool);
                            if (!_ok) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1556"
                                return { _0 : null, _1 : _p._getErr((("invalid character class range" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                            };
                        };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1559"
                    if ((((_p._charsRight() < (2 : stdgo.GoInt) : Bool) || _p._moveRightGetChar() != ((58 : stdgo.GoInt32)) : Bool) || (_p._moveRightGetChar() != (93 : stdgo.GoInt32)) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1560"
                        _p._textto(_savePos);
                    } else if (_p._useRE2()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1563"
                        {
                            _firstChar = false;
                            continue;
                        };
                    };
                };
            };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1568"
            if (_inRange) {
                _inRange = false;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1570"
                if (!_scanOnly) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1571"
                    if (((_ch == ((91 : stdgo.GoInt32)) && !_fTranslatedChar : Bool) && !_firstChar : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1575"
                        _cc._addChar(_chPrev);
                        var __tmp__ = _p._scanCharSet(_caseInsensitive, false), _sub:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1577"
                        if (_err != null) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1578"
                            return { _0 : null, _1 : _err };
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1580"
                        _cc._addSubtraction(_sub);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1582"
                        if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (93 : stdgo.GoInt32)) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1583"
                            return { _0 : null, _1 : _p._getErr((("a subtraction must be the last element in a character class" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                        };
                    } else {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1587"
                        if ((_chPrev > _ch : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1588"
                            return { _0 : null, _1 : _p._getErr((("[%c-%c] range in reverse order" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_chPrev, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind)))) };
                        };
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1590"
                        _cc._addRange(_chPrev, _ch);
                    };
                };
            } else if ((((_p._charsRight() >= (2 : stdgo.GoInt) : Bool) && _p._rightChar((0 : stdgo.GoInt)) == ((45 : stdgo.GoInt32)) : Bool) && (_p._rightChar((1 : stdgo.GoInt)) != (93 : stdgo.GoInt32)) : Bool)) {
                _chPrev = _ch;
                _inRange = true;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1597"
                _p._moveRight((1 : stdgo.GoInt));
            } else if ((((((_p._charsRight() >= (1 : stdgo.GoInt) : Bool) && _ch == ((45 : stdgo.GoInt32)) : Bool) && !_fTranslatedChar : Bool) && _p._rightChar((0 : stdgo.GoInt)) == ((91 : stdgo.GoInt32)) : Bool) && !_firstChar : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1601"
                if (!_scanOnly) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1602"
                    _p._moveRight((1 : stdgo.GoInt));
                    var __tmp__ = _p._scanCharSet(_caseInsensitive, false), _sub:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1604"
                    if (_err != null) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1605"
                        return { _0 : null, _1 : _err };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1607"
                    _cc._addSubtraction(_sub);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1609"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (93 : stdgo.GoInt32)) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1610"
                        return { _0 : null, _1 : _p._getErr((("a subtraction must be the last element in a character class" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    };
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1613"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1614"
                    _p._scanCharSet(_caseInsensitive, true);
                };
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1617"
                if (!_scanOnly) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1618"
                    _cc._addRange(_ch, _ch);
                };
            };
            _firstChar = false;
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1623"
        if (!_closed) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1624"
            return { _0 : null, _1 : _p._getErr((("unterminated [] set" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1627"
        if ((!_scanOnly && _caseInsensitive : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1628"
            _cc._addLowercase();
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1631"
        return { _0 : _cc, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanCapname( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _startpos = @:assignType (_p._textpos() : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1431"
        while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1432"
            if (!_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_p._moveRightGetChar())) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1433"
                _p._moveLeft();
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1434"
                break;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1438"
        return (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.__slice__(_startpos, _p._textpos()) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanBlank( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1382"
        if (_p._useOptionX()) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1383"
            while (true) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1384"
                while (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isspace._isSpace(_p._rightChar((0 : stdgo.GoInt))) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1385"
                    _p._moveRight((1 : stdgo.GoInt));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1388"
                if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1389"
                    break;
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1392"
                if (_p._rightChar((0 : stdgo.GoInt)) == ((35 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1393"
                    while (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (10 : stdgo.GoInt32)) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1394"
                        _p._moveRight((1 : stdgo.GoInt));
                    };
                } else if (((((_p._charsRight() >= (3 : stdgo.GoInt) : Bool) && _p._rightChar((2 : stdgo.GoInt)) == ((35 : stdgo.GoInt32)) : Bool) && _p._rightChar((1 : stdgo.GoInt)) == ((63 : stdgo.GoInt32)) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (40 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1398"
                    while (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (41 : stdgo.GoInt32)) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1399"
                        _p._moveRight((1 : stdgo.GoInt));
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1401"
                    if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1402"
                        return _p._getErr((("unterminated comment" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1404"
                    _p._moveRight((1 : stdgo.GoInt));
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1406"
                    break;
                };
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1410"
            while (true) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1411"
                if (((((_p._charsRight() < (3 : stdgo.GoInt) : Bool) || _p._rightChar((2 : stdgo.GoInt)) != ((35 : stdgo.GoInt32)) : Bool) || _p._rightChar((1 : stdgo.GoInt)) != ((63 : stdgo.GoInt32)) : Bool) || (_p._rightChar((0 : stdgo.GoInt)) != (40 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1413"
                    return (null : stdgo.Error);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1416"
                while (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (41 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1417"
                    _p._moveRight((1 : stdgo.GoInt));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1419"
                if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1420"
                    return _p._getErr((("unterminated comment" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode));
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1422"
                _p._moveRight((1 : stdgo.GoInt));
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1425"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _typeFromCode( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _ch:stdgo.GoInt32):_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1356"
        {
            final __value__ = _ch;
            if (__value__ == ((98 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1358"
                if (_p._useOptionE()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1359"
                    return (41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1361"
                return (16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((66 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1363"
                if (_p._useOptionE()) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1364"
                    return (42 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1366"
                return (17 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((65 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1368"
                return (18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((71 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1370"
                return (19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((90 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1372"
                return (20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else if (__value__ == ((122 : stdgo.GoInt32))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1374"
                return (21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1376"
                return (22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parseProperty( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1316"
        if (((_p._charsRight() >= (1 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (123 : stdgo.GoInt32)) : Bool)) {
            var _ch = @:assignType ((_p._moveRightGetChar() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1319"
            if (!_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isvalidunicodecat._isValidUnicodeCat(_ch?.__copy__())) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1320"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _p._getErr((("unknown unicode category, script, or property \'%v\'" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1322"
            return { _0 : _ch?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1325"
        if ((_p._charsRight() < (3 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1326"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _p._getErr((("incomplete \\p{X} character escape" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _ch = @:assignType (_p._moveRightGetChar() : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1329"
        if (_ch != ((123 : stdgo.GoInt32))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1330"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _p._getErr((("malformed \\p{X} character escape" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _startpos = @:assignType (_p._textpos() : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1334"
        while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            _ch = _p._moveRightGetChar();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1336"
            if (!((_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) || (_ch == (45 : stdgo.GoInt32)) : Bool))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1337"
                _p._moveLeft();
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1338"
                break;
            };
        };
        var _capname = @:assignType ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.__slice__(_startpos, _p._textpos()) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1343"
        if (((_p._charsRight() == (0 : stdgo.GoInt)) || (_p._moveRightGetChar() != (125 : stdgo.GoInt32)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1344"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _p._getErr((("incomplete \\p{X} character escape" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1347"
        if (!_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isvalidunicodecat._isValidUnicodeCat(_capname?.__copy__())) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1348"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _p._getErr((("unknown unicode category, script, or property \'%v\'" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_capname, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1351"
        return { _0 : _capname?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanBasicBackslash( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1192"
        if (_p._charsRight() == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1193"
            return { _0 : null, _1 : _p._getErr((("illegal \\ at end of pattern" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        var _angled = @:assignType (false : Bool);
        var _k = @:assignType (false : Bool);
        var _close = @:assignType (0 : stdgo.GoInt32);
        var _backpos = @:assignType (_p._textpos() : stdgo.GoInt);
        var _ch = @:assignType (_p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1208"
        if (((_ch == (107 : stdgo.GoInt32)) && ((!_p._useOptionE() || (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames.length) > (0 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1209"
            if ((_p._charsRight() >= (2 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1210"
                _p._moveRight((1 : stdgo.GoInt));
                _ch = _p._moveRightGetChar();
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1213"
                if (((_ch == (60 : stdgo.GoInt32)) || ((!_p._useOptionE() && (_ch == (39 : stdgo.GoInt32)) : Bool)) : Bool)) {
                    _angled = true;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1215"
                    if (_ch == ((39 : stdgo.GoInt32))) {
                        _close = (39 : stdgo.GoInt32);
                    } else {
                        _close = (62 : stdgo.GoInt32);
                    };
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1223"
            if ((!_angled || (_p._charsRight() <= (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1224"
                return { _0 : null, _1 : _p._getErr((("malformed \\k<...> named back reference" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
            };
            _ch = _p._rightChar((0 : stdgo.GoInt));
            _k = true;
        } else if (((!_p._useOptionE() && (((_ch == (60 : stdgo.GoInt32)) || (_ch == (39 : stdgo.GoInt32)) : Bool)) : Bool) && (_p._charsRight() > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _angled = true;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1232"
            if (_ch == ((39 : stdgo.GoInt32))) {
                _close = (39 : stdgo.GoInt32);
            } else {
                _close = (62 : stdgo.GoInt32);
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1238"
            _p._moveRight((1 : stdgo.GoInt));
            _ch = _p._rightChar((0 : stdgo.GoInt));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1244"
        if (((_angled && (_ch >= (48 : stdgo.GoInt32) : Bool) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            var __tmp__ = _p._scanDecimal(), _capnum:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1246"
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1247"
                return { _0 : null, _1 : _err };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1250"
            if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._moveRightGetChar() == _close) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1251"
                if (_p._isCaptureSlot(_capnum)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1252"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum), _1 : (null : stdgo.Error) };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1254"
                return { _0 : null, _1 : _p._getErr((("reference to undefined group number %v" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_capnum, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
            };
        } else if (((!_angled && (_ch >= (49 : stdgo.GoInt32) : Bool) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            var __tmp__ = _p._scanDecimal(), _capnum:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1258"
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1259"
                return { _0 : null, _1 : _err };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1262"
            if (_scanOnly) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1263"
                return { _0 : null, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1266"
            if (_p._isCaptureSlot(_capnum)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1267"
                return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum), _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1269"
            if (((_capnum <= (9 : stdgo.GoInt) : Bool) && !_p._useOptionE() : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1270"
                return { _0 : null, _1 : _p._getErr((("reference to undefined group number %v" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_capnum, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
            };
        } else if (_angled) {
            var _capname = @:assignType (_p._scanCapname()?.__copy__() : stdgo.GoString);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1276"
            if (((_capname != ((stdgo.Go.str() : stdgo.GoString)) && (_p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (_p._moveRightGetChar() == _close) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1278"
                if (_scanOnly) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1279"
                    return { _0 : null, _1 : (null : stdgo.Error) };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1282"
                if (_p._isCaptureName(_capname?.__copy__())) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1283"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _p._captureSlotFromName(_capname?.__copy__())), _1 : (null : stdgo.Error) };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1285"
                return { _0 : null, _1 : _p._getErr((("reference to undefined group name %v" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_capname, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1287"
                if (_k) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1288"
                    return { _0 : null, _1 : _p._getErr((("malformed \\k<...> named back reference" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1295"
        _p._textto(_backpos);
        var __tmp__ = _p._scanCharEscape(), _ch:stdgo.GoInt32 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1297"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1298"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1301"
        if (_scanOnly) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1302"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1305"
        if (_p._useOptionI()) {
            _ch = stdgo._internal.unicode.Unicode_tolower.toLower(_ch);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1309"
        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _ch), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanBackslash( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _scanOnly:Bool):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1116"
        if (_p._charsRight() == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1117"
            return { _0 : null, _1 : _p._getErr((("illegal \\ at end of pattern" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1120"
        {
            var _ch = @:assignType (_p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
            {
                final __value__ = _ch;
                if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((66 : stdgo.GoInt32)) || __value__ == ((65 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((90 : stdgo.GoInt32)) || __value__ == ((122 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1122"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1123"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_p._typeFromCode(_ch), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((119 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1126"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1127"
                    if ((_p._useOptionE() || _p._useRE2() : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1128"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmawordclass.eCMAWordClass()), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1130"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_wordclass.wordClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((87 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1133"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1134"
                    if ((_p._useOptionE() || _p._useRE2() : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1135"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmawordclass.notECMAWordClass()), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1137"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notwordclass.notWordClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((115 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1140"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1141"
                    if (_p._useOptionE()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1142"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmaspaceclass.eCMASpaceClass()), _1 : (null : stdgo.Error) };
                    } else if (_p._useRE2()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1144"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_re2spaceclass.rE2SpaceClass()), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1146"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_spaceclass.spaceClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((83 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1149"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1150"
                    if (_p._useOptionE()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1151"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmaspaceclass.notECMASpaceClass()), _1 : (null : stdgo.Error) };
                    } else if (_p._useRE2()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1153"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notre2spaceclass.notRE2SpaceClass()), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1155"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notspaceclass.notSpaceClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((100 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1158"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1159"
                    if ((_p._useOptionE() || _p._useRE2() : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1160"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmadigitclass.eCMADigitClass()), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1162"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_digitclass.digitClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((68 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1165"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1166"
                    if ((_p._useOptionE() || _p._useRE2() : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1167"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmadigitclass.notECMADigitClass()), _1 : (null : stdgo.Error) };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1169"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notdigitclass.notDigitClass()), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((112 : stdgo.GoInt32)) || __value__ == ((80 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1172"
                    _p._moveRight((1 : stdgo.GoInt));
                    var __tmp__ = _p._parseProperty(), _prop:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1174"
                    if (_err != null) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1175"
                        return { _0 : null, _1 : _err };
                    };
                    var _cc = (stdgo.Go.setRef((new _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1178"
                    _cc._addCategory(_prop?.__copy__(), (_ch != (112 : stdgo.GoInt32)), _p._useOptionI(), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._patternRaw?.__copy__());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1179"
                    if (_p._useOptionI()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1180"
                        _cc._addLowercase();
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1183"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodeset._newRegexNodeSet((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _cc), _1 : (null : stdgo.Error) };
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1186"
                    return _p._scanBasicBackslash(_scanOnly);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _scanGroupOpen( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _err_267:stdgo.Error = (null : stdgo.Error);
        var _ch_265:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _rightchar2_279:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _charsRight_278:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capnum_276:stdgo.GoInt = (0 : stdgo.GoInt);
        var _proceed_272:Bool = false;
        var _start_269:stdgo.GoInt = (0 : stdgo.GoInt);
        var _close_268:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _capnum_270:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nt_266:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
        var _capname_281:stdgo.GoString = ("" : stdgo.GoString);
        var _capname_273:stdgo.GoString = ("" : stdgo.GoString);
        var _uncapnum_271:stdgo.GoInt = (0 : stdgo.GoInt);
        var _capname_277:stdgo.GoString = ("" : stdgo.GoString);
        var _uncapname_274:stdgo.GoString = ("" : stdgo.GoString);
        var _capnum_280:stdgo.GoInt = (0 : stdgo.GoInt);
        var _parenPos_275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _close_268 = (62 : stdgo.GoInt32);
                    _start_269 = _p._textpos();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L836"
                    if (((_p._charsRight() == ((0 : stdgo.GoInt)) || _p._rightChar((0 : stdgo.GoInt)) != ((63 : stdgo.GoInt32)) : Bool) || (((_p._rightChar((0 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) && (((_p._charsRight() > (1 : stdgo.GoInt) : Bool) && (_p._rightChar((1 : stdgo.GoInt)) == (41 : stdgo.GoInt32)) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 4348094i64;
                    } else {
                        _gotoNext = 4348300i64;
                    };
                } else if (__value__ == (4348094i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L837"
                    if ((_p._useOptionN() || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreNextParen : Bool)) {
                        _gotoNext = 4348137i64;
                    } else {
                        _gotoNext = 4348222i64;
                    };
                } else if (__value__ == (4348137i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreNextParen = false;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L839"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options), _1 : (null : stdgo.Error) };
                    _gotoNext = 4348222i64;
                } else if (__value__ == (4348222i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L841"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _p._consumeAutocap(), (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4348300i64;
                } else if (__value__ == (4348300i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L844"
                    _p._moveRight((1 : stdgo.GoInt));
                    0i64;
                    _gotoNext = 4348317i64;
                } else if (__value__ == (4348317i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 4348321i64;
                    } else {
                        _gotoNext = 4354656i64;
                    };
                } else if (__value__ == (4348321i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L847"
                    if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4348348i64;
                    } else {
                        _gotoNext = 4348366i64;
                    };
                } else if (__value__ == (4348348i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4348366i64)) {
                    _gotoNext = 4348366i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L851"
                    {
                        _ch_265 = _p._moveRightGetChar();
                        {
                            final __value__ = _ch_265;
                            if (__value__ == ((58 : stdgo.GoInt32))) {
                                _gotoNext = 4348407i64;
                            } else if (__value__ == ((61 : stdgo.GoInt32))) {
                                _gotoNext = 4348436i64;
                            } else if (__value__ == ((33 : stdgo.GoInt32))) {
                                _gotoNext = 4348496i64;
                            } else if (__value__ == ((62 : stdgo.GoInt32))) {
                                _gotoNext = 4348556i64;
                            } else if (__value__ == ((39 : stdgo.GoInt32))) {
                                _gotoNext = 4348586i64;
                            } else if (__value__ == ((60 : stdgo.GoInt32))) {
                                _gotoNext = 4348631i64;
                            } else if (__value__ == ((40 : stdgo.GoInt32))) {
                                _gotoNext = 4351600i64;
                            } else if (__value__ == ((80 : stdgo.GoInt32))) {
                                _gotoNext = 4353217i64;
                            } else {
                                _gotoNext = 4354269i64;
                            };
                        };
                    };
                } else if (__value__ == (4348407i64)) {
                    _nt_266 = (29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4354612i64;
                } else if (__value__ == (4348436i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & ((-65 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_266 = (30 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4354612i64;
                } else if (__value__ == (4348496i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & ((-65 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_266 = (31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4354612i64;
                } else if (__value__ == (4348556i64)) {
                    _nt_266 = (32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4354612i64;
                } else if (__value__ == (4348586i64)) {
                    _close_268 = (39 : stdgo.GoInt32);
                    _gotoNext = 4348631i64;
                } else if (__value__ == (4348631i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L871"
                    if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4348667i64;
                    } else {
                        _gotoNext = 4348702i64;
                    };
                } else if (__value__ == (4348667i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4348702i64)) {
                    _gotoNext = 4348702i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L875"
                    {
                        _ch_265 = _p._moveRightGetChar();
                        {
                            final __value__ = _ch_265;
                            if (__value__ == ((61 : stdgo.GoInt32))) {
                                _gotoNext = 4348744i64;
                            } else if (__value__ == ((33 : stdgo.GoInt32))) {
                                _gotoNext = 4348861i64;
                            } else {
                                _gotoNext = 4348978i64;
                            };
                        };
                    };
                } else if (__value__ == (4348744i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L877"
                    if (_close_268 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 4348775i64;
                    } else {
                        _gotoNext = 4348813i64;
                    };
                } else if (__value__ == (4348775i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4348813i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options | ((64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_266 = (30 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4354612i64;
                } else if (__value__ == (4348861i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L885"
                    if (_close_268 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 4348892i64;
                    } else {
                        _gotoNext = 4348930i64;
                    };
                } else if (__value__ == (4348892i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4348930i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options | ((64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
                    _nt_266 = (31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    _gotoNext = 4354612i64;
                } else if (__value__ == (4348978i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L893"
                    _p._moveLeft();
                    _capnum_270 = (-1 : stdgo.GoInt);
                    _uncapnum_271 = (-1 : stdgo.GoInt);
                    _proceed_272 = false;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L900"
                    if (((_ch_265 >= (48 : stdgo.GoInt32) : Bool) && (_ch_265 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4349119i64;
                    } else if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_265)) {
                        _gotoNext = 4349565i64;
                    } else if (_ch_265 == ((45 : stdgo.GoInt32))) {
                        _gotoNext = 4349908i64;
                    } else {
                        _gotoNext = 4349941i64;
                    };
                } else if (__value__ == (4349119i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L901"
                    {
                        {
                            var __tmp__ = _p._scanDecimal();
                            _capnum_270 = @:tmpset0 __tmp__._0;
                            _err_267 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_267 != null) {
                            _gotoNext = 4349171i64;
                        } else {
                            _gotoNext = 4349208i64;
                        };
                    };
                } else if (__value__ == (4349171i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L902"
                    return { _0 : null, _1 : _err_267 };
                    _gotoNext = 4349208i64;
                } else if (__value__ == (4349208i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L905"
                    if (!_p._isCaptureSlot(_capnum_270)) {
                        _gotoNext = 4349236i64;
                    } else {
                        _gotoNext = 4349328i64;
                    };
                } else if (__value__ == (4349236i64)) {
                    _capnum_270 = (-1 : stdgo.GoInt);
                    _gotoNext = 4349328i64;
                } else if (__value__ == (4349328i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L910"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && !(((_p._rightChar((0 : stdgo.GoInt)) == _close_268) || (_p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 4349405i64;
                    } else {
                        _gotoNext = 4349467i64;
                    };
                } else if (__value__ == (4349405i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L911"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4349467i64;
                } else if (__value__ == (4349467i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L913"
                    if (_capnum_270 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4349482i64;
                    } else {
                        _gotoNext = 4350128i64;
                    };
                } else if (__value__ == (4349482i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L914"
                    return { _0 : null, _1 : _p._getErr((("capture number cannot be zero" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4350128i64;
                } else if (__value__ == (4349565i64)) {
                    _capname_273 = _p._scanCapname()?.__copy__();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L919"
                    if (_p._isCaptureName(_capname_273?.__copy__())) {
                        _gotoNext = 4349633i64;
                    } else {
                        _gotoNext = 4349750i64;
                    };
                } else if (__value__ == (4349633i64)) {
                    _capnum_270 = _p._captureSlotFromName(_capname_273?.__copy__());
                    _gotoNext = 4349750i64;
                } else if (__value__ == (4349750i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L924"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && !(((_p._rightChar((0 : stdgo.GoInt)) == _close_268) || (_p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 4349827i64;
                    } else {
                        _gotoNext = 4350128i64;
                    };
                } else if (__value__ == (4349827i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L925"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4350128i64;
                } else if (__value__ == (4349908i64)) {
                    _proceed_272 = true;
                    _gotoNext = 4350128i64;
                } else if (__value__ == (4349941i64)) {
                    _gotoNext = 4349941i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L931"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    0i64;
                    _gotoNext = 4350128i64;
                } else if (__value__ == (4350128i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L936"
                    if ((((((_capnum_270 != (-1 : stdgo.GoInt)) || (_proceed_272 == true) : Bool)) && (_p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (45 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4350212i64;
                    } else {
                        _gotoNext = 4351397i64;
                    };
                } else if (__value__ == (4350212i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L937"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L940"
                    if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4350311i64;
                    } else {
                        _gotoNext = 4350374i64;
                    };
                } else if (__value__ == (4350311i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L941"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4350374i64;
                } else if (__value__ == (4350374i64)) {
                    _ch_265 = _p._rightChar((0 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L945"
                    if (((_ch_265 >= (48 : stdgo.GoInt32) : Bool) && (_ch_265 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4350425i64;
                    } else if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_265)) {
                        _gotoNext = 4350824i64;
                    } else {
                        _gotoNext = 4351203i64;
                    };
                } else if (__value__ == (4350425i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L946"
                    {
                        {
                            var __tmp__ = _p._scanDecimal();
                            _uncapnum_271 = @:tmpset0 __tmp__._0;
                            _err_267 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_267 != null) {
                            _gotoNext = 4350480i64;
                        } else {
                            _gotoNext = 4350520i64;
                        };
                    };
                } else if (__value__ == (4350480i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L947"
                    return { _0 : null, _1 : _err_267 };
                    _gotoNext = 4350520i64;
                } else if (__value__ == (4350520i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L950"
                    if (!_p._isCaptureSlot(_uncapnum_271)) {
                        _gotoNext = 4350550i64;
                    } else {
                        _gotoNext = 4350686i64;
                    };
                } else if (__value__ == (4350550i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L951"
                    return { _0 : null, _1 : _p._getErr((("reference to undefined group number %v" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_uncapnum_271, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
                    _gotoNext = 4350686i64;
                } else if (__value__ == (4350686i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L955"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != _close_268) : Bool)) {
                        _gotoNext = 4350735i64;
                    } else {
                        _gotoNext = 4351397i64;
                    };
                } else if (__value__ == (4350735i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L956"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4351397i64;
                } else if (__value__ == (4350824i64)) {
                    _uncapname_274 = _p._scanCapname()?.__copy__();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L961"
                    if (!_p._isCaptureName(_uncapname_274?.__copy__())) {
                        _gotoNext = 4350899i64;
                    } else {
                        _gotoNext = 4350975i64;
                    };
                } else if (__value__ == (4350899i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L962"
                    return { _0 : null, _1 : _p._getErr((("reference to undefined group name %v" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_uncapname_274, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                    _gotoNext = 4350975i64;
                } else if (__value__ == (4350975i64)) {
                    _uncapnum_271 = _p._captureSlotFromName(_uncapname_274?.__copy__());
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L967"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != _close_268) : Bool)) {
                        _gotoNext = 4351132i64;
                    } else {
                        _gotoNext = 4351397i64;
                    };
                } else if (__value__ == (4351132i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L968"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4351397i64;
                } else if (__value__ == (4351203i64)) {
                    _gotoNext = 4351203i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L972"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    0i64;
                    _gotoNext = 4351397i64;
                } else if (__value__ == (4351397i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L978"
                    if ((((((_capnum_270 != (-1 : stdgo.GoInt)) || (_uncapnum_271 != (-1 : stdgo.GoInt)) : Bool)) && (_p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (_p._moveRightGetChar() == _close_268) : Bool)) {
                        _gotoNext = 4351488i64;
                    } else {
                        _gotoNext = 4351572i64;
                    };
                } else if (__value__ == (4351488i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L979"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum_270, _uncapnum_271), _1 : (null : stdgo.Error) };
                    _gotoNext = 4351572i64;
                } else if (__value__ == (4351572i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4351600i64)) {
                    _parenPos_275 = _p._textpos();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L988"
                    if ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4351703i64;
                    } else {
                        _gotoNext = 4352487i64;
                    };
                } else if (__value__ == (4351703i64)) {
                    _ch_265 = _p._rightChar((0 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L992"
                    if (((_ch_265 >= (48 : stdgo.GoInt32) : Bool) && (_ch_265 <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4351815i64;
                    } else if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_265)) {
                        _gotoNext = 4352237i64;
                    } else {
                        _gotoNext = 4352487i64;
                    };
                } else if (__value__ == (4351815i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L994"
                    {
                        {
                            var __tmp__ = _p._scanDecimal();
                            _capnum_276 = @:tmpset0 __tmp__._0;
                            _err_267 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_267 != null) {
                            _gotoNext = 4351887i64;
                        } else {
                            _gotoNext = 4351923i64;
                        };
                    };
                } else if (__value__ == (4351887i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L995"
                    return { _0 : null, _1 : _err_267 };
                    _gotoNext = 4351923i64;
                } else if (__value__ == (4351923i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L997"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._moveRightGetChar() == (41 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4351976i64;
                    } else {
                        _gotoNext = 4352155i64;
                    };
                } else if (__value__ == (4351976i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L998"
                    if (_p._isCaptureSlot(_capnum_276)) {
                        _gotoNext = 4352011i64;
                    } else {
                        _gotoNext = 4352090i64;
                    };
                } else if (__value__ == (4352011i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L999"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum_276), _1 : (null : stdgo.Error) };
                    _gotoNext = 4352090i64;
                } else if (__value__ == (4352090i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1001"
                    return { _0 : null, _1 : _p._getErr((("(?(%v) ) reference to undefined group" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_capnum_276, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
                    _gotoNext = 4352155i64;
                } else if (__value__ == (4352155i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1004"
                    return { _0 : null, _1 : _p._getErr((("(?(%v) ) malformed" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface(_capnum_276, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) };
                    _gotoNext = 4352487i64;
                } else if (__value__ == (4352237i64)) {
                    _capname_277 = _p._scanCapname()?.__copy__();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1009"
                    if (((_p._isCaptureName(_capname_277?.__copy__()) && (_p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (_p._moveRightGetChar() == (41 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4352358i64;
                    } else {
                        _gotoNext = 4352487i64;
                    };
                } else if (__value__ == (4352358i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1010"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _p._captureSlotFromName(_capname_277?.__copy__())), _1 : (null : stdgo.Error) };
                    _gotoNext = 4352487i64;
                } else if (__value__ == (4352487i64)) {
                    _nt_266 = (34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1016"
                    _p._textto((_parenPos_275 - (1 : stdgo.GoInt) : stdgo.GoInt));
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreNextParen = true;
                    _charsRight_278 = _p._charsRight();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1020"
                    if (((_charsRight_278 >= (3 : stdgo.GoInt) : Bool) && (_p._rightChar((1 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4352733i64;
                    } else {
                        _gotoNext = 4354612i64;
                    };
                } else if (__value__ == (4352733i64)) {
                    _rightchar2_279 = _p._rightChar((2 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1023"
                    if (_rightchar2_279 == ((35 : stdgo.GoInt32))) {
                        _gotoNext = 4352835i64;
                    } else {
                        _gotoNext = 4352968i64;
                    };
                } else if (__value__ == (4352835i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1024"
                    return { _0 : null, _1 : _p._getErr((("alternation conditions cannot be comments" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4352968i64;
                } else if (__value__ == (4352968i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1028"
                    if (_rightchar2_279 == ((39 : stdgo.GoInt32))) {
                        _gotoNext = 4352990i64;
                    } else {
                        _gotoNext = 4353056i64;
                    };
                } else if (__value__ == (4352990i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1029"
                    return { _0 : null, _1 : _p._getErr((("alternation conditions do not capture and cannot be named" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4353056i64;
                } else if (__value__ == (4353056i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1032"
                    if (((_charsRight_278 >= (4 : stdgo.GoInt) : Bool) && (((_rightchar2_279 == ((60 : stdgo.GoInt32)) && _p._rightChar((3 : stdgo.GoInt)) != ((33 : stdgo.GoInt32)) : Bool) && (_p._rightChar((3 : stdgo.GoInt)) != (61 : stdgo.GoInt32)) : Bool)) : Bool)) {
                        _gotoNext = 4353148i64;
                    } else {
                        _gotoNext = 4354612i64;
                    };
                } else if (__value__ == (4353148i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1033"
                    return { _0 : null, _1 : _p._getErr((("alternation conditions do not capture and cannot be named" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4354612i64;
                } else if (__value__ == (4353217i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1038"
                    if (_p._useRE2()) {
                        _gotoNext = 4353244i64;
                    } else {
                        _gotoNext = 4354254i64;
                    };
                } else if (__value__ == (4353244i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1040"
                    if ((_p._charsRight() < (3 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4353306i64;
                    } else {
                        _gotoNext = 4353344i64;
                    };
                } else if (__value__ == (4353306i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4353344i64)) {
                    _ch_265 = _p._moveRightGetChar();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1045"
                    if (_ch_265 != ((60 : stdgo.GoInt32))) {
                        _gotoNext = 4353387i64;
                    } else {
                        _gotoNext = 4353425i64;
                    };
                } else if (__value__ == (4353387i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4353425i64)) {
                    _ch_265 = _p._moveRightGetChar();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1050"
                    _p._moveLeft();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1052"
                    if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch_265)) {
                        _gotoNext = 4353491i64;
                    } else {
                        _gotoNext = 4354018i64;
                    };
                } else if (__value__ == (4353491i64)) {
                    _capnum_280 = (-1 : stdgo.GoInt);
                    _capname_281 = _p._scanCapname()?.__copy__();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1056"
                    if (_p._isCaptureName(_capname_281?.__copy__())) {
                        _gotoNext = 4353577i64;
                    } else {
                        _gotoNext = 4353694i64;
                    };
                } else if (__value__ == (4353577i64)) {
                    _capnum_280 = _p._captureSlotFromName(_capname_281?.__copy__());
                    _gotoNext = 4353694i64;
                } else if (__value__ == (4353694i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1061"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (62 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4353741i64;
                    } else {
                        _gotoNext = 4353836i64;
                    };
                } else if (__value__ == (4353741i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1062"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4353836i64;
                } else if (__value__ == (4353836i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1067"
                    if (((_capnum_280 != ((-1 : stdgo.GoInt)) && (_p._charsRight() > (0 : stdgo.GoInt) : Bool) : Bool) && (_p._moveRightGetChar() == (62 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4353905i64;
                    } else {
                        _gotoNext = 4353986i64;
                    };
                } else if (__value__ == (4353905i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1068"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum_280, (-1 : stdgo.GoInt)), _1 : (null : stdgo.Error) };
                    _gotoNext = 4353986i64;
                } else if (__value__ == (4353986i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4354018i64)) {
                    _gotoNext = 4354018i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1074"
                    return { _0 : null, _1 : _p._getErr((("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    0i64;
                    _gotoNext = 4354254i64;
                } else if (__value__ == (4354254i64)) {
                    _gotoNext = 4354269i64;
                } else if (__value__ == (4354269i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1082"
                    _p._moveLeft();
                    _nt_266 = (29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1086"
                    if ((@:checkr (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._group ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t != ((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                        _gotoNext = 4354401i64;
                    } else {
                        _gotoNext = 4354431i64;
                    };
                } else if (__value__ == (4354401i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1087"
                    _p._scanOptions();
                    _gotoNext = 4354431i64;
                } else if (__value__ == (4354431i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1089"
                    if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4354454i64;
                    } else {
                        _gotoNext = 4354489i64;
                    };
                } else if (__value__ == (4354454i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4354489i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1093"
                    {
                        _ch_265 = _p._moveRightGetChar();
                        if (_ch_265 == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 4354529i64;
                        } else {
                            _gotoNext = 4354560i64;
                        };
                    };
                } else if (__value__ == (4354529i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1094"
                    return { _0 : null, _1 : (null : stdgo.Error) };
                    _gotoNext = 4354560i64;
                } else if (__value__ == (4354560i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1097"
                    if (_ch_265 != ((58 : stdgo.GoInt32))) {
                        _gotoNext = 4354573i64;
                    } else {
                        _gotoNext = 4354612i64;
                    };
                } else if (__value__ == (4354573i64)) {
                    _gotoNext = 4354656i64;
                } else if (__value__ == (4354612i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1103"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode(_nt_266, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options), _1 : (null : stdgo.Error) };
                    _gotoNext = 4348317i64;
                } else if (__value__ == (4354656i64)) {
                    _gotoNext = 4354656i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1110"
                    return { _0 : null, _1 : _p._getErr((("unrecognized grouping construct: (%v" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode), new stdgo.AnyInterface((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.__slice__(_start_269, _p._textpos()) : stdgo.Slice<stdgo.GoInt32>) : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _scanDollar( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L721"
        if (_p._charsRight() == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L722"
            return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, (36 : stdgo.GoInt32)), _1 : (null : stdgo.Error) };
        };
        var _ch = @:assignType (_p._rightChar((0 : stdgo.GoInt)) : stdgo.GoInt32);
        var _angled = @:assignType (false : Bool);
        var _backpos = @:assignType (_p._textpos() : stdgo.GoInt);
        var _lastEndPos = @:assignType (_backpos : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L732"
        if (((_ch == (123 : stdgo.GoInt32)) && (_p._charsRight() > (1 : stdgo.GoInt) : Bool) : Bool)) {
            _angled = true;
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L734"
            _p._moveRight((1 : stdgo.GoInt));
            _ch = _p._rightChar((0 : stdgo.GoInt));
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L740"
        if (((_ch >= (48 : stdgo.GoInt32) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L741"
            if ((!_angled && _p._useOptionE() : Bool)) {
                var _capnum = @:assignType (-1 : stdgo.GoInt);
                var _newcapnum = @:assignType ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L744"
                _p._moveRight((1 : stdgo.GoInt));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L745"
                if (_p._isCaptureSlot(_newcapnum)) {
                    _capnum = _newcapnum;
                    _lastEndPos = _p._textpos();
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L750"
                while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                    _ch = _p._rightChar((0 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L752"
                    if (((_ch < (48 : stdgo.GoInt32) : Bool) || (_ch > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L753"
                        break;
                    };
                    var _digit = @:assignType ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L756"
                    if (((_newcapnum > (214748364 : stdgo.GoInt) : Bool) || (((_newcapnum == (214748364 : stdgo.GoInt)) && (_digit > (7 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L757"
                        return { _0 : null, _1 : _p._getErr((("capture group number out of range" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    };
                    _newcapnum = ((_newcapnum * (10 : stdgo.GoInt) : stdgo.GoInt) + _digit : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L762"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L763"
                    if (_p._isCaptureSlot(_newcapnum)) {
                        _capnum = _newcapnum;
                        _lastEndPos = _p._textpos();
                    };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L768"
                _p._textto(_lastEndPos);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L769"
                if ((_capnum >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L770"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum), _1 : (null : stdgo.Error) };
                };
            } else {
                var __tmp__ = _p._scanDecimal(), _capnum:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L774"
                if (_err != null) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L775"
                    return { _0 : null, _1 : _err };
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L777"
                if ((!_angled || ((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && _p._moveRightGetChar() == ((125 : stdgo.GoInt32)) : Bool) : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L778"
                    if (_p._isCaptureSlot(_capnum)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L779"
                        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum), _1 : (null : stdgo.Error) };
                    };
                };
            };
        } else if ((_angled && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) : Bool)) {
            var _capname = @:assignType (_p._scanCapname()?.__copy__() : stdgo.GoString);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L786"
            if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._moveRightGetChar() == (125 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L787"
                if (_p._isCaptureName(_capname?.__copy__())) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L788"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _p._captureSlotFromName(_capname?.__copy__())), _1 : (null : stdgo.Error) };
                };
            };
        } else if (!_angled) {
            var _capnum = @:assignType (1 : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L794"
            {
                final __value__ = _ch;
                if (__value__ == ((36 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L796"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L797"
                    return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, (36 : stdgo.GoInt32)), _1 : (null : stdgo.Error) };
                } else if (__value__ == ((38 : stdgo.GoInt32))) {
                    _capnum = (0 : stdgo.GoInt);
                } else if (__value__ == ((96 : stdgo.GoInt32))) {
                    _capnum = (-1 : stdgo.GoInt);
                } else if (__value__ == ((39 : stdgo.GoInt32))) {
                    _capnum = (-2 : stdgo.GoInt);
                } else if (__value__ == ((43 : stdgo.GoInt32))) {
                    _capnum = (-3 : stdgo.GoInt);
                } else if (__value__ == ((95 : stdgo.GoInt32))) {
                    _capnum = (-4 : stdgo.GoInt);
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L810"
            if (_capnum != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L811"
                _p._moveRight((1 : stdgo.GoInt));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L812"
                return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodem._newRegexNodeM((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, _capnum), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L818"
        _p._textto(_backpos);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L819"
        return { _0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodech._newRegexNodeCh((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, (36 : stdgo.GoInt32)), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanReplacement( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _c:stdgo.GoInt = (0 : stdgo.GoInt), _startpos:stdgo.GoInt = (0 : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnode._newRegexNode((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L687"
        while (true) {
            _c = _p._charsRight();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L689"
            if (_c == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L690"
                break;
            };
            _startpos = _p._textpos();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L695"
            while (((_c > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) != (36 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L696"
                _p._moveRight((1 : stdgo.GoInt));
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L697"
                _c--;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L700"
            _p._addToConcatenate(_startpos, (_p._textpos() - _startpos : stdgo.GoInt), true);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L702"
            if ((_c > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L703"
                if (_p._moveRightGetChar() == ((36 : stdgo.GoInt32))) {
                    var __tmp__ = _p._scanDollar(), _n:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L705"
                    if (_err != null) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L706"
                        return { _0 : null, _1 : _err };
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L708"
                    _p._addUnitNode(_n);
                };
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L710"
                _p._addConcatenate();
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L714"
        return { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._concatenation, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _scanRegex( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _err_245:stdgo.Error = (null : stdgo.Error);
        var _err_231:stdgo.Error = (null : stdgo.Error);
        var _cc_230:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
        var _cchUnquantified_206:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ch_199:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_264:stdgo.Error = (null : stdgo.Error);
        var _err_263:stdgo.Error = (null : stdgo.Error);
        var _err_257:stdgo.Error = (null : stdgo.Error);
        var _err_258:stdgo.Error = (null : stdgo.Error);
        var _n_256:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var _err_247:stdgo.Error = (null : stdgo.Error);
        var _err_202:stdgo.Error = (null : stdgo.Error);
        var _wasPrevQuantifier_201:Bool = false;
        var _lazy_261:Bool = false;
        var _max_260:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_262:stdgo.Error = (null : stdgo.Error);
        var _min_259:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_246:stdgo.Error = (null : stdgo.Error);
        var _grouper_244:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var _isQuant_200:Bool = false;
        var _endpos_205:stdgo.GoInt = (0 : stdgo.GoInt);
        var _startpos_203:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _ch_199 = (64 : stdgo.GoInt32);
                    _isQuant_200 = false;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L423"
                    _p._startGroup(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__newregexnodemn._newRegexNodeMN((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType), (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, (0 : stdgo.GoInt), (-1 : stdgo.GoInt)));
                    0i64;
                    _gotoNext = 4339965i64;
                } else if (__value__ == (4339965i64)) {
                    //"file://#L0"
                    if ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4339988i64;
                    } else {
                        _gotoNext = 4344463i64;
                    };
                } else if (__value__ == (4339988i64)) {
                    _wasPrevQuantifier_201 = _isQuant_200;
                    _isQuant_200 = false;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L429"
                    {
                        _err_202 = _p._scanBlank();
                        if (_err_202 != null) {
                            _gotoNext = 4340078i64;
                        } else {
                            _gotoNext = 4340106i64;
                        };
                    };
                } else if (__value__ == (4340078i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L430"
                    return { _0 : null, _1 : _err_202 };
                    _gotoNext = 4340106i64;
                } else if (__value__ == (4340106i64)) {
                    _startpos_203 = _p._textpos();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L437"
                    if (_p._useOptionX()) {
                        _gotoNext = 4340334i64;
                    } else {
                        _gotoNext = 4340541i64;
                    };
                } else if (__value__ == (4340334i64)) {
                    0i64;
                    _gotoNext = 4340339i64;
                } else if (__value__ == (4340339i64)) {
                    //"file://#L0"
                    if ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4340362i64;
                    } else {
                        _gotoNext = 4340708i64;
                    };
                } else if (__value__ == (4340362i64)) {
                    _ch_199 = _p._rightChar((0 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L441"
                    if (!((!_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isstopperx._isStopperX(_ch_199) || (((_ch_199 == (123 : stdgo.GoInt32)) && !_p._isTrueQuantifier() : Bool)) : Bool))) {
                        _gotoNext = 4340489i64;
                    } else {
                        _gotoNext = 4340512i64;
                    };
                } else if (__value__ == (4340489i64)) {
                    _gotoNext = 4340708i64;
                } else if (__value__ == (4340512i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L444"
                    _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 4340339i64;
                } else if (__value__ == (4340541i64)) {
                    _gotoNext = 4340541i64;
                    0i64;
                    _gotoNext = 4340546i64;
                } else if (__value__ == (4340546i64)) {
                    //"file://#L0"
                    if ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4340569i64;
                    } else {
                        _gotoNext = 4340708i64;
                    };
                } else if (__value__ == (4340569i64)) {
                    _ch_199 = _p._rightChar((0 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L449"
                    if (!((!_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isspecial._isSpecial(_ch_199) || (_ch_199 == ((123 : stdgo.GoInt32)) && !_p._isTrueQuantifier() : Bool) : Bool))) {
                        _gotoNext = 4340658i64;
                    } else {
                        _gotoNext = 4340681i64;
                    };
                } else if (__value__ == (4340658i64)) {
                    _gotoNext = 4340708i64;
                } else if (__value__ == (4340681i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L452"
                    _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 4340546i64;
                } else if (__value__ == (4340708i64)) {
                    _endpos_205 = _p._textpos();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L458"
                    _p._scanBlank();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L460"
                    if (_p._charsRight() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 4340773i64;
                    } else {
                        _ch_199 = _p._rightChar((0 : stdgo.GoInt));
                        if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isspecial._isSpecial(_ch_199)) {
                            _gotoNext = 4340862i64;
                        } else {
                            _gotoNext = 4340921i64;
                        };
                    };
                } else if (__value__ == (4340773i64)) {
                    _ch_199 = (33 : stdgo.GoInt32);
                    _gotoNext = 4340980i64;
                } else if (__value__ == (4340862i64)) {
                    _isQuant_200 = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__isquantifier._isQuantifier(_ch_199);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L464"
                    _p._moveRight((1 : stdgo.GoInt));
                    _gotoNext = 4340980i64;
                } else if (__value__ == (4340921i64)) {
                    _gotoNext = 4340921i64;
                    _ch_199 = (32 : stdgo.GoInt32);
                    0i64;
                    _gotoNext = 4340980i64;
                } else if (__value__ == (4340980i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L469"
                    if ((_startpos_203 < _endpos_205 : Bool)) {
                        _gotoNext = 4341001i64;
                    } else {
                        _gotoNext = 4341274i64;
                    };
                } else if (__value__ == (4341001i64)) {
                    _cchUnquantified_206 = (_endpos_205 - _startpos_203 : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L471"
                    if (_isQuant_200) {
                        _gotoNext = 4341057i64;
                    } else {
                        _gotoNext = 4341089i64;
                    };
                } else if (__value__ == (4341057i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L472"
                    _cchUnquantified_206--;
                    _gotoNext = 4341089i64;
                } else if (__value__ == (4341089i64)) {
                    _wasPrevQuantifier_201 = false;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L476"
                    if ((_cchUnquantified_206 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4341142i64;
                    } else {
                        _gotoNext = 4341210i64;
                    };
                } else if (__value__ == (4341142i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L477"
                    _p._addToConcatenate(_startpos_203, _cchUnquantified_206, false);
                    _gotoNext = 4341210i64;
                } else if (__value__ == (4341210i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L480"
                    if (_isQuant_200) {
                        _gotoNext = 4341221i64;
                    } else {
                        _gotoNext = 4341274i64;
                    };
                } else if (__value__ == (4341221i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L481"
                    _p._addUnitOne(_p._charAt((_endpos_205 - (1 : stdgo.GoInt) : stdgo.GoInt)));
                    _gotoNext = 4341274i64;
                } else if (__value__ == (4341274i64)) {
                    _gotoNext = 4341274i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L485"
                    {
                        final __value__ = _ch_199;
                        if (__value__ == ((33 : stdgo.GoInt32))) {
                            _gotoNext = 4341288i64;
                        } else if (__value__ == ((32 : stdgo.GoInt32))) {
                            _gotoNext = 4341324i64;
                        } else if (__value__ == ((91 : stdgo.GoInt32))) {
                            _gotoNext = 4341363i64;
                        } else if (__value__ == ((40 : stdgo.GoInt32))) {
                            _gotoNext = 4341491i64;
                        } else if (__value__ == ((124 : stdgo.GoInt32))) {
                            _gotoNext = 4341725i64;
                        } else if (__value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 4341784i64;
                        } else if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 4342074i64;
                        } else if (__value__ == ((94 : stdgo.GoInt32))) {
                            _gotoNext = 4342188i64;
                        } else if (__value__ == ((36 : stdgo.GoInt32))) {
                            _gotoNext = 4342297i64;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 4342401i64;
                        } else if (__value__ == ((123 : stdgo.GoInt32)) || __value__ == ((42 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32)) || __value__ == ((63 : stdgo.GoInt32))) {
                            _gotoNext = 4342572i64;
                        } else {
                            _gotoNext = 4342787i64;
                        };
                    };
                } else if (__value__ == (4341288i64)) {
                    _gotoNext = 4344463i64;
                } else if (__value__ == (4341324i64)) {
                    _gotoNext = 4344440i64;
                } else if (__value__ == (4341363i64)) {
                    {
                        var __tmp__ = _p._scanCharSet(_p._useOptionI(), false);
                        _cc_230 = @:tmpset0 __tmp__._0;
                        _err_231 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L494"
                    if (_err_231 != null) {
                        _gotoNext = 4341441i64;
                    } else {
                        _gotoNext = 4341471i64;
                    };
                } else if (__value__ == (4341441i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L495"
                    return { _0 : null, _1 : _err_231 };
                    _gotoNext = 4341471i64;
                } else if (__value__ == (4341471i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L497"
                    _p._addUnitSet(_cc_230);
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4341491i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L500"
                    _p._pushOptions();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L502"
                    {
                        {
                            var __tmp__ = _p._scanGroupOpen();
                            _grouper_244 = @:tmpset0 __tmp__._0;
                            _err_245 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_245 != null) {
                            _gotoNext = 4341573i64;
                        } else if (({
                            final value = _grouper_244;
                            (value == null || (value : Dynamic).__nil__);
                        })) {
                            _gotoNext = 4341623i64;
                        } else {
                            _gotoNext = 4341658i64;
                        };
                    };
                } else if (__value__ == (4341573i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L503"
                    return { _0 : null, _1 : _err_245 };
                    _gotoNext = 4341713i64;
                } else if (__value__ == (4341623i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L505"
                    _p._popKeepOptions();
                    _gotoNext = 4341713i64;
                } else if (__value__ == (4341658i64)) {
                    _gotoNext = 4341658i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L507"
                    _p._pushGroup();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L508"
                    _p._startGroup(_grouper_244);
                    0i64;
                    _gotoNext = 4341713i64;
                } else if (__value__ == (4341713i64)) {
                    0i64;
                    _gotoNext = 4339965i64;
                } else if (__value__ == (4341725i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L514"
                    _p._addAlternate();
                    _gotoNext = 4344440i64;
                } else if (__value__ == (4341784i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L518"
                    if (_p._emptyStack()) {
                        _gotoNext = 4341815i64;
                    } else {
                        _gotoNext = 4341871i64;
                    };
                } else if (__value__ == (4341815i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L519"
                    return { _0 : null, _1 : _p._getErr((("unexpected )" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4341871i64;
                } else if (__value__ == (4341871i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L522"
                    {
                        _err_246 = _p._addGroup();
                        if (_err_246 != null) {
                            _gotoNext = 4341906i64;
                        } else {
                            _gotoNext = 4341936i64;
                        };
                    };
                } else if (__value__ == (4341906i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L523"
                    return { _0 : null, _1 : _err_246 };
                    _gotoNext = 4341936i64;
                } else if (__value__ == (4341936i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L525"
                    {
                        _err_247 = _p._popGroup();
                        if (_err_247 != null) {
                            _gotoNext = 4341971i64;
                        } else {
                            _gotoNext = 4342001i64;
                        };
                    };
                } else if (__value__ == (4341971i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L526"
                    return { _0 : null, _1 : _err_247 };
                    _gotoNext = 4342001i64;
                } else if (__value__ == (4342001i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L528"
                    _p._popOptions();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L530"
                    if (({
                        final value = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 4342037i64;
                    } else {
                        _gotoNext = 4342845i64;
                    };
                } else if (__value__ == (4342037i64)) {
                    _gotoNext = 4344440i64;
                } else if (__value__ == (4342074i64)) {
                    {
                        var __tmp__ = _p._scanBackslash(false);
                        _n_256 = @:tmpset0 __tmp__._0;
                        _err_257 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L536"
                    if (_err_257 != null) {
                        _gotoNext = 4342138i64;
                    } else {
                        _gotoNext = 4342168i64;
                    };
                } else if (__value__ == (4342138i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L537"
                    return { _0 : null, _1 : _err_257 };
                    _gotoNext = 4342168i64;
                } else if (__value__ == (4342168i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L539"
                    _p._addUnitNode(_n_256);
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342188i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L542"
                    if (_p._useOptionM()) {
                        _gotoNext = 4342219i64;
                    } else {
                        _gotoNext = 4342256i64;
                    };
                } else if (__value__ == (4342219i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L543"
                    _p._addUnitType((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342256i64)) {
                    _gotoNext = 4342256i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L545"
                    _p._addUnitType((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    0i64;
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342297i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L549"
                    if (_p._useOptionM()) {
                        _gotoNext = 4342328i64;
                    } else {
                        _gotoNext = 4342365i64;
                    };
                } else if (__value__ == (4342328i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L550"
                    _p._addUnitType((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342365i64)) {
                    _gotoNext = 4342365i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L552"
                    _p._addUnitType((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType));
                    0i64;
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342401i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L556"
                    if (_p._useOptionS()) {
                        _gotoNext = 4342432i64;
                    } else if (_p._useOptionE()) {
                        _gotoNext = 4342491i64;
                    } else {
                        _gotoNext = 4342536i64;
                    };
                } else if (__value__ == (4342432i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L557"
                    _p._addUnitSet(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anyclass.anyClass());
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342491i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L559"
                    _p._addUnitSet(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmaanyclass.eCMAAnyClass());
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342536i64)) {
                    _gotoNext = 4342536i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L561"
                    _p._addUnitNotone((10 : stdgo.GoInt32));
                    0i64;
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342572i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L565"
                    if (({
                        final value = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 4342617i64;
                    } else {
                        _gotoNext = 4342771i64;
                    };
                } else if (__value__ == (4342617i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L566"
                    if (_wasPrevQuantifier_201) {
                        _gotoNext = 4342644i64;
                    } else {
                        _gotoNext = 4342703i64;
                    };
                } else if (__value__ == (4342644i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L567"
                    return { _0 : null, _1 : _p._getErr((("invalid nested repetition operator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4342771i64;
                } else if (__value__ == (4342703i64)) {
                    _gotoNext = 4342703i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L569"
                    return { _0 : null, _1 : _p._getErr((("missing argument to repetition operator" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    0i64;
                    _gotoNext = 4342771i64;
                } else if (__value__ == (4342771i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L572"
                    _p._moveLeft();
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342787i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L575"
                    return { _0 : null, _1 : _p._getErr((("regexp/syntax: internal error" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4342845i64;
                } else if (__value__ == (4342845i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L578"
                    {
                        _err_258 = _p._scanBlank();
                        if (_err_258 != null) {
                            _gotoNext = 4342881i64;
                        } else {
                            _gotoNext = 4342909i64;
                        };
                    };
                } else if (__value__ == (4342881i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L579"
                    return { _0 : null, _1 : _err_258 };
                    _gotoNext = 4342909i64;
                } else if (__value__ == (4342909i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L582"
                    if ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4342931i64;
                    } else {
                        _gotoNext = 4342973i64;
                    };
                } else if (__value__ == (4342931i64)) {
                    _isQuant_200 = _p._isTrueQuantifier();
                    _gotoNext = 4342973i64;
                } else if (__value__ == (4342973i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L585"
                    if (((_p._charsRight() == (0 : stdgo.GoInt)) || !_isQuant_200 : Bool)) {
                        _gotoNext = 4343008i64;
                    } else {
                        _gotoNext = 4343144i64;
                    };
                } else if (__value__ == (4343008i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L587"
                    _p._addConcatenate();
                    _gotoNext = 4344440i64;
                } else if (__value__ == (4343144i64)) {
                    _ch_199 = _p._moveRightGetChar();
                    0i64;
                    _gotoNext = 4343197i64;
                } else if (__value__ == (4343197i64)) {
                    //"file://#L0"
                    if (({
                        final value = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 4343215i64;
                    } else {
                        _gotoNext = 4344440i64;
                    };
                } else if (__value__ == (4343215i64)) {
                    _gotoNext = 4343258i64;
                } else if (__value__ == (4343258i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L598"
                    {
                        final __value__ = _ch_199;
                        if (__value__ == ((42 : stdgo.GoInt32))) {
                            _gotoNext = 4343273i64;
                        } else if (__value__ == ((63 : stdgo.GoInt32))) {
                            _gotoNext = 4343323i64;
                        } else if (__value__ == ((43 : stdgo.GoInt32))) {
                            _gotoNext = 4343361i64;
                        } else if (__value__ == ((123 : stdgo.GoInt32))) {
                            _gotoNext = 4343411i64;
                        } else {
                            _gotoNext = 4344078i64;
                        };
                    };
                } else if (__value__ == (4343273i64)) {
                    _min_259 = (0 : stdgo.GoInt);
                    _max_260 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 4344139i64;
                } else if (__value__ == (4343323i64)) {
                    _min_259 = (0 : stdgo.GoInt);
                    _max_260 = (1 : stdgo.GoInt);
                    _gotoNext = 4344139i64;
                } else if (__value__ == (4343361i64)) {
                    _min_259 = (1 : stdgo.GoInt);
                    _max_260 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 4344139i64;
                } else if (__value__ == (4343411i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L612"
                    {
                        _gotoNext = 4343425i64;
                    };
                } else if (__value__ == (4343425i64)) {
                    _startpos_203 = _p._textpos();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L615"
                    {
                        {
                            var __tmp__ = _p._scanDecimal();
                            _min_259 = @:tmpset0 __tmp__._0;
                            _err_262 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_262 != null) {
                            _gotoNext = 4343521i64;
                        } else {
                            _gotoNext = 4343557i64;
                        };
                    };
                } else if (__value__ == (4343521i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L616"
                    return { _0 : null, _1 : _err_262 };
                    _gotoNext = 4343557i64;
                } else if (__value__ == (4343557i64)) {
                    _max_260 = _min_259;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L619"
                    if ((_startpos_203 < _p._textpos() : Bool)) {
                        _gotoNext = 4343598i64;
                    } else {
                        _gotoNext = 4343895i64;
                    };
                } else if (__value__ == (4343598i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L620"
                    if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (44 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4343653i64;
                    } else {
                        _gotoNext = 4343895i64;
                    };
                } else if (__value__ == (4343653i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L621"
                    _p._moveRight((1 : stdgo.GoInt));
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L622"
                    if (((_p._charsRight() == (0 : stdgo.GoInt)) || (_p._rightChar((0 : stdgo.GoInt)) == (125 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4343732i64;
                    } else {
                        _gotoNext = 4343776i64;
                    };
                } else if (__value__ == (4343732i64)) {
                    _max_260 = (2147483647 : stdgo.GoInt);
                    _gotoNext = 4343895i64;
                } else if (__value__ == (4343776i64)) {
                    _gotoNext = 4343776i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L625"
                    {
                        {
                            var __tmp__ = _p._scanDecimal();
                            _max_260 = @:tmpset0 __tmp__._0;
                            _err_262 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_262 != null) {
                            _gotoNext = 4343828i64;
                        } else {
                            _gotoNext = 4343895i64;
                        };
                    };
                } else if (__value__ == (4343828i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L626"
                    return { _0 : null, _1 : _err_262 };
                    _gotoNext = 4343895i64;
                } else if (__value__ == (4343895i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L632"
                    if (((_startpos_203 == (_p._textpos()) || _p._charsRight() == ((0 : stdgo.GoInt)) : Bool) || (_p._moveRightGetChar() != (125 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4343976i64;
                    } else {
                        _gotoNext = 4344139i64;
                    };
                } else if (__value__ == (4343976i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L633"
                    _p._addConcatenate();
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L634"
                    _p._textto((_startpos_203 - (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4344440i64;
                } else if (__value__ == (4344078i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L640"
                    return { _0 : null, _1 : _p._getErr((("regexp/syntax: internal error" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4344139i64;
                } else if (__value__ == (4344139i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L643"
                    {
                        _err_263 = _p._scanBlank();
                        if (_err_263 != null) {
                            _gotoNext = 4344175i64;
                        } else {
                            _gotoNext = 4344206i64;
                        };
                    };
                } else if (__value__ == (4344175i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L644"
                    return { _0 : null, _1 : _err_263 };
                    _gotoNext = 4344206i64;
                } else if (__value__ == (4344206i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L647"
                    if (((_p._charsRight() == (0 : stdgo.GoInt)) || (_p._rightChar((0 : stdgo.GoInt)) != (63 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4344254i64;
                    } else {
                        _gotoNext = 4344283i64;
                    };
                } else if (__value__ == (4344254i64)) {
                    _lazy_261 = false;
                    _gotoNext = 4344329i64;
                } else if (__value__ == (4344283i64)) {
                    _gotoNext = 4344283i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L650"
                    _p._moveRight((1 : stdgo.GoInt));
                    _lazy_261 = true;
                    0i64;
                    _gotoNext = 4344329i64;
                } else if (__value__ == (4344329i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L654"
                    if ((_min_259 > _max_260 : Bool)) {
                        _gotoNext = 4344342i64;
                    } else {
                        _gotoNext = 4344400i64;
                    };
                } else if (__value__ == (4344342i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L655"
                    return { _0 : null, _1 : _p._getErr((("invalid repeat count" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4344400i64;
                } else if (__value__ == (4344400i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L658"
                    _p._addConcatenate3(_lazy_261, _min_259, _max_260);
                    _gotoNext = 4343197i64;
                } else if (__value__ == (4344440i64)) {
                    _gotoNext = 4344440i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L662"
                    {};
                    _gotoNext = 4339965i64;
                } else if (__value__ == (4344463i64)) {
                    _gotoNext = 4344463i64;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L665"
                    {};
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L667"
                    if (!_p._emptyStack()) {
                        _gotoNext = 4344503i64;
                    } else {
                        _gotoNext = 4344550i64;
                    };
                } else if (__value__ == (4344503i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L668"
                    return { _0 : null, _1 : _p._getErr((("missing closing )" : stdgo.GoString) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode)) };
                    _gotoNext = 4344550i64;
                } else if (__value__ == (4344550i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L671"
                    {
                        _err_264 = _p._addGroup();
                        if (_err_264 != null) {
                            _gotoNext = 4344585i64;
                        } else {
                            _gotoNext = 4344610i64;
                        };
                    };
                } else if (__value__ == (4344585i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L672"
                    return { _0 : null, _1 : _err_264 };
                    _gotoNext = 4344610i64;
                } else if (__value__ == (4344610i64)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L675"
                    return { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unit, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
    @:keep
    @:tdfield
    static public function _reset( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _topopts:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._currentPos = (0 : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap = (1 : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreNextParen = false;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L411"
        if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._optionsStack.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions>);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options = _topopts;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stack = null;
    }
    @:keep
    @:tdfield
    static public function _countCaptures( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _ch:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L307"
        _p._noteCaptureSlot((0 : stdgo.GoInt), (0 : stdgo.GoInt));
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap = (1 : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L311"
        while ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
            var _pos = @:assignType (_p._textpos() : stdgo.GoInt);
            _ch = _p._moveRightGetChar();
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L314"
            {
                final __value__ = _ch;
                if (__value__ == ((92 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L316"
                    if ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L317"
                        _p._scanBackslash(true);
                    };
                } else if (__value__ == ((35 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L321"
                    if (_p._useOptionX()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L322"
                        _p._moveLeft();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L323"
                        _p._scanBlank();
                    };
                } else if (__value__ == ((91 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L327"
                    _p._scanCharSet(false, true);
                } else if (__value__ == ((41 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L330"
                    if (!_p._emptyOptionsStack()) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L331"
                        _p._popOptions();
                    };
                } else if (__value__ == ((40 : stdgo.GoInt32))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L335"
                    if ((((_p._charsRight() >= (2 : stdgo.GoInt) : Bool) && _p._rightChar((1 : stdgo.GoInt)) == ((35 : stdgo.GoInt32)) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L336"
                        _p._moveLeft();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L337"
                        _p._scanBlank();
                    } else {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L339"
                        _p._pushOptions();
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L340"
                        if (((_p._charsRight() > (0 : stdgo.GoInt) : Bool) && (_p._rightChar((0 : stdgo.GoInt)) == (63 : stdgo.GoInt32)) : Bool)) {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L342"
                            _p._moveRight((1 : stdgo.GoInt));
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L344"
                            if (((_p._charsRight() > (1 : stdgo.GoInt) : Bool) && (((_p._rightChar((0 : stdgo.GoInt)) == (60 : stdgo.GoInt32)) || (_p._rightChar((0 : stdgo.GoInt)) == (39 : stdgo.GoInt32)) : Bool)) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L347"
                                _p._moveRight((1 : stdgo.GoInt));
                                _ch = _p._rightChar((0 : stdgo.GoInt));
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L350"
                                if (((_ch != (48 : stdgo.GoInt32)) && _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch) : Bool)) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L351"
                                    if (((_ch >= (49 : stdgo.GoInt32) : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                                        var __tmp__ = _p._scanDecimal(), _dec:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L353"
                                        if (_err != null) {
                                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L354"
                                            return _err;
                                        };
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L356"
                                        _p._noteCaptureSlot(_dec, _pos);
                                    } else {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L358"
                                        _p._noteCaptureName(_p._scanCapname()?.__copy__(), _pos);
                                    };
                                };
                            } else if (((_p._useRE2() && (_p._charsRight() > (2 : stdgo.GoInt) : Bool) : Bool) && (((_p._rightChar((0 : stdgo.GoInt)) == (80 : stdgo.GoInt32)) && (_p._rightChar((1 : stdgo.GoInt)) == (60 : stdgo.GoInt32)) : Bool)) : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L363"
                                _p._moveRight((2 : stdgo.GoInt));
                                _ch = _p._rightChar((0 : stdgo.GoInt));
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L365"
                                if (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_ch)) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L366"
                                    _p._noteCaptureName(_p._scanCapname()?.__copy__(), _pos);
                                };
                            } else {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L373"
                                _p._scanOptions();
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L375"
                                if ((_p._charsRight() > (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L376"
                                    if (_p._rightChar((0 : stdgo.GoInt)) == ((41 : stdgo.GoInt32))) {
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L378"
                                        _p._moveRight((1 : stdgo.GoInt));
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L379"
                                        _p._popKeepOptions();
                                    } else if (_p._rightChar((0 : stdgo.GoInt)) == ((40 : stdgo.GoInt32))) {
                                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreNextParen = true;
                                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L386"
                                        continue;
                                    };
                                };
                            };
                        } else {
                            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L391"
                            if ((!_p._useOptionN() && !(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreNextParen : Bool)) {
                                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L392"
                                _p._noteCaptureSlot(_p._consumeAutocap(), _pos);
                            };
                        };
                    };
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ignoreNextParen = false;
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L402"
        _p._assignNameSlots();
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L403"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _consumeAutocap( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        var _r = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap : stdgo.GoInt);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L298"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap++;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L299"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _assignNameSlots( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L227"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L228"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist != null) for (__0 => _name in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L229"
                while (_p._isCaptureSlot((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L230"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap++;
                };
                var _pos = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_name] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_name] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L234"
                _p._noteCaptureSlot((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap, _pos);
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L236"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._autocap++;
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L241"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capcount < (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._captop : Bool)) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist = (new stdgo.Slice<stdgo.GoInt>(((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capcount : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
            var _i = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L245"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null) for (_k => _ in (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist[(_i : stdgo.GoInt)] = _k;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L247"
                _i++;
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L250"
            stdgo._internal.sort.Sort_ints.ints((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L254"
        if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames != null) || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist != null) : Bool)) {
            var _oldcapnamelist:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
            var _next:stdgo.GoInt = (0 : stdgo.GoInt);
            var _k:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L259"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames == null) {
                _oldcapnamelist = (null : stdgo.Slice<stdgo.GoString>);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                _next = (-1 : stdgo.GoInt);
            } else {
                _oldcapnamelist = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist;
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                _next = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_oldcapnamelist[(0 : stdgo.GoInt)]] ?? (0 : stdgo.GoInt));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L270"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capcount : Bool)) {
                    var _j = @:assignType (_i : stdgo.GoInt);
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L272"
                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist != null) {
                        _j = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnumlist[(_i : stdgo.GoInt)];
                    };
//"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L276"
                    if (_next == (_j)) {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist.__append__(_oldcapnamelist[(_k : stdgo.GoInt)].__copy__()) : stdgo.Slice<stdgo.GoString>);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L278"
                        _k++;
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L280"
                        if (_k == ((_oldcapnamelist.length))) {
                            _next = (-1 : stdgo.GoInt);
                        } else {
                            _next = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_oldcapnamelist[(_k : stdgo.GoInt)]] ?? (0 : stdgo.GoInt));
                        };
                    } else {
                        var _str = @:assignType (stdgo._internal.strconv.Strconv_itoa.itoa(_j).__copy__() : stdgo.GoString);
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist.__append__(_str.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_str] = _j;
                    };
                    _i++;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _noteCaptureName( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _name:stdgo.GoString, _pos:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L216"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames == null) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
                x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L220"
        {
            var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_name?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnames[_name] = _pos;
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capnamelist.__append__(_name?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _noteCaptureSlot( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _i:stdgo.GoInt, _pos:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L200"
        {
            var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps.__exists__(_i) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps[_i], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), __0:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caps[_i] = _pos;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L203"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._capcount++;
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L205"
                if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._captop <= _i : Bool)) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L206"
                    if (_i == ((2147483647 : stdgo.GoInt))) {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._captop = _i;
                    } else {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._captop = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _getErr( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _code:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L196"
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ code : _code, expr : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._patternRaw?.__copy__(), args : _args } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_errordoterror.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_errordotError })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_errordoterror.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_errordotError }));
    }
    @:keep
    @:tdfield
    static public function _setPattern( _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser>, _pattern:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._patternRaw = _pattern?.__copy__();
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), (_pattern.length)).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L191"
        if (_pattern != null) for (__0 => _r in _pattern) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pattern.__append__(_r) : stdgo.Slice<stdgo.GoInt32>);
        };
    }
}
