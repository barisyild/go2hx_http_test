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
function _isCookieDomainName(_s:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L333"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L334"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L336"
        if (((_s.length) > (255 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L337"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L340"
        if (_s[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        var _last = @:assignType ((46 : stdgo.GoUInt8) : stdgo.GoUInt8);
        var _ok = @:assignType (false : Bool);
        var _partlen = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L347"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L349"
                if (((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    _ok = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L355"
                    _partlen++;
                } else if ((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L358"
                    _partlen++;
                } else if (_c == ((45 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L361"
                    if (_last == ((46 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L362"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L364"
                    _partlen++;
                } else if (_c == ((46 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L367"
                    if (((_last == (46 : stdgo.GoUInt8)) || (_last == (45 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L368"
                        return false;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L370"
                    if (((_partlen > (63 : stdgo.GoInt) : Bool) || (_partlen == (0 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L371"
                        return false;
                    };
                    _partlen = (0 : stdgo.GoInt);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L351"
                    return false;
                };
_last = _c;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L377"
        if (((_last == (45 : stdgo.GoUInt8)) || (_partlen > (63 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L378"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L381"
        return _ok;
    }
