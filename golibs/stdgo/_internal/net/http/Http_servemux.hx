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
@:structInit @:using(stdgo._internal.net.http.Http_servemux_static_extension.ServeMux_static_extension) @:using(stdgo._internal.net.http.Http_servemux_static_extension.ServeMux_static_extension) class ServeMux {
    public var _mu : stdgo._internal.sync.Sync_rwmutex.RWMutex = ({} : stdgo._internal.sync.Sync_rwmutex.RWMutex);
    public var _m : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_t_muxentry.T_muxEntry> = (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>);
    public var _es : stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry> = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>);
    public var _hosts : Bool = false;
    public function new(?_mu:stdgo._internal.sync.Sync_rwmutex.RWMutex, ?_m:stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>, ?_es:stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>, ?_hosts:Bool) {
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
        if (_es != null) this._es = _es;
        if (_hosts != null) this._hosts = _hosts;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_rwmutexdotrwmutex.__type__stdgodot_internaldotsyncdotSync_rwmutexdotRWMutex }, optional : false }, { name : "_m", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_muxentrydott_muxentry.__type__stdgodot_internaldotnetdothttpdotHttp_t_muxentrydotT_muxEntry }) }, optional : false }, { name : "_es", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_muxentrydott_muxentry.__type__stdgodot_internaldotnetdothttpdotHttp_t_muxentrydotT_muxEntry }) }, optional : false }, { name : "_hosts", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new ServeMux(_mu, _m, _es, _hosts);
    }
}
