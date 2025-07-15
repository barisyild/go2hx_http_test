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
function _readCookies(_h:stdgo._internal.net.http.Http_header.Header, _filter:stdgo.GoString):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        var _lines = (_h[("Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L279"
        if ((_lines.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L280"
            return (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        };
        var _cookies = (new stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>((0 : stdgo.GoInt).toBasic(), ((_lines.length) + stdgo._internal.strings.Strings_count.count(_lines[(0 : stdgo.GoInt)]?.__copy__(), (";" : stdgo.GoString)) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L284"
        if (_lines != null) for (__12 => _line in _lines) {
            _line = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_line?.__copy__())?.__copy__();
            var _part:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L288"
            while (((_line.length) > (0 : stdgo.GoInt) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (";" : stdgo.GoString));
                    _part = @:tmpset0 __tmp__._0?.__copy__();
                    _line = @:tmpset0 __tmp__._1?.__copy__();
                };
                _part = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_part?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L291"
                if (_part == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L292"
                    continue;
                };
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_part?.__copy__(), ("=" : stdgo.GoString)), _name:stdgo.GoString = __tmp__._0, _val:stdgo.GoString = __tmp__._1, __13:Bool = __tmp__._2;
                _name = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_name?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L296"
                if (!stdgo._internal.net.http.Http__iscookienamevalid._isCookieNameValid(_name?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L297"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L299"
                if (((_filter != (stdgo.Go.str() : stdgo.GoString)) && (_filter != _name) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L300"
                    continue;
                };
                var __tmp__ = stdgo._internal.net.http.Http__parsecookievalue._parseCookieValue(_val?.__copy__(), true), _val:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L303"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L304"
                    continue;
                };
                _cookies = (_cookies.__append__((stdgo.Go.setRef(({ name : _name?.__copy__(), value : _val?.__copy__() } : stdgo._internal.net.http.Http_cookie.Cookie), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_cookiedotcookie.__type__stdgodot_internaldotnetdothttpdotHttp_cookiedotCookie })) : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L309"
        return _cookies;
    }
