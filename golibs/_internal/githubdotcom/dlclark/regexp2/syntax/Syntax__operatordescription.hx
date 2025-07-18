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
function _operatorDescription(_op:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp):stdgo.GoString {
        var _desc = @:assignType (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax__codestr._codeStr[((_op & (63 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L158"
        if (((_op & (512 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _desc = (_desc + (("-Ci" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L161"
        if (((_op & (64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _desc = (_desc + (("-Rtl" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L164"
        if (((_op & (128 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _desc = (_desc + (("-Back" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L167"
        if (((_op & (256 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp) : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp)) != ((0 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp))) {
            _desc = (_desc + (("-Back2" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/code.go#L171"
        return _desc?.__copy__();
    }
