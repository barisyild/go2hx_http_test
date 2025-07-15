package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function parseQuery(_query:stdgo.GoString):{ var _0 : stdgo._internal.net.url.Url_values.Values; var _1 : stdgo.Error; } {
        var _m = @:assignType ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.url.Url_values.Values) : stdgo._internal.net.url.Url_values.Values);
        var _err = @:assignType (stdgo._internal.net.url.Url__parsequery._parseQuery(_m, _query?.__copy__()) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L929"
        return { _0 : _m, _1 : _err };
    }
