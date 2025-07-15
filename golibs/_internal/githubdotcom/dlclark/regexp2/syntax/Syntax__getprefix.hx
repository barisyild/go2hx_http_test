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
function _getPrefix(_tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix> {
        var _concatNode:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var _nextChild = @:assignType (0 : stdgo.GoInt);
        var _curNode = (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L342"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L343"
            {
                final __value__ = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
                if (__value__ == ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L345"
                    if ((((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) > (0 : stdgo.GoInt) : Bool)) {
                        _concatNode = _curNode;
                        _nextChild = (0 : stdgo.GoInt);
                    };
                } else if (__value__ == ((32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    _curNode = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(0 : stdgo.GoInt)];
                    _concatNode = null;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L353"
                    continue;
                } else if (__value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L356"
                    if (((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m > (0 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L357"
                        return (stdgo.Go.setRef(({ prefixStr : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__repeat._repeat((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch, (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m), caseInsensitive : (((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_prefixdotprefix.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_prefixdotPrefix })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix>);
                    };
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L362"
                    return null;
                } else if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L365"
                    return (stdgo.Go.setRef(({ prefixStr : (new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>), caseInsensitive : (((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_prefixdotprefix.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_prefixdotPrefix })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix>);
                } else if (__value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L371"
                    return (stdgo.Go.setRef(({ prefixStr : (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str, caseInsensitive : (((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_prefixdotprefix.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_prefixdotPrefix })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix>);
                } else if (__value__ == ((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((30 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {} else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L380"
                    return null;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L383"
            if ((({
                final value = _concatNode;
                (value == null || (value : Dynamic).__nil__);
            }) || (_nextChild >= ((@:checkr _concatNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L384"
                return null;
            };
            _curNode = (@:checkr _concatNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_nextChild : stdgo.GoInt)];
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L388"
            _nextChild++;
        };
    }
