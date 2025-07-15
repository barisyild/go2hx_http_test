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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode_static_extension.T_regexNode_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode_static_extension.T_regexNode_static_extension) class T_regexNode {
    public var _t : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType);
    public var _children : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>> = (null : stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>);
    public var _str : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _set : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>);
    public var _ch : stdgo.GoInt32 = 0;
    public var _m : stdgo.GoInt = 0;
    public var _n : stdgo.GoInt = 0;
    public var _options : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
    public var _next : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public function new(?_t:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType, ?_children:stdgo.Slice<stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>>, ?_str:stdgo.Slice<stdgo.GoInt32>, ?_set:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>, ?_ch:stdgo.GoInt32, ?_m:stdgo.GoInt, ?_n:stdgo.GoInt, ?_options:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions, ?_next:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>) {
        if (_t != null) this._t = _t;
        if (_children != null) this._children = _children;
        if (_str != null) this._str = _str;
        if (_set != null) this._set = _set;
        if (_ch != null) this._ch = _ch;
        if (_m != null) this._m = _m;
        if (_n != null) this._n = _n;
        if (_options != null) this._options = _options;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_t", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_nodetypedott_nodetype.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_nodetypedotT_nodeType }, optional : false }, { name : "_children", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }) }, optional : false }, { name : "_str", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }) }, optional : false }, { name : "_set", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_charsetdotcharset.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_charsetdotCharSet }) }, optional : false }, { name : "_ch", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false }, { name : "_m", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_n", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_options", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_regexoptionsdotregexoptions.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_regexoptionsdotRegexOptions }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }, optional : false }])));
    public function __copy__() {
        return new T_regexNode(_t, _children, _str, _set, _ch, _m, _n, _options, _next);
    }
}
