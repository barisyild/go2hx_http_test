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
function parse(_re:stdgo.GoString, _op:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>; var _1 : stdgo.Error; } {
        var _p = @:assignType ({ _options : _op, _caps : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L157"
        _p._setPattern(_re?.__copy__());
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L159"
        {
            var _err = @:assignType (_p._countCaptures() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L160"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L163"
        _p._reset(_op);
        var __tmp__ = _p._scanRegex(), _root:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L166"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L167"
            return { _0 : null, _1 : _err };
        };
        var _tree = (stdgo.Go.setRef(({ _root : _root, _caps : _p._caps, _capnumlist : _p._capnumlist, _captop : _p._captop, capnames : _p._capnames, caplist : _p._capnamelist, _options : _op } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_regextreedotregextree.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_regextreedotRegexTree })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L179"
        if ((((@:checkr _tree ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options & (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) > (0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions) : Bool)) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L180"
            stdgo._internal.os.Os_stdout.stdout.writeString(_tree.dump()?.__copy__());
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L183"
        return { _0 : _tree, _1 : (null : stdgo.Error) };
    }
