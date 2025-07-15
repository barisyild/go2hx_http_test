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
@:structInit @:using(stdgo._internal.net.http.Http_request_static_extension.Request_static_extension) @:using(stdgo._internal.net.http.Http_request_static_extension.Request_static_extension) class Request {
    public var method : stdgo.GoString = "";
    public var uRL : stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    public var proto : stdgo.GoString = "";
    public var protoMajor : stdgo.GoInt = 0;
    public var protoMinor : stdgo.GoInt = 0;
    public var header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var body : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var getBody : () -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } = null;
    public var contentLength : stdgo.GoInt64 = 0;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var close : Bool = false;
    public var host : stdgo.GoString = "";
    public var form : stdgo._internal.net.url.Url_values.Values = (null : stdgo._internal.net.url.Url_values.Values);
    public var postForm : stdgo._internal.net.url.Url_values.Values = (null : stdgo._internal.net.url.Url_values.Values);
    public var multipartForm : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>);
    public var trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var remoteAddr : stdgo.GoString = "";
    public var requestURI : stdgo.GoString = "";
    public var tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public var cancel : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var response : stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?method:stdgo.GoString, ?uRL:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, ?proto:stdgo.GoString, ?protoMajor:stdgo.GoInt, ?protoMinor:stdgo.GoInt, ?header:stdgo._internal.net.http.Http_header.Header, ?body:stdgo._internal.io.Io_readcloser.ReadCloser, ?getBody:() -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; }, ?contentLength:stdgo.GoInt64, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?close:Bool, ?host:stdgo.GoString, ?form:stdgo._internal.net.url.Url_values.Values, ?postForm:stdgo._internal.net.url.Url_values.Values, ?multipartForm:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_form.Form>, ?trailer:stdgo._internal.net.http.Http_header.Header, ?remoteAddr:stdgo.GoString, ?requestURI:stdgo.GoString, ?tLS:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>, ?cancel:stdgo.Chan<{ }>, ?response:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, ?_ctx:stdgo._internal.context.Context_context.Context) {
        if (method != null) this.method = method;
        if (uRL != null) this.uRL = uRL;
        if (proto != null) this.proto = proto;
        if (protoMajor != null) this.protoMajor = protoMajor;
        if (protoMinor != null) this.protoMinor = protoMinor;
        if (header != null) this.header = header;
        if (body != null) this.body = body;
        if (getBody != null) this.getBody = getBody;
        if (contentLength != null) this.contentLength = contentLength;
        if (transferEncoding != null) this.transferEncoding = transferEncoding;
        if (close != null) this.close = close;
        if (host != null) this.host = host;
        if (form != null) this.form = form;
        if (postForm != null) this.postForm = postForm;
        if (multipartForm != null) this.multipartForm = multipartForm;
        if (trailer != null) this.trailer = trailer;
        if (remoteAddr != null) this.remoteAddr = remoteAddr;
        if (requestURI != null) this.requestURI = requestURI;
        if (tLS != null) this.tLS = tLS;
        if (cancel != null) this.cancel = cancel;
        if (response != null) this.response = response;
        if (_ctx != null) this._ctx = _ctx;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "method", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "uRL", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }) }, optional : false },
{ name : "proto", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "protoMajor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "protoMinor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "body", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser }, optional : false },
{ name : "getBody", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "contentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "transferEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "close", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "form", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_valuesdotvalues.__type__stdgodot_internaldotnetdoturldotUrl_valuesdotValues }, optional : false },
{ name : "postForm", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_valuesdotvalues.__type__stdgodot_internaldotnetdoturldotUrl_valuesdotValues }, optional : false },
{ name : "multipartForm", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmimedotmultipartdotmultipart_formdotform.__type__stdgodot_internaldotmimedotmultipartdotMultipart_formdotForm }) }, optional : false },
{ name : "trailer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "remoteAddr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "requestURI", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "tLS", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState }) }, optional : false },
{ name : "cancel", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "response", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }) }, optional : false },
{ name : "_ctx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false }])));
    public function __copy__() {
        return new Request(
method,
uRL,
proto,
protoMajor,
protoMinor,
header,
body,
getBody,
contentLength,
transferEncoding,
close,
host,
form,
postForm,
multipartForm,
trailer,
remoteAddr,
requestURI,
tLS,
cancel,
response,
_ctx);
    }
}
