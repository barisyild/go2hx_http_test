package _internal.githubdotcom.dlclark.regexp2;
import stdgo._internal.regexp.Regexp;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.log.Log;
import _internal.githubdotcom.dlclark.regexp2.syntax.Syntax;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.errors.Errors;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.unicode.Unicode;
function _hexDigit(_ch:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L364"
        {
            var _d = @:assignType ((_ch - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
            if ((_d <= (9u32 : stdgo.GoUInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L365"
                return (_d : stdgo.GoInt);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L368"
        {
            var _d = @:assignType ((_ch - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L369"
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L372"
        {
            var _d = @:assignType ((_ch - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L373"
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/regexp_pcre_test.go#L376"
        return (-1 : stdgo.GoInt);
    }
