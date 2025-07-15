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
class T_http2Transport_asInterface {
    @:keep
    public dynamic function _idleConnTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._idleConnTimeout();
    @:keep
    public dynamic function _logf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_format, ..._args);
    @:keep
    public dynamic function _vlogf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._vlogf(_format, ..._args);
    @:keep
    public dynamic function _newClientConn(_c:stdgo._internal.net.Net_conn.Conn, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._newClientConn(_c, _singleUse);
    @:keep
    public dynamic function newClientConn(_c:stdgo._internal.net.Net_conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value.newClientConn(_c);
    @:keep
    public dynamic function _maxEncoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxEncoderHeaderTableSize();
    @:keep
    public dynamic function _maxDecoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxDecoderHeaderTableSize();
    @:keep
    public dynamic function _expectContinueTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._expectContinueTimeout();
    @:keep
    public dynamic function _disableKeepAlives():Bool return @:_0 __self__.value._disableKeepAlives();
    @:keep
    public dynamic function _dialTLS(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value._dialTLS(_ctx, _network, _addr, _tlsCfg);
    @:keep
    public dynamic function _newTLSConfig(_host:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> return @:_0 __self__.value._newTLSConfig(_host);
    @:keep
    public dynamic function _dialClientConn(_ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._dialClientConn(_ctx, _addr, _singleUse);
    @:keep
    public dynamic function closeIdleConnections():Void @:_0 __self__.value.closeIdleConnections();
    @:keep
    public dynamic function roundTripOpt(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _opt:stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTripOpt(_req, _opt);
    @:keep
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_req);
    @:keep
    public dynamic function _initConnPool():Void @:_0 __self__.value._initConnPool();
    @:keep
    public dynamic function _connPool():stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool return @:_0 __self__.value._connPool();
    @:keep
    public dynamic function _pingTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._pingTimeout();
    @:keep
    public dynamic function _disableCompression():Bool return @:_0 __self__.value._disableCompression();
    @:keep
    public dynamic function _maxFrameReadSize():stdgo.GoUInt32 return @:_0 __self__.value._maxFrameReadSize();
    @:keep
    public dynamic function _maxHeaderListSize():stdgo.GoUInt32 return @:_0 __self__.value._maxHeaderListSize();
    @:keep
    public dynamic function _dialTLSWithContext(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _cfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } return @:_0 __self__.value._dialTLSWithContext(_ctx, _network, _addr, _cfg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2transportpointer.T_http2TransportPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
