package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function joinPath(_base:stdgo.GoString, _elem:haxe.Rest<stdgo.GoString>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        var _result = ("" : stdgo.GoString), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_base?.__copy__()), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1260"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1261"
            return { _0 : _result, _1 : _err };
        };
        _result = (_url.joinPath(...(_elem : Array<stdgo.GoString>)).string() : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1264"
        return { _0 : _result, _1 : _err };
    }
