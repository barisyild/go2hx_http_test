package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function parseRequestURI(_rawURL:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.url.Url__parse._parse(_rawURL?.__copy__(), true), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L489"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L490"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.url.Url_error.Error(("parse" : stdgo.GoString), _rawURL?.__copy__(), _err) : stdgo._internal.net.url.Url_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L492"
        return { _0 : _url, _1 : (null : stdgo.Error) };
    }
