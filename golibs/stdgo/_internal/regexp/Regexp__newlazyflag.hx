package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
function _newLazyFlag(_r1:stdgo.GoInt32, _r2:stdgo.GoInt32):stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag {
        //"file:///Users/o/.go/go1.21.3/src/regexp/exec.go#L125"
        return ((((_r1 : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_r2 : stdgo.GoUInt32) : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.regexp.Regexp_t_lazyflag.T_lazyFlag);
    }
