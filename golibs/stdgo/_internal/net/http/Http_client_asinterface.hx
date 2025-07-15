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
class Client_asInterface {
    @:keep
    public dynamic function closeIdleConnections():Void @:_0 __self__.value.closeIdleConnections();
    @:keep
    public dynamic function head(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.head(_url);
    @:keep
    public dynamic function postForm(_url:stdgo.GoString, _data:stdgo._internal.net.url.Url_values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.postForm(_url, _data);
    @:keep
    public dynamic function post(_url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.post(_url, _contentType, _body);
    @:keep
    public dynamic function _makeHeadersCopier(_ireq:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> -> Void return @:_0 __self__.value._makeHeadersCopier(_ireq);
    @:keep
    public dynamic function _do(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value._do(_req);
    @:keep
    public dynamic function do_(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.do_(_req);
    @:keep
    public dynamic function _checkRedirect(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _via:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_request.Request>>):stdgo.Error return @:_0 __self__.value._checkRedirect(_req, _via);
    @:keep
    public dynamic function get(_url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.get(_url);
    @:keep
    public dynamic function _transport():stdgo._internal.net.http.Http_roundtripper.RoundTripper return @:_0 __self__.value._transport();
    @:keep
    public dynamic function _deadline():stdgo._internal.time.Time_time.Time return @:_0 __self__.value._deadline();
    @:keep
    public dynamic function _send(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _deadline:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : () -> Bool; var _2 : stdgo.Error; } return @:_0 __self__.value._send(_req, _deadline);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_clientpointer.ClientPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
