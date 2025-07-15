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
function newReplacerData(_rep:stdgo.GoString, _caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, _capsize:stdgo.GoInt, _capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _op:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData>; var _1 : stdgo.Error; } {
        var _p = @:assignType ({ _options : _op, _caps : _caps, _capsize : _capsize, _capnames : _capnames } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_parser.T_parser);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L34"
        _p._setPattern(_rep?.__copy__());
        var __tmp__ = _p._scanReplacement(), _concat:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexnode.T_regexNode> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L36"
        if (_err != null) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L37"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L40"
        if ((@:checkr _concat ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t != ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L41"
            throw ({
                final __t__ = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errreplacementerror.errReplacementError;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        var _sb = (stdgo.Go.setRef((new stdgo._internal.bytes.Bytes_buffer.Buffer() : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _strings:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>), _rules:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L50"
        if ((@:checkr _concat ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children != null) for (__0 => _child in (@:checkr _concat ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L51"
            {
                final __value__ = (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t;
                if (__value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L53"
                    _child._writeStrToBuf(_sb);
                } else if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L56"
                    _sb.writeRune((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ch);
                } else if (__value__ == ((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_nodetype.T_nodeType))) {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L59"
                    if ((_sb.len() > (0 : stdgo.GoInt) : Bool)) {
                        _rules = (_rules.__append__((_strings.length)) : stdgo.Slice<stdgo.GoInt>);
                        _strings = (_strings.__append__((_sb.string() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L62"
                        _sb.reset();
                    };
                    var _slot = @:assignType ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._m : stdgo.GoInt);
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L66"
                    if ((((_caps.length) > (0 : stdgo.GoInt) : Bool) && (_slot >= (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _slot = (_caps[_slot] ?? (0 : stdgo.GoInt));
                    };
                    _rules = (_rules.__append__(((-5 : stdgo.GoInt) - _slot : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                } else {
                    //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L73"
                    throw ({
                        final __t__ = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errreplacementerror.errReplacementError;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    });
                };
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L77"
        if ((_sb.len() > (0 : stdgo.GoInt) : Bool)) {
            _rules = (_rules.__append__((_strings.length)) : stdgo.Slice<stdgo.GoInt>);
            _strings = (_strings.__append__((_sb.string() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/replacerdata.go#L82"
        return { _0 : (stdgo.Go.setRef(({ rep : _rep?.__copy__(), strings : _strings, rules : _rules } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_replacerdatadotreplacerdata.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_replacerdatadotReplacerData })) : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData>), _1 : (null : stdgo.Error) };
    }
