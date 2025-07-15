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
function _isOnlyTopOption(_option:_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions):Bool {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1659"
        return ((_option == ((64 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) || _option == ((256 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : Bool) || (_option == (512 : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions)) : Bool);
    }
