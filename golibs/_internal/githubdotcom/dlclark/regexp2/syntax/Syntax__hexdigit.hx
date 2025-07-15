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
function _hexDigit(_ch:stdgo.GoInt32):stdgo.GoInt {
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1836"
        {
            var _d = @:assignType ((_ch - (48 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt);
            if ((_d <= (9u32 : stdgo.GoUInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1837"
                return (_d : stdgo.GoInt);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1840"
        {
            var _d = @:assignType ((_ch - (97 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1841"
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1844"
        {
            var _d = @:assignType ((_ch - (65 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt);
            if ((_d <= (5u32 : stdgo.GoUInt) : Bool)) {
                //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1845"
                return ((_d + (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/go/pkg/mod/github.com/dlclark/regexp2@v1.11.5/syntax/parser.go#L1848"
        return (-1 : stdgo.GoInt);
    }
