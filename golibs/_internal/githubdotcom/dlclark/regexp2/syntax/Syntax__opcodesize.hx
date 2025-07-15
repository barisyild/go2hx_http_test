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
function _opcodeSize(_op:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp):stdgo.GoInt {
        _op = (_op & ((63 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L122"
        {
            final __value__ = _op;
            if (__value__ == ((22 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((14 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((15 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((16 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((17 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((41 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((42 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((18 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((19 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((20 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((21 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((30 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((31 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((33 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((34 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((35 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((36 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((40 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L125"
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((9 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((10 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((12 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((13 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((37 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((38 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((26 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((27 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((23 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((24 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((25 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((39 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((11 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L129"
                return (2 : stdgo.GoInt);
            } else if (__value__ == ((32 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((28 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((29 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((1 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((3 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((4 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((6 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((7 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((8 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((2 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) || __value__ == ((5 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L133"
                return (3 : stdgo.GoInt);
            } else {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L136"
                throw ({
                    final __t__ = stdgo._internal.fmt.Fmt_errorf.errorf(("Unexpected op code: %v" : stdgo.GoString), new stdgo.AnyInterface(_op, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotsyntax_instopdotinstop.__type___internaldotgithubdotcomdotdlclarkdotregexp2dotsyntaxdotSyntax_instopdotInstOp)));
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                });
            };
        };
    }
