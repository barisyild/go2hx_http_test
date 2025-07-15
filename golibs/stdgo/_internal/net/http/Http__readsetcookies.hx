package stdgo._internal.net.http;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.sort.Sort;
import stdgo._internal.mime.Mime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.multipart.Multipart;
import stdgo._internal.path.Path;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.bytes.Bytes;
import _internal.golangdotorg.x.net.http.httpguts.Httpguts;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.net.url.Url;
import _internal.golangdotorg.x.net.http.httpproxy.Httpproxy;
import _internal.golangdotorg.x.net.http2.hpack.Hpack;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sync.Sync;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.container.list.List;
import stdgo._internal.internal.safefilepath.Safefilepath;
function _readSetCookies(_h:stdgo._internal.net.http.Http_header.Header):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        var _cookieCount = @:assignType ((_h[("Set-Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)).length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L62"
        if (_cookieCount == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L63"
            return (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        };
        var _cookies = (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>((0 : stdgo.GoInt).toBasic(), _cookieCount) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L66"
        if ((_h[("Set-Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)) != null) for (__12 => _line in (_h[("Set-Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            var _parts = stdgo._internal.strings.Strings_split.split(stdgo._internal.net.textproto.Textproto_trimstring.trimString(_line?.__copy__())?.__copy__(), (";" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L68"
            if (((_parts.length == (1 : stdgo.GoInt)) && (_parts[(0 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L69"
                continue;
            };
            _parts[(0 : stdgo.GoInt)] = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_parts[(0 : stdgo.GoInt)]?.__copy__())?.__copy__();
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_parts[(0 : stdgo.GoInt)]?.__copy__(), ("=" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L73"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L74"
                continue;
            };
            _name = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_name?.__copy__())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L77"
            if (!stdgo._internal.net.http.Http__iscookienamevalid._isCookieNameValid(_name?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L78"
                continue;
            };
            {
                var __tmp__ = stdgo._internal.net.http.Http__parsecookievalue._parseCookieValue(_value?.__copy__(), true);
                _value = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L81"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L82"
                continue;
            };
            var _c = (stdgo.Go.setRef(({ name : _name?.__copy__(), value : _value?.__copy__(), raw : _line?.__copy__() } : stdgo._internal.net.http.Http_cookie.Cookie), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_cookiedotcookie.__type__stdgodot_internaldotnetdothttpdotHttp_cookiedotCookie })) : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L89"
            {
                var _i = @:assignType (1 : stdgo.GoInt);
                while ((_i < (_parts.length) : Bool)) {
                    _parts[(_i : stdgo.GoInt)] = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_parts[(_i : stdgo.GoInt)].__copy__()).__copy__();
//"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L91"
                    if ((_parts[(_i : stdgo.GoInt)].length) == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L92"
                        {
                            _i++;
                            continue;
                        };
                    };
var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_parts[(_i : stdgo.GoInt)].__copy__(), ("=" : stdgo.GoString)), _attr:stdgo.GoString = __tmp__._0, _val:stdgo.GoString = __tmp__._1, __13:Bool = __tmp__._2;
var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_tolower.toLower(_attr.__copy__()), _lowerAttr:stdgo.GoString = __tmp__._0, _isASCII:Bool = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L97"
                    if (!_isASCII) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L98"
                        {
                            _i++;
                            continue;
                        };
                    };
{
                        var __tmp__ = stdgo._internal.net.http.Http__parsecookievalue._parseCookieValue(_val.__copy__(), false);
                        _val = @:tmpset0 __tmp__._0.__copy__();
                        _ok = @:tmpset0 __tmp__._1;
                    };
//"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L101"
                    if (!_ok) {
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unparsed = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unparsed.__append__(_parts[(_i : stdgo.GoInt)].__copy__()) : stdgo.Slice<stdgo.GoString>);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L103"
                        {
                            _i++;
                            continue;
                        };
                    };
//"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L106"
                    {
                        var __continue__ = false;
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _lowerAttr;
                                if (__value__ == (("samesite" : stdgo.GoString))) {
                                    var __tmp__ = stdgo._internal.net.http.internal.ascii.Ascii_tolower.toLower(_val?.__copy__()), _lowerVal:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L109"
                                    if (!_ascii) {
                                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sameSite = (1 : stdgo._internal.net.http.Http_samesite.SameSite);
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L111"
                                        {
                                            __continue__ = true;
                                            break;
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L113"
                                    {
                                        final __value__ = _lowerVal;
                                        if (__value__ == (("lax" : stdgo.GoString))) {
                                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sameSite = (2 : stdgo._internal.net.http.Http_samesite.SameSite);
                                        } else if (__value__ == (("strict" : stdgo.GoString))) {
                                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sameSite = (3 : stdgo._internal.net.http.Http_samesite.SameSite);
                                        } else if (__value__ == (("none" : stdgo.GoString))) {
                                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sameSite = (4 : stdgo._internal.net.http.Http_samesite.SameSite);
                                        } else {
                                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sameSite = (1 : stdgo._internal.net.http.Http_samesite.SameSite);
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L123"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("secure" : stdgo.GoString))) {
                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).secure = true;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L126"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("httponly" : stdgo.GoString))) {
                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).httpOnly = true;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L129"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("domain" : stdgo.GoString))) {
                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).domain = _val?.__copy__();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L132"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("max-age" : stdgo.GoString))) {
                                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_val?.__copy__()), _secs:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L135"
                                    if (((_err != null) || (_secs != ((0 : stdgo.GoInt)) && _val[(0 : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L136"
                                        break;
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L138"
                                    if ((_secs <= (0 : stdgo.GoInt) : Bool)) {
                                        _secs = (-1 : stdgo.GoInt);
                                    };
                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxAge = _secs;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L142"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("expires" : stdgo.GoString))) {
                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).rawExpires = _val?.__copy__();
                                    var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon, 02 Jan 2006 15:04:05 MST" : stdgo.GoString), _val?.__copy__()), _exptime:stdgo._internal.time.Time_time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L146"
                                    if (_err != null) {
                                        {
                                            var __tmp__ = stdgo._internal.time.Time_parse.parse(("Mon, 02-Jan-2006 15:04:05 MST" : stdgo.GoString), _val?.__copy__());
                                            _exptime = @:tmpset0 __tmp__._0?.__copy__();
                                            _err = @:tmpset0 __tmp__._1;
                                        };
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L148"
                                        if (_err != null) {
                                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expires = (new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time);
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L150"
                                            break;
                                        };
                                    };
                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expires = _exptime.uTC()?.__copy__();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L154"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                } else if (__value__ == (("path" : stdgo.GoString))) {
                                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path = _val?.__copy__();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L157"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                        if (__continue__) {
                            _i++;
                            continue;
                        };
                    };
(@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unparsed = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__()).unparsed.__append__(_parts[(_i : stdgo.GoInt)].__copy__()) : stdgo.Slice<stdgo.GoString>);
                    _i++;
                };
            };
            _cookies = (_cookies.__append__(_c) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L163"
        return _cookies;
    }
