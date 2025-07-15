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
@:structInit @:using(stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension) @:using(stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension) class T_transportRequest {
    @:embedded
    public var request : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    public var _extra : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _trace : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace> = (null : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>);
    public var _cancelKey : stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey = ({} : stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?request:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, ?_extra:stdgo._internal.net.http.Http_header.Header, ?_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>, ?_cancelKey:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_err:stdgo.Error) {
        if (request != null) this.request = request;
        if (_extra != null) this._extra = _extra;
        if (_trace != null) this._trace = _trace;
        if (_cancelKey != null) this._cancelKey = _cancelKey;
        if (_mu != null) this._mu = _mu;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "request", embedded : true, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }) }, optional : false }, { name : "_extra", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false }, { name : "_trace", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttptracedothttptrace_clienttracedotclienttrace.__type__stdgodot_internaldotnetdothttpdothttptracedotHttptrace_clienttracedotClientTrace }) }, optional : false }, { name : "_cancelKey", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_cancelkeydott_cancelkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_cancelkeydotT_cancelKey }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public var addCookie(get, never) : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_addCookie():stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> -> Void return @:check32 this.request.addCookie;
    public var basicAuth(get, never) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_basicAuth():() -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:check32 this.request.basicAuth;
    public var clone(get, never) : stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_clone():stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:check32 this.request.clone;
    public var context(get, never) : () -> stdgo._internal.context.Context_context.Context;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_context():() -> stdgo._internal.context.Context_context.Context return @:check32 this.request.context;
    public var cookie(get, never) : stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_cookie():stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } return @:check32 this.request.cookie;
    public var cookies(get, never) : () -> stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_cookies():() -> stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:check32 this.request.cookies;
    public var formFile(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_formFile():stdgo.GoString -> { var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } return @:check32 this.request.formFile;
    public var formValue(get, never) : stdgo.GoString -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_formValue():stdgo.GoString -> stdgo.GoString return @:check32 this.request.formValue;
    public var multipartReader(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_multipartReader():() -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:check32 this.request.multipartReader;
    public var parseForm(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_parseForm():() -> stdgo.Error return @:check32 this.request.parseForm;
    public var parseMultipartForm(get, never) : stdgo.GoInt64 -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_parseMultipartForm():stdgo.GoInt64 -> stdgo.Error return @:check32 this.request.parseMultipartForm;
    public var postFormValue(get, never) : stdgo.GoString -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_postFormValue():stdgo.GoString -> stdgo.GoString return @:check32 this.request.postFormValue;
    public var protoAtLeast(get, never) : (stdgo.GoInt, stdgo.GoInt) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_protoAtLeast():(stdgo.GoInt, stdgo.GoInt) -> Bool return @:check32 this.request.protoAtLeast;
    public var referer(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_referer():() -> stdgo.GoString return @:check32 this.request.referer;
    public var setBasicAuth(get, never) : (stdgo.GoString, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_setBasicAuth():(stdgo.GoString, stdgo.GoString) -> Void return @:check32 this.request.setBasicAuth;
    public var userAgent(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_userAgent():() -> stdgo.GoString return @:check32 this.request.userAgent;
    public var withContext(get, never) : stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request>;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_withContext():stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:check32 this.request.withContext;
    public var write(get, never) : stdgo._internal.io.Io_writer.Writer -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_write():stdgo._internal.io.Io_writer.Writer -> stdgo.Error return @:check32 this.request.write;
    public var writeProxy(get, never) : stdgo._internal.io.Io_writer.Writer -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_writeProxy():stdgo._internal.io.Io_writer.Writer -> stdgo.Error return @:check32 this.request.writeProxy;
    public var _closeBody(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__closeBody():() -> stdgo.Error return @:check32 this.request._closeBody;
    public var _expectsContinue(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__expectsContinue():() -> Bool return @:check32 this.request._expectsContinue;
    public var _isH2Upgrade(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__isH2Upgrade():() -> Bool return @:check32 this.request._isH2Upgrade;
    public var _isReplayable(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__isReplayable():() -> Bool return @:check32 this.request._isReplayable;
    public var _multipartReader(get, never) : Bool -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__multipartReader():Bool -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:check32 this.request._multipartReader;
    public var _outgoingLength(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__outgoingLength():() -> stdgo.GoInt64 return @:check32 this.request._outgoingLength;
    public var _requiresHTTP1(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__requiresHTTP1():() -> Bool return @:check32 this.request._requiresHTTP1;
    public var _wantsClose(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__wantsClose():() -> Bool return @:check32 this.request._wantsClose;
    public var _wantsHttp10KeepAlive(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__wantsHttp10KeepAlive():() -> Bool return @:check32 this.request._wantsHttp10KeepAlive;
    public var _write(get, never) : (stdgo._internal.io.Io_writer.Writer, Bool, stdgo._internal.net.http.Http_header.Header, () -> Bool) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get__write():(stdgo._internal.io.Io_writer.Writer, Bool, stdgo._internal.net.http.Http_header.Header, () -> Bool) -> stdgo.Error return @:check32 this.request._write;
    public function __copy__() {
        return new T_transportRequest(request, _extra, _trace, _cancelKey, _mu, _err);
    }
}
