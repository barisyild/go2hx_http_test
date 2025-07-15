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
@:interface typedef T_http2ClientConnPool = stdgo.StructType & {
    /**
        * GetClientConn returns a specific HTTP/2 connection (usually
        * a TLS-TCP connection) to an HTTP/2 server. On success, the
        * returned ClientConn accounts for the upcoming RoundTrip
        * call, so the caller should not omit it. If the caller needs
        * to, ClientConn.RoundTrip can be called with a bogus
        * new(http.Request) to release the stream reservation.
        
        
    **/
    @:interfacetypeffun
    public dynamic function getClientConn(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _addr:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; };
    /**
        
        
        
    **/
    @:interfacetypeffun
    public dynamic function markDead(_0:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>):Void;
};
@:structInit @:using(stdgo._internal.net.http.Http_t_http2clientconnpool_static_extension.T_http2clientConnPool_static_extension) @:using(stdgo._internal.net.http.Http_t_http2clientconnpool_static_extension.T_http2clientConnPool_static_extension) class T_http2clientConnPool {
    public var _t : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _conns : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>>);
    public var _dialing : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>>);
    public var _keys : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>);
    public var _addConnCalls : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>>);
    public function new(?_t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_conns:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>>>, ?_dialing:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>>, ?_keys:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, stdgo.Slice<stdgo.GoString>>, ?_addConnCalls:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.net.http.Http_t_http2addconncall.T_http2addConnCall>>) {
        if (_t != null) this._t = _t;
        if (_mu != null) this._mu = _mu;
        if (_conns != null) this._conns = _conns;
        if (_dialing != null) this._dialing = _dialing;
        if (_keys != null) this._keys = _keys;
        if (_addConnCalls != null) this._addConnCalls = _addConnCalls;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_t", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2transportdott_http2transport.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2transportdotT_http2Transport }) }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_conns", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }) }) }) }, optional : false }, { name : "_dialing", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2dialcalldott_http2dialcall.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2dialcalldotT_http2dialCall }) }) }, optional : false }, { name : "_keys", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }) }, { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }) }, optional : false }, { name : "_addConnCalls", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2addconncalldott_http2addconncall.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2addconncalldotT_http2addConnCall }) }) }, optional : false }])));
    public function __copy__() {
        return new T_http2clientConnPool(_t, _mu, _conns, _dialing, _keys, _addConnCalls);
    }
}
