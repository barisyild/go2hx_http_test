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
@:structInit @:using(stdgo._internal.net.http.Http_t_connreader_static_extension.T_connReader_static_extension) @:using(stdgo._internal.net.http.Http_t_connreader_static_extension.T_connReader_static_extension) class T_connReader {
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>);
    public var _mu : stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
    public var _hasByte : Bool = false;
    public var _byteBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
    public var _cond : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = (null : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>);
    public var _inRead : Bool = false;
    public var _aborted : Bool = false;
    public var _remain : stdgo.GoInt64 = 0;
    public function new(?_conn:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, ?_mu:stdgo._internal.sync.Sync_mutex.Mutex, ?_hasByte:Bool, ?_byteBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_cond:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>, ?_inRead:Bool, ?_aborted:Bool, ?_remain:stdgo.GoInt64) {
        if (_conn != null) this._conn = _conn;
        if (_mu != null) this._mu = _mu;
        if (_hasByte != null) this._hasByte = _hasByte;
        if (_byteBuf != null) this._byteBuf = _byteBuf;
        if (_cond != null) this._cond = _cond;
        if (_inRead != null) this._inRead = _inRead;
        if (_aborted != null) this._aborted = _aborted;
        if (_remain != null) this._remain = _remain;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_conn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_conndott_conn.__type__stdgodot_internaldotnetdothttpdotHttp_t_conndotT_conn }) }, optional : false }, { name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex }, optional : false }, { name : "_hasByte", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_byteBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 1) }, optional : false }, { name : "_cond", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_conddotcond.__type__stdgodot_internaldotsyncdotSync_conddotCond }) }, optional : false }, { name : "_inRead", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_aborted", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_remain", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }])));
    public function __copy__() {
        return new T_connReader(_conn, _mu, _hasByte, _byteBuf, _cond, _inRead, _aborted, _remain);
    }
}
