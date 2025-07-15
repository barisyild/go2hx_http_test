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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2noDialH2RoundTripper_asInterface) class T_http2noDialH2RoundTripper_static_extension {
    @:keep
    @:tdfield
    static public function roundTrip( _rt:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _rt:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper = _rt?.__copy__();
        var __tmp__ = _rt._http2Transport.roundTrip(_req), _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10203"
        if (stdgo._internal.net.http.Http__http2isnocachedconnerror._http2isNoCachedConnError(_err)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10204"
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errskipaltprotocol.errSkipAltProtocol };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10206"
        return { _0 : _res, _1 : _err };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _vlogf( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__._vlogf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function _pingTimeout( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_duration.Duration return @:_5 __self__._pingTimeout();
    @:embedded
    @:embeddededffieldsffun
    public static function _newTLSConfig( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> return @:_5 __self__._newTLSConfig(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _newClientConn( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_conn.Conn, _1:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_5 __self__._newClientConn(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _maxHeaderListSize( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return @:_5 __self__._maxHeaderListSize();
    @:embedded
    @:embeddededffieldsffun
    public static function _maxFrameReadSize( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return @:_5 __self__._maxFrameReadSize();
    @:embedded
    @:embeddededffieldsffun
    public static function _maxEncoderHeaderTableSize( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return @:_5 __self__._maxEncoderHeaderTableSize();
    @:embedded
    @:embeddededffieldsffun
    public static function _maxDecoderHeaderTableSize( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo.GoUInt32 return @:_5 __self__._maxDecoderHeaderTableSize();
    @:embedded
    @:embeddededffieldsffun
    public static function _logf( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo.GoString, _1:haxe.Rest<stdgo.AnyInterface>):Void return @:_5 __self__._logf(_0, ...[for (i in _1) i]);
    @:embedded
    @:embeddededffieldsffun
    public static function _initConnPool( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Void return @:_5 __self__._initConnPool();
    @:embedded
    @:embeddededffieldsffun
    public static function _idleConnTimeout( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_duration.Duration return @:_5 __self__._idleConnTimeout();
    @:embedded
    @:embeddededffieldsffun
    public static function _expectContinueTimeout( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo._internal.time.Time_duration.Duration return @:_5 __self__._expectContinueTimeout();
    @:embedded
    @:embeddededffieldsffun
    public static function _disableKeepAlives( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Bool return @:_5 __self__._disableKeepAlives();
    @:embedded
    @:embeddededffieldsffun
    public static function _disableCompression( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Bool return @:_5 __self__._disableCompression();
    @:embedded
    @:embeddededffieldsffun
    public static function _dialTLSWithContext( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } return @:_5 __self__._dialTLSWithContext(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _dialTLS( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__._dialTLS(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _dialClientConn( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_5 __self__._dialClientConn(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _connPool( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool return @:_5 __self__._connPool();
    @:embedded
    @:embeddededffieldsffun
    public static function roundTripOpt( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _1:stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_5 __self__.roundTripOpt(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function newClientConn( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper, _0:stdgo._internal.net.Net_conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } return @:_5 __self__.newClientConn(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function closeIdleConnections( __self__:stdgo._internal.net.http.Http_t_http2nodialh2roundtripper.T_http2noDialH2RoundTripper):Void return @:_5 __self__.closeIdleConnections();
}
