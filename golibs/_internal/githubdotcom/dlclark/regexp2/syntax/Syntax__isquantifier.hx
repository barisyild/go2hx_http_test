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
function _isQuantifier(_ch:stdgo.GoInt32):Bool {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L2211"
        return (((_ch <= (123 : stdgo.GoInt32) : Bool) && (_internal.githubdotcom.dlclark.regexp2.syntax.Syntax___category.__category[(_ch : stdgo.GoInt)] >= (5 : stdgo.GoUInt8) : Bool) : Bool));
    }
