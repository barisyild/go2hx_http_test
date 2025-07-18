package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _parse(_rawURL:stdgo.GoString, _viaRequest:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        var _rest:stdgo.GoString = ("" : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L503"
        if (stdgo._internal.net.url.Url__stringcontainsctlbyte._stringContainsCTLByte(_rawURL?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L504"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("net/url: invalid control character in URL" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L507"
        if (((_rawURL == (stdgo.Go.str() : stdgo.GoString)) && _viaRequest : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L508"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("empty url" : stdgo.GoString)) };
        };
        var _url = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_url.URL), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L512"
        if (_rawURL == (("*" : stdgo.GoString))) {
            (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path = ("*" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L514"
            return { _0 : _url, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L519"
        {
            {
                var __tmp__ = stdgo._internal.net.url.Url__getscheme._getScheme(_rawURL?.__copy__());
                (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme = @:tmpset0 __tmp__._0?.__copy__();
                _rest = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L520"
                return { _0 : null, _1 : _err };
            };
        };
        (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme = stdgo._internal.strings.Strings_tolower.toLower((@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L524"
        if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_rest?.__copy__(), ("?" : stdgo.GoString)) && (stdgo._internal.strings.Strings_count.count(_rest?.__copy__(), ("?" : stdgo.GoString)) == (1 : stdgo.GoInt)) : Bool)) {
            (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).forceQuery = true;
            _rest = (_rest.__slice__(0, ((_rest.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rest?.__copy__(), ("?" : stdgo.GoString));
                _rest = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawQuery = @:tmpset0 __tmp__._1?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L531"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("/" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L532"
            if ((@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).opaque = _rest?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L535"
                return { _0 : _url, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L537"
            if (_viaRequest) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L538"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("invalid URI for request" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L547"
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rest?.__copy__(), ("/" : stdgo.GoString)), _segment:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
                if (stdgo._internal.strings.Strings_contains.contains(_segment?.__copy__(), (":" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L549"
                    return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("first path segment in URL cannot contain colon" : stdgo.GoString)) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L553"
        if ((((((@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != (stdgo.Go.str() : stdgo.GoString)) || (!_viaRequest && !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("///" : stdgo.GoString)) : Bool) : Bool)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("//" : stdgo.GoString)) : Bool)) {
            var _authority:stdgo.GoString = ("" : stdgo.GoString);
            {
                final __tmp__0 = (_rest.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                _authority = @:binopAssign __tmp__0;
                _rest = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L556"
            {
                var _i = @:assignType (stdgo._internal.strings.Strings_index.index(_authority?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = (_authority.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_authority.__slice__(_i) : stdgo.GoString)?.__copy__();
                        _authority = @:binopAssign __tmp__0;
                        _rest = @:binopAssign __tmp__1;
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.net.url.Url__parseauthority._parseAuthority(_authority?.__copy__());
                (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user = @:tmpset0 __tmp__._0;
                (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host = @:tmpset0 __tmp__._1?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L560"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L561"
                return { _0 : null, _1 : _err };
            };
        } else if ((((@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("/" : stdgo.GoString)) : Bool)) {
            (@:checkr _url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).omitHost = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L573"
        {
            var _err = @:assignType (_url._setPath(_rest?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L574"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L576"
        return { _0 : _url, _1 : (null : stdgo.Error) };
    }
