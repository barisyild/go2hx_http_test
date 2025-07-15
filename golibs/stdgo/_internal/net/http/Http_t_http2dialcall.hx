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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2dialcall_static_extension.T_http2dialCall_static_extension) @:using(stdgo._internal.net.http.Http_t_http2dialcall_static_extension.T_http2dialCall_static_extension) class T_http2dialCall {
    @:optional
    public var __0 : stdgo._internal.net.http.Http_t_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_t_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _p : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>);
    public var _ctx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _done : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?__0:stdgo._internal.net.http.Http_t_http2incomparable.T_http2incomparable, ?_p:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>, ?_ctx:stdgo._internal.context.Context_context.Context, ?_done:stdgo.Chan<{ }>, ?_res:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>, ?_err:stdgo.Error) {
        if (__0 != null) this.__0 = __0;
        if (_p != null) this._p = _p;
        if (_ctx != null) this._ctx = _ctx;
        if (_done != null) this._done = _done;
        if (_res != null) this._res = _res;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2incomparabledott_http2incomparable.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2incomparabledotT_http2incomparable }, optional : false }, { name : "_p", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2clientConnPool }) }, optional : false }, { name : "_ctx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false }, { name : "_done", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_res", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new T_http2dialCall(__0, _p, _ctx, _done, _res, _err);
    }
}
