package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function parse(_rawURL:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rawURL?.__copy__(), ("#" : stdgo.GoString)), _u:stdgo.GoString = __tmp__._0, _frag:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        var __tmp__ = stdgo._internal.net.url.Url__parse._parse(_u?.__copy__(), false), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L470"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L471"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.url.Url_error.Error(("parse" : stdgo.GoString), _u?.__copy__(), _err) : stdgo._internal.net.url.Url_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L473"
        if (_frag == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L474"
            return { _0 : _url, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L476"
        {
            _err = _url._setFragment(_frag?.__copy__());
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L477"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.url.Url_error.Error(("parse" : stdgo.GoString), _rawURL?.__copy__(), _err) : stdgo._internal.net.url.Url_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_errordoterror.__type__stdgodot_internaldotnetdoturldotUrl_errordotError })) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L479"
        return { _0 : _url, _1 : (null : stdgo.Error) };
    }
