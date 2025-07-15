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
function _newRegexFc(_ch:stdgo.GoInt32, _not:Bool, _nullable:Bool, _caseInsensitive:Bool):_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc {
        var _r = @:assignType ({ _caseInsensitive : _caseInsensitive, _nullable : _nullable } : _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_t_regexfc.T_regexFc);
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L288"
        if (_not) {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L289"
            if ((_ch > (0 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L290"
                _r._cc._addRange((0 : stdgo.GoInt32), (_ch - (1 : stdgo.GoInt32) : stdgo.GoInt32));
            };
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L292"
            if ((_ch < (65535 : stdgo.GoInt32) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L293"
                _r._cc._addRange((_ch + (1 : stdgo.GoInt32) : stdgo.GoInt32), (1114111 : stdgo.GoInt32));
            };
        } else {
            //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L296"
            _r._cc._addRange(_ch, _ch);
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/prefix.go#L298"
        return _r?.__copy__();
    }
