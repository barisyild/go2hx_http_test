package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function queryUnescape(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L184"
        return stdgo._internal.net.url.Url__unescape._unescape(_s?.__copy__(), (6 : stdgo._internal.net.url.Url_t_encoding.T_encoding));
    }
