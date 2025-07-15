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
@:structInit @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree_static_extension.RegexTree_static_extension) @:using(_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree_static_extension.RegexTree_static_extension) class RegexTree {
    public var _root : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
    public var _caps : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
    public var _capnumlist : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _captop : stdgo.GoInt = 0;
    public var capnames : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public var caplist : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _options : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions = ((0 : stdgo.GoInt32) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions);
    public function new(?_root:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>, ?_caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, ?_capnumlist:stdgo.Slice<stdgo.GoInt>, ?_captop:stdgo.GoInt, ?capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, ?caplist:stdgo.Slice<stdgo.GoString>, ?_options:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) {
        if (_root != null) this._root = _root;
        if (_caps != null) this._caps = _caps;
        if (_capnumlist != null) this._capnumlist = _capnumlist;
        if (_captop != null) this._captop = _captop;
        if (capnames != null) this.capnames = capnames;
        if (caplist != null) this.caplist = caplist;
        if (_options != null) this._options = _options;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_root", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_t_regexnodedott_regexnode.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_t_regexnodedotT_regexNode }) }, optional : false }, { name : "_caps", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_capnumlist", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "_captop", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "capnames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }, { name : "caplist", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "_options", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_regexoptionsdotregexoptions.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_regexoptionsdotRegexOptions }, optional : false }])));
    public function __copy__() {
        return new RegexTree(_root, _caps, _capnumlist, _captop, capnames, caplist, _options);
    }
}
