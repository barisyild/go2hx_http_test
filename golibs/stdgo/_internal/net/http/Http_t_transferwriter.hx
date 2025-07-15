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
@:structInit @:using(stdgo._internal.net.http.Http_t_transferwriter_static_extension.T_transferWriter_static_extension) @:using(stdgo._internal.net.http.Http_t_transferwriter_static_extension.T_transferWriter_static_extension) class T_transferWriter {
    public var method : stdgo.GoString = "";
    public var body : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var bodyCloser : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public var responseToHEAD : Bool = false;
    public var contentLength : stdgo.GoInt64 = 0;
    public var close : Bool = false;
    public var transferEncoding : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var trailer : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var isResponse : Bool = false;
    public var _bodyReadError : stdgo.Error = (null : stdgo.Error);
    public var flushHeaders : Bool = false;
    public var byteReadCh : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>);
    public function new(?method:stdgo.GoString, ?body:stdgo._internal.io.Io_reader.Reader, ?bodyCloser:stdgo._internal.io.Io_closer.Closer, ?responseToHEAD:Bool, ?contentLength:stdgo.GoInt64, ?close:Bool, ?transferEncoding:stdgo.Slice<stdgo.GoString>, ?header:stdgo._internal.net.http.Http_header.Header, ?trailer:stdgo._internal.net.http.Http_header.Header, ?isResponse:Bool, ?_bodyReadError:stdgo.Error, ?flushHeaders:Bool, ?byteReadCh:stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>) {
        if (method != null) this.method = method;
        if (body != null) this.body = body;
        if (bodyCloser != null) this.bodyCloser = bodyCloser;
        if (responseToHEAD != null) this.responseToHEAD = responseToHEAD;
        if (contentLength != null) this.contentLength = contentLength;
        if (close != null) this.close = close;
        if (transferEncoding != null) this.transferEncoding = transferEncoding;
        if (header != null) this.header = header;
        if (trailer != null) this.trailer = trailer;
        if (isResponse != null) this.isResponse = isResponse;
        if (_bodyReadError != null) this._bodyReadError = _bodyReadError;
        if (flushHeaders != null) this.flushHeaders = flushHeaders;
        if (byteReadCh != null) this.byteReadCh = byteReadCh;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "method", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "body", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false },
{ name : "bodyCloser", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_closerdotcloser.__type__stdgodot_internaldotiodotIo_closerdotCloser }, optional : false },
{ name : "responseToHEAD", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "contentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false },
{ name : "close", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "transferEncoding", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "trailer", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false },
{ name : "isResponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_bodyReadError", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "flushHeaders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "byteReadCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readresultdott_readresult.__type__stdgodot_internaldotnetdothttpdotHttp_t_readresultdotT_readResult }) }, optional : false }])));
    public function __copy__() {
        return new T_transferWriter(
method,
body,
bodyCloser,
responseToHEAD,
contentLength,
close,
transferEncoding,
header,
trailer,
isResponse,
_bodyReadError,
flushHeaders,
byteReadCh);
    }
}
