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
class T_http2noDialH2RoundTripper_asInterface {
    @:keep
    public dynamic function roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTrip(_req);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _vlogf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._vlogf(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pingTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._pingTimeout();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newTLSConfig(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> return @:_0 __self__.value._newTLSConfig(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newClientConn(_0:stdgo._internal.net.Net_conn.Conn, _1:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._newClientConn(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _maxHeaderListSize():stdgo.GoUInt32 return @:_0 __self__.value._maxHeaderListSize();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _maxFrameReadSize():stdgo.GoUInt32 return @:_0 __self__.value._maxFrameReadSize();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _maxEncoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxEncoderHeaderTableSize();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _maxDecoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxDecoderHeaderTableSize();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _logf(_0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._logf(_0, ..._1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _initConnPool():Void @:_0 __self__.value._initConnPool();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _idleConnTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._idleConnTimeout();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _expectContinueTimeout():stdgo._internal.time.Time_duration.Duration return @:_0 __self__.value._expectContinueTimeout();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _disableKeepAlives():Bool return @:_0 __self__.value._disableKeepAlives();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _disableCompression():Bool return @:_0 __self__.value._disableCompression();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _dialTLSWithContext(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } return @:_0 __self__.value._dialTLSWithContext(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _dialTLS(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_0 __self__.value._dialTLS(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _dialClientConn(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value._dialClientConn(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _connPool():stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool return @:_0 __self__.value._connPool();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function roundTripOpt(_0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _1:stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value.roundTripOpt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function newClientConn(_0:stdgo._internal.net.Net_conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_0 __self__.value.newClientConn(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function closeIdleConnections():Void @:_0 __self__.value.closeIdleConnections();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2nodialh2roundtripperpointer.T_http2noDialH2RoundTripperPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
