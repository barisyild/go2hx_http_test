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
function _anchorFromType(_t:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType):_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L840"
        {
            final __value__ = _t;
            if (__value__ == ((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L842"
                return (2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L844"
                return (8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L846"
                return (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L848"
                return (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L850"
                return (1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L852"
                return (4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L854"
                return (16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else if (__value__ == ((21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L856"
                return (32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L858"
                return (0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc);
            };
        };
    }
