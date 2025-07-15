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
function _parseCookieValue(_raw:stdgo.GoString, _allowDoubleQuote:Bool):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L452"
        if ((((_allowDoubleQuote && ((_raw.length) > (1 : stdgo.GoInt) : Bool) : Bool) && _raw[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8)) : Bool) && (_raw[((_raw.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (34 : stdgo.GoUInt8)) : Bool)) {
            _raw = (_raw.__slice__((1 : stdgo.GoInt), ((_raw.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L455"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_raw.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L456"
                if (!stdgo._internal.net.http.Http__validcookievaluebyte._validCookieValueByte(_raw[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L457"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : false };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L460"
        return { _0 : _raw?.__copy__(), _1 : true };
    }
