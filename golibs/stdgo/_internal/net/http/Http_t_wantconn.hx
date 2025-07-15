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
@:structInit @:using(stdgo._internal.net.http.Http_t_wantconn_static_extension.T_wantConn_static_extension) @:using(stdgo._internal.net.http.Http_t_wantconn_static_extension.T_wantConn_static_extension) class T_wantConn {
    public var _cm : stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod = ({} : stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod);
    public var _key : stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey = ({} : stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _ready : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _beforeDial : () -> Void = null;
    public var _afterDial : () -> Void = null;
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _pc : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_cm:stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod, ?_key:stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, ?_ctx:stdgo._internal.context.Context_context.Context, ?_ready:stdgo.Chan<{ }>, ?_beforeDial:() -> Void, ?_afterDial:() -> Void, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>, ?_err:stdgo.Error) {
        if (_cm != null) this._cm = _cm;
        if (_key != null) this._key = _key;
        if (_ctx != null) this._ctx = _ctx;
        if (_ready != null) this._ready = _ready;
        if (_beforeDial != null) this._beforeDial = _beforeDial;
        if (_afterDial != null) this._afterDial = _afterDial;
        if (_mu != null) this._mu = _mu;
        if (_pc != null) this._pc = _pc;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_cm", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethoddott_connectmethod.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethoddotT_connectMethod }, optional : false }, { name : "_key", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey }, optional : false }, { name : "_ctx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false }, { name : "_ready", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_beforeDial", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_afterDial", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_pc", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn }) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_wantConn(_cm, _key, _ctx, _ready, _beforeDial, _afterDial, _mu, _pc, _err);
    }
}
