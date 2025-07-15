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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension) @:using(stdgo._internal.net.http.Http_t_http2pipe_static_extension.T_http2pipe_static_extension) class T_http2pipe {
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _c : stdgo._internal.sync.Sync_cond.Cond = ({} : stdgo._internal.sync.Sync_cond.Cond);
    public var _b : stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer = (null : stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer);
    public var _unread : stdgo.GoInt = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _breakErr : stdgo.Error = (null : stdgo.Error);
    public var _donec : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _readFn : () -> Void = null;
    public function new(?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_c:stdgo._internal.sync.Sync_cond.Cond, ?_b:stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer, ?_unread:stdgo.GoInt, ?_err:stdgo.Error, ?_breakErr:stdgo.Error, ?_donec:stdgo.Chan<{ }>, ?_readFn:() -> Void) {
        if (_mu != null) this._mu = _mu;
        if (_c != null) this._c = _c;
        if (_b != null) this._b = _b;
        if (_unread != null) this._unread = _unread;
        if (_err != null) this._err = _err;
        if (_breakErr != null) this._breakErr = _breakErr;
        if (_donec != null) this._donec = _donec;
        if (_readFn != null) this._readFn = _readFn;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_c", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_conddotcond.__type__stdgodot_internaldotsyncdotSync_conddotCond }, optional : false }, { name : "_b", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pipebufferdott_http2pipebuffer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pipebufferdotT_http2pipeBuffer }, optional : false }, { name : "_unread", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_breakErr", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_donec", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_readFn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_http2pipe(_mu, _c, _b, _unread, _err, _breakErr, _donec, _readFn);
    }
}
