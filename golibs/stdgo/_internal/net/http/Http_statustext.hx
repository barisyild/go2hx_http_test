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
function statusText(_code:stdgo.GoInt):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L82"
        {
            final __value__ = _code;
            if (__value__ == ((100 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L84"
                return ("Continue" : stdgo.GoString);
            } else if (__value__ == ((101 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L86"
                return ("Switching Protocols" : stdgo.GoString);
            } else if (__value__ == ((102 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L88"
                return ("Processing" : stdgo.GoString);
            } else if (__value__ == ((103 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L90"
                return ("Early Hints" : stdgo.GoString);
            } else if (__value__ == ((200 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L92"
                return ("OK" : stdgo.GoString);
            } else if (__value__ == ((201 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L94"
                return ("Created" : stdgo.GoString);
            } else if (__value__ == ((202 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L96"
                return ("Accepted" : stdgo.GoString);
            } else if (__value__ == ((203 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L98"
                return ("Non-Authoritative Information" : stdgo.GoString);
            } else if (__value__ == ((204 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L100"
                return ("No Content" : stdgo.GoString);
            } else if (__value__ == ((205 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L102"
                return ("Reset Content" : stdgo.GoString);
            } else if (__value__ == ((206 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L104"
                return ("Partial Content" : stdgo.GoString);
            } else if (__value__ == ((207 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L106"
                return ("Multi-Status" : stdgo.GoString);
            } else if (__value__ == ((208 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L108"
                return ("Already Reported" : stdgo.GoString);
            } else if (__value__ == ((226 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L110"
                return ("IM Used" : stdgo.GoString);
            } else if (__value__ == ((300 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L112"
                return ("Multiple Choices" : stdgo.GoString);
            } else if (__value__ == ((301 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L114"
                return ("Moved Permanently" : stdgo.GoString);
            } else if (__value__ == ((302 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L116"
                return ("Found" : stdgo.GoString);
            } else if (__value__ == ((303 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L118"
                return ("See Other" : stdgo.GoString);
            } else if (__value__ == ((304 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L120"
                return ("Not Modified" : stdgo.GoString);
            } else if (__value__ == ((305 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L122"
                return ("Use Proxy" : stdgo.GoString);
            } else if (__value__ == ((307 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L124"
                return ("Temporary Redirect" : stdgo.GoString);
            } else if (__value__ == ((308 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L126"
                return ("Permanent Redirect" : stdgo.GoString);
            } else if (__value__ == ((400 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L128"
                return ("Bad Request" : stdgo.GoString);
            } else if (__value__ == ((401 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L130"
                return ("Unauthorized" : stdgo.GoString);
            } else if (__value__ == ((402 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L132"
                return ("Payment Required" : stdgo.GoString);
            } else if (__value__ == ((403 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L134"
                return ("Forbidden" : stdgo.GoString);
            } else if (__value__ == ((404 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L136"
                return ("Not Found" : stdgo.GoString);
            } else if (__value__ == ((405 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L138"
                return ("Method Not Allowed" : stdgo.GoString);
            } else if (__value__ == ((406 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L140"
                return ("Not Acceptable" : stdgo.GoString);
            } else if (__value__ == ((407 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L142"
                return ("Proxy Authentication Required" : stdgo.GoString);
            } else if (__value__ == ((408 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L144"
                return ("Request Timeout" : stdgo.GoString);
            } else if (__value__ == ((409 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L146"
                return ("Conflict" : stdgo.GoString);
            } else if (__value__ == ((410 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L148"
                return ("Gone" : stdgo.GoString);
            } else if (__value__ == ((411 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L150"
                return ("Length Required" : stdgo.GoString);
            } else if (__value__ == ((412 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L152"
                return ("Precondition Failed" : stdgo.GoString);
            } else if (__value__ == ((413 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L154"
                return ("Request Entity Too Large" : stdgo.GoString);
            } else if (__value__ == ((414 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L156"
                return ("Request URI Too Long" : stdgo.GoString);
            } else if (__value__ == ((415 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L158"
                return ("Unsupported Media Type" : stdgo.GoString);
            } else if (__value__ == ((416 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L160"
                return ("Requested Range Not Satisfiable" : stdgo.GoString);
            } else if (__value__ == ((417 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L162"
                return ("Expectation Failed" : stdgo.GoString);
            } else if (__value__ == ((418 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L164"
                return ("I\'m a teapot" : stdgo.GoString);
            } else if (__value__ == ((421 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L166"
                return ("Misdirected Request" : stdgo.GoString);
            } else if (__value__ == ((422 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L168"
                return ("Unprocessable Entity" : stdgo.GoString);
            } else if (__value__ == ((423 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L170"
                return ("Locked" : stdgo.GoString);
            } else if (__value__ == ((424 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L172"
                return ("Failed Dependency" : stdgo.GoString);
            } else if (__value__ == ((425 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L174"
                return ("Too Early" : stdgo.GoString);
            } else if (__value__ == ((426 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L176"
                return ("Upgrade Required" : stdgo.GoString);
            } else if (__value__ == ((428 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L178"
                return ("Precondition Required" : stdgo.GoString);
            } else if (__value__ == ((429 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L180"
                return ("Too Many Requests" : stdgo.GoString);
            } else if (__value__ == ((431 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L182"
                return ("Request Header Fields Too Large" : stdgo.GoString);
            } else if (__value__ == ((451 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L184"
                return ("Unavailable For Legal Reasons" : stdgo.GoString);
            } else if (__value__ == ((500 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L186"
                return ("Internal Server Error" : stdgo.GoString);
            } else if (__value__ == ((501 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L188"
                return ("Not Implemented" : stdgo.GoString);
            } else if (__value__ == ((502 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L190"
                return ("Bad Gateway" : stdgo.GoString);
            } else if (__value__ == ((503 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L192"
                return ("Service Unavailable" : stdgo.GoString);
            } else if (__value__ == ((504 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L194"
                return ("Gateway Timeout" : stdgo.GoString);
            } else if (__value__ == ((505 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L196"
                return ("HTTP Version Not Supported" : stdgo.GoString);
            } else if (__value__ == ((506 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L198"
                return ("Variant Also Negotiates" : stdgo.GoString);
            } else if (__value__ == ((507 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L200"
                return ("Insufficient Storage" : stdgo.GoString);
            } else if (__value__ == ((508 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L202"
                return ("Loop Detected" : stdgo.GoString);
            } else if (__value__ == ((510 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L204"
                return ("Not Extended" : stdgo.GoString);
            } else if (__value__ == ((511 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L206"
                return ("Network Authentication Required" : stdgo.GoString);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/status.go#L208"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
    }
