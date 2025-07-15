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
class Transport_asInterface {
    @:keep
    public dynamic function _dialConn(_ctx:stdgo._internal.context.Context_context.Context, _cm:stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._dialConn(_ctx, _cm);
    @:keep
    public dynamic function _decConnsPerHost(_key:stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey):Void @:_0 __self__.value._decConnsPerHost(_key);
    @:keep
    public dynamic function _dialConnFor(_w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Void @:_0 __self__.value._dialConnFor(_w);
    @:keep
    public dynamic function _queueForDial(_w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Void @:_0 __self__.value._queueForDial(_w);
    @:keep
    public dynamic function _getConn(_treq:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>, _cm:stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._getConn(_treq, _cm);
    @:keep
    public dynamic function _customDialTLS(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value._customDialTLS(_ctx, _network, _addr);
    @:keep
    public dynamic function _dial(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value._dial(_ctx, _network, _addr);
    @:keep
    public dynamic function _replaceReqCanceler(_key:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, _fn:stdgo.Error -> Void):Bool return @:_0 __self__.value._replaceReqCanceler(_key, _fn);
    @:keep
    public dynamic function _setReqCanceler(_key:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, _fn:stdgo.Error -> Void):Void @:_0 __self__.value._setReqCanceler(_key, _fn);
    @:keep
    public dynamic function _removeIdleConnLocked(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Bool return @:_0 __self__.value._removeIdleConnLocked(_pconn);
    @:keep
    public dynamic function _removeIdleConn(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Bool return @:_0 __self__.value._removeIdleConn(_pconn);
    @:keep
    public dynamic function _queueForIdleConn(_w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Bool return @:_0 __self__.value._queueForIdleConn(_w);
    @:keep
    public dynamic function _tryPutIdleConn(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):stdgo.Error return @:_0 __self__.value._tryPutIdleConn(_pconn);
    @:keep
    public dynamic function _maxIdleConnsPerHost():stdgo.GoInt return @:_0 __self__.value._maxIdleConnsPerHost();
    @:keep
    public dynamic function _putOrCloseIdleConn(_pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void @:_0 __self__.value._putOrCloseIdleConn(_pconn);
    @:keep
    public dynamic function _connectMethodForRequest(_treq:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>):{ var _0 : stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod; var _1 : stdgo.Error; } return @:_0 __self__.value._connectMethodForRequest(_treq);
    @:keep
    public dynamic function _cancelRequest(_key:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, _err:stdgo.Error):Bool return @:_0 __self__.value._cancelRequest(_key, _err);
    @:keep
    public dynamic function cancelRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void @:_0 __self__.value.cancelRequest(_req);
    @:keep
    public dynamic function closeIdleConnections():Void @:_0 __self__.value.closeIdleConnections();
    @:keep
    public dynamic function registerProtocol(_scheme:stdgo.GoString, _rt:stdgo._internal.net.http.Http_roundtripper.RoundTripper):Void @:_0 __self__.value.registerProtocol(_scheme, _rt);
    @:keep
    public dynamic function _roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value._roundTrip(_req);
    @:keep
    public dynamic function _alternateRoundTripper(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo._internal.net.http.Http_roundtripper.RoundTripper return @:_0 __self__.value._alternateRoundTripper(_req);
    @:keep
    public dynamic function _useRegisteredProtocol(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool return @:_0 __self__.value._useRegisteredProtocol(_req);
    @:keep
    public dynamic function _onceSetNextProtoDefaults():Void @:_0 __self__.value._onceSetNextProtoDefaults();
    @:keep
    public dynamic function _hasCustomTLSDialer():Bool return @:_0 __self__.value._hasCustomTLSDialer();
    @:keep
    public dynamic function clone():stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> return @:_0 __self__.value.clone();
    @:keep
    public dynamic function _readBufferSize():stdgo.GoInt return @:_0 __self__.value._readBufferSize();
    @:keep
    public dynamic function _writeBufferSize():stdgo.GoInt return @:_0 __self__.value._writeBufferSize();
    @:keep
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_req);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_transportpointer.TransportPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
