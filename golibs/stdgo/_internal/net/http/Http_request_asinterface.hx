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
class Request_asInterface {
    @:keep
    public dynamic function _requiresHTTP1():Bool return @:_0 __self__.value._requiresHTTP1();
    @:keep
    public dynamic function _outgoingLength():stdgo.GoInt64 return @:_0 __self__.value._outgoingLength();
    @:keep
    public dynamic function _isReplayable():Bool return @:_0 __self__.value._isReplayable();
    @:keep
    public dynamic function _closeBody():stdgo.Error return @:_0 __self__.value._closeBody();
    @:keep
    public dynamic function _wantsClose():Bool return @:_0 __self__.value._wantsClose();
    @:keep
    public dynamic function _wantsHttp10KeepAlive():Bool return @:_0 __self__.value._wantsHttp10KeepAlive();
    @:keep
    public dynamic function _expectsContinue():Bool return @:_0 __self__.value._expectsContinue();
    @:keep
    public dynamic function formFile(_key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } return @:_0 __self__.value.formFile(_key);
    @:keep
    public dynamic function postFormValue(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.postFormValue(_key);
    @:keep
    public dynamic function formValue(_key:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.formValue(_key);
    @:keep
    public dynamic function parseMultipartForm(_maxMemory:stdgo.GoInt64):stdgo.Error return @:_0 __self__.value.parseMultipartForm(_maxMemory);
    @:keep
    public dynamic function parseForm():stdgo.Error return @:_0 __self__.value.parseForm();
    @:keep
    public dynamic function setBasicAuth(_username:stdgo.GoString, _password:stdgo.GoString):Void @:_0 __self__.value.setBasicAuth(_username, _password);
    @:keep
    public dynamic function basicAuth():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:_0 __self__.value.basicAuth();
    @:keep
    public dynamic function _write(_w:stdgo._internal.io.Io_writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_header.Header, _waitForContinue:() -> Bool):stdgo.Error return @:_0 __self__.value._write(_w, _usingProxy, _extraHeaders, _waitForContinue);
    @:keep
    public dynamic function writeProxy(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.writeProxy(_w);
    @:keep
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    public dynamic function _isH2Upgrade():Bool return @:_0 __self__.value._isH2Upgrade();
    @:keep
    public dynamic function _multipartReader(_allowMixed:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_0 __self__.value._multipartReader(_allowMixed);
    @:keep
    public dynamic function multipartReader():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_0 __self__.value.multipartReader();
    @:keep
    public dynamic function referer():stdgo.GoString return @:_0 __self__.value.referer();
    @:keep
    public dynamic function addCookie(_c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void @:_0 __self__.value.addCookie(_c);
    @:keep
    public dynamic function cookie(_name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } return @:_0 __self__.value.cookie(_name);
    @:keep
    public dynamic function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_0 __self__.value.cookies();
    @:keep
    public dynamic function userAgent():stdgo.GoString return @:_0 __self__.value.userAgent();
    @:keep
    public dynamic function protoAtLeast(_major:stdgo.GoInt, _minor:stdgo.GoInt):Bool return @:_0 __self__.value.protoAtLeast(_major, _minor);
    @:keep
    public dynamic function clone(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_0 __self__.value.clone(_ctx);
    @:keep
    public dynamic function withContext(_ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_0 __self__.value.withContext(_ctx);
    @:keep
    public dynamic function context():stdgo._internal.context.Context_context.Context return @:_0 __self__.value.context();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_requestpointer.RequestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
