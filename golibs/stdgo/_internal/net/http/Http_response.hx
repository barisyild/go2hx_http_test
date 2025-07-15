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
@:structInit @:using(stdgo._internal.net.http.Http_response_static_extension.Response_static_extension) @:using(stdgo._internal.net.http.Http_response_static_extension.Response_static_extension) class Response {
    public var status : stdgo.GoString = "";
    public var statusCode : stdgo.GoInt = 0;
    public var proto : stdgo.GoString = "";
    public var protoMajor : stdgo.GoInt = 0;
    public var protoMinor : stdgo.GoInt = 0;
    public var header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var body : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var contentLength : stdgo.GoInt64 = 0;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var close : Bool = false;
    public var uncompressed : Bool = false;
    public var trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var request : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    public var tLS : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public function new(?status:stdgo.GoString, ?statusCode:stdgo.GoInt, ?proto:stdgo.GoString, ?protoMajor:stdgo.GoInt, ?protoMinor:stdgo.GoInt, ?header:stdgo._internal.net.http.Http_header.Header, ?body:stdgo._internal.io.Io_readcloser.ReadCloser, ?contentLength:stdgo.GoInt64, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?close:Bool, ?uncompressed:Bool, ?trailer:stdgo._internal.net.http.Http_header.Header, ?request:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, ?tLS:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>) {
        if (status != null) this.status = status;
        if (statusCode != null) this.statusCode = statusCode;
        if (proto != null) this.proto = proto;
        if (protoMajor != null) this.protoMajor = protoMajor;
        if (protoMinor != null) this.protoMinor = protoMinor;
        if (header != null) this.header = header;
        if (body != null) this.body = body;
        if (contentLength != null) this.contentLength = contentLength;
        if (transferEncoding != null) this.transferEncoding = transferEncoding;
        if (close != null) this.close = close;
        if (uncompressed != null) this.uncompressed = uncompressed;
        if (trailer != null) this.trailer = trailer;
        if (request != null) this.request = request;
        if (tLS != null) this.tLS = tLS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "status", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "statusCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "proto", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "protoMajor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "protoMinor", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "body", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser }, optional : false },
{ name : "contentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "transferEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "close", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "uncompressed", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "trailer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "request", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }) }, optional : false },
{ name : "tLS", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState }) }, optional : false }])));
    public function __copy__() {
        return new Response(
status,
statusCode,
proto,
protoMajor,
protoMinor,
header,
body,
contentLength,
transferEncoding,
close,
uncompressed,
trailer,
request,
tLS);
    }
}
