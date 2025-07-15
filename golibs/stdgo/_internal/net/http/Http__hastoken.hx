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
function _hasToken(_v:stdgo.GoString, _token:stdgo.GoString):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L247"
        if ((((_token.length) > (_v.length) : Bool) || (_token == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L248"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L250"
        if (_v == (_token)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L251"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L253"
        {
            var _sp = @:assignType (0 : stdgo.GoInt);
            while ((_sp <= ((_v.length) - (_token.length) : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L260"
                {
                    var _b = @:assignType (_v[(_sp : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (((_b != _token[(0 : stdgo.GoInt)]) && ((_b | (32 : stdgo.GoUInt8) : stdgo.GoUInt8) != _token[(0 : stdgo.GoInt)]) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L261"
                        {
                            _sp++;
                            continue;
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L264"
                if (((_sp > (0 : stdgo.GoInt) : Bool) && !stdgo._internal.net.http.Http__istokenboundary._isTokenBoundary(_v[(_sp - (1 : stdgo.GoInt) : stdgo.GoInt)]) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L265"
                    {
                        _sp++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L268"
                {
                    var _endPos = @:assignType (_sp + (_token.length) : stdgo.GoInt);
                    if (((_endPos != (_v.length)) && !stdgo._internal.net.http.Http__istokenboundary._isTokenBoundary(_v[(_endPos : stdgo.GoInt)]) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L269"
                        {
                            _sp++;
                            continue;
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L271"
                if (stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold((_v.__slice__(_sp, (_sp + (_token.length) : stdgo.GoInt)) : stdgo.GoString).__copy__(), _token.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L272"
                    return true;
                };
                _sp++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/header.go#L275"
        return false;
    }
