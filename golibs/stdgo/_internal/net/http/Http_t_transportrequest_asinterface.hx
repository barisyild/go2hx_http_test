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
class T_transportRequest_asInterface {
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function _setError(_err:stdgo.Error):Void @:_0 __self__.value._setError(_err);
    @:keep
    public dynamic function _extraHeaders():stdgo._internal.net.http.Http_header.Header return @:_0 __self__.value._extraHeaders();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _write(_0:stdgo._internal.io.Io_writer.Writer, _1:Bool, _2:stdgo._internal.net.http.Http_header.Header, _3:() -> Bool):stdgo.Error return @:_0 __self__.value._write(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _wantsHttp10KeepAlive():Bool return @:_0 __self__.value._wantsHttp10KeepAlive();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _wantsClose():Bool return @:_0 __self__.value._wantsClose();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _requiresHTTP1():Bool return @:_0 __self__.value._requiresHTTP1();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _outgoingLength():stdgo.GoInt64 return @:_0 __self__.value._outgoingLength();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _multipartReader(_0:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_0 __self__.value._multipartReader(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isReplayable():Bool return @:_0 __self__.value._isReplayable();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isH2Upgrade():Bool return @:_0 __self__.value._isH2Upgrade();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _expectsContinue():Bool return @:_0 __self__.value._expectsContinue();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _closeBody():stdgo.Error return @:_0 __self__.value._closeBody();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function writeProxy(_0:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.writeProxy(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function write(_0:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function withContext(_0:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_0 __self__.value.withContext(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function userAgent():stdgo.GoString return @:_0 __self__.value.userAgent();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setBasicAuth(_0:stdgo.GoString, _1:stdgo.GoString):Void @:_0 __self__.value.setBasicAuth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function referer():stdgo.GoString return @:_0 __self__.value.referer();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function protoAtLeast(_0:stdgo.GoInt, _1:stdgo.GoInt):Bool return @:_0 __self__.value.protoAtLeast(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function postFormValue(_0:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.postFormValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function parseMultipartForm(_0:stdgo.GoInt64):stdgo.Error return @:_0 __self__.value.parseMultipartForm(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function parseForm():stdgo.Error return @:_0 __self__.value.parseForm();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function multipartReader():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_0 __self__.value.multipartReader();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function formValue(_0:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.formValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function formFile(_0:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } return @:_0 __self__.value.formFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_0 __self__.value.cookies();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function cookie(_0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } return @:_0 __self__.value.cookie(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function context():stdgo._internal.context.Context_context.Context return @:_0 __self__.value.context();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function clone(_0:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_0 __self__.value.clone(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function basicAuth():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:_0 __self__.value.basicAuth();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function addCookie(_0:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void @:_0 __self__.value.addCookie(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_transportrequestpointer.T_transportRequestPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
