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
function _getFirstCharsPrefix(_tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix> {
        var _s = @:assignType ({ _fcStack : (new stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>((32 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((32 : stdgo.GoInt).toBasic() > 0 ? (32 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc)]) : stdgo.Slice<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc>), _intStack : (new stdgo.Slice<stdgo.GoInt>((32 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfcd.T_regexFcd);
        var _fc = _s._regexFCFromRegexTree(_tree);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L25"
        if (((({
            final value = _fc;
            (value == null || (value : Dynamic).__nil__);
        }) || (@:checkr _fc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nullable : Bool) || (@:checkr _fc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc.isEmpty() : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L26"
            return null;
        };
        var _fcSet = @:assignType (_fc._getFirstChars()?.__copy__() : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L29"
        return (stdgo.Go.setRef(({ prefixSet : _fcSet?.__copy__(), caseInsensitive : (@:checkr _fc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._caseInsensitive } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_prefixdotprefix.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_prefixdotPrefix })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix>);
    }
