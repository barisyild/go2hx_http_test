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
function _getAnchors(_tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc {
        var _concatNode:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = (null : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode>);
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
var _result = __1, _nextChild = __0;
        var _curNode = (@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L807"
        while (true) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L808"
            {
                final __value__ = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
                if (__value__ == ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L810"
                    if ((((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) > (0 : stdgo.GoInt) : Bool)) {
                        _concatNode = _curNode;
                        _nextChild = (0 : stdgo.GoInt);
                    };
                } else if (__value__ == ((32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    _curNode = (@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(0 : stdgo.GoInt)];
                    _concatNode = null;
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L818"
                    continue;
                } else if (__value__ == ((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L822"
                    return (_result | _internal.githubdotcom.dlclark.regexp2.syntax.Syntax__anchorfromtype._anchorFromType((@:checkr _curNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
                } else if (__value__ == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((30 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType)) || __value__ == ((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {} else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L827"
                    return _result;
                };
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L830"
            if ((({
                final value = _concatNode;
                (value == null || (value : Dynamic).__nil__);
            }) || (_nextChild >= ((@:checkr _concatNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children.length) : Bool) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L831"
                return _result;
            };
            _curNode = (@:checkr _concatNode ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_nextChild : stdgo.GoInt)];
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L835"
            _nextChild++;
        };
    }
