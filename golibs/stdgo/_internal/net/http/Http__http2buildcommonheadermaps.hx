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
function _http2buildCommonHeaderMaps():Void {
        var _common = (new stdgo.Slice<stdgo.GoString>(57, 57, ...[
("accept" : stdgo.GoString),
("accept-charset" : stdgo.GoString),
("accept-encoding" : stdgo.GoString),
("accept-language" : stdgo.GoString),
("accept-ranges" : stdgo.GoString),
("age" : stdgo.GoString),
("access-control-allow-credentials" : stdgo.GoString),
("access-control-allow-headers" : stdgo.GoString),
("access-control-allow-methods" : stdgo.GoString),
("access-control-allow-origin" : stdgo.GoString),
("access-control-expose-headers" : stdgo.GoString),
("access-control-max-age" : stdgo.GoString),
("access-control-request-headers" : stdgo.GoString),
("access-control-request-method" : stdgo.GoString),
("allow" : stdgo.GoString),
("authorization" : stdgo.GoString),
("cache-control" : stdgo.GoString),
("content-disposition" : stdgo.GoString),
("content-encoding" : stdgo.GoString),
("content-language" : stdgo.GoString),
("content-length" : stdgo.GoString),
("content-location" : stdgo.GoString),
("content-range" : stdgo.GoString),
("content-type" : stdgo.GoString),
("cookie" : stdgo.GoString),
("date" : stdgo.GoString),
("etag" : stdgo.GoString),
("expect" : stdgo.GoString),
("expires" : stdgo.GoString),
("from" : stdgo.GoString),
("host" : stdgo.GoString),
("if-match" : stdgo.GoString),
("if-modified-since" : stdgo.GoString),
("if-none-match" : stdgo.GoString),
("if-unmodified-since" : stdgo.GoString),
("last-modified" : stdgo.GoString),
("link" : stdgo.GoString),
("location" : stdgo.GoString),
("max-forwards" : stdgo.GoString),
("origin" : stdgo.GoString),
("proxy-authenticate" : stdgo.GoString),
("proxy-authorization" : stdgo.GoString),
("range" : stdgo.GoString),
("referer" : stdgo.GoString),
("refresh" : stdgo.GoString),
("retry-after" : stdgo.GoString),
("server" : stdgo.GoString),
("set-cookie" : stdgo.GoString),
("strict-transport-security" : stdgo.GoString),
("trailer" : stdgo.GoString),
("transfer-encoding" : stdgo.GoString),
("user-agent" : stdgo.GoString),
("vary" : stdgo.GoString),
("via" : stdgo.GoString),
("www-authenticate" : stdgo.GoString),
("x-forwarded-for" : stdgo.GoString),
("x-forwarded-proto" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.net.http.Http__http2commonlowerheader._http2commonLowerHeader = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        stdgo._internal.net.http.Http__http2commoncanonheader._http2commonCanonHeader = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3320"
        if (_common != null) for (__12 => _v in _common) {
            var _chk = @:assignType (stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_v?.__copy__())?.__copy__() : stdgo.GoString);
            stdgo._internal.net.http.Http__http2commonlowerheader._http2commonLowerHeader[_chk] = _v?.__copy__();
            stdgo._internal.net.http.Http__http2commoncanonheader._http2commonCanonHeader[_v] = _chk?.__copy__();
        };
    }
