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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2requestbody_static_extension.T_http2requestBody_static_extension) @:using(stdgo._internal.net.http.Http_t_http2requestbody_static_extension.T_http2requestBody_static_extension) class T_http2requestBody {
    @:optional
    public var __0 : stdgo._internal.net.http.Http_t_http2incomparable.T_http2incomparable = new stdgo._internal.net.http.Http_t_http2incomparable.T_http2incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _stream : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>);
    public var _conn : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
    public var _closeOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public var _sawEOF : Bool = false;
    public var _pipe : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
    public var _needsContinue : Bool = false;
    public function new(?__0:stdgo._internal.net.http.Http_t_http2incomparable.T_http2incomparable, ?_stream:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, ?_conn:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, ?_closeOnce:stdgo._internal.sync.Sync_once.Once, ?_sawEOF:Bool, ?_pipe:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>, ?_needsContinue:Bool) {
        if (__0 != null) this.__0 = __0;
        if (_stream != null) this._stream = _stream;
        if (_conn != null) this._conn = _conn;
        if (_closeOnce != null) this._closeOnce = _closeOnce;
        if (_sawEOF != null) this._sawEOF = _sawEOF;
        if (_pipe != null) this._pipe = _pipe;
        if (_needsContinue != null) this._needsContinue = _needsContinue;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2incomparabledott_http2incomparable.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2incomparabledotT_http2incomparable }, optional : false }, { name : "_stream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamdott_http2stream.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamdotT_http2stream }) }, optional : false }, { name : "_conn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn }) }, optional : false }, { name : "_closeOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }, { name : "_sawEOF", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_pipe", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pipedott_http2pipe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pipedotT_http2pipe }) }, optional : false }, { name : "_needsContinue", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }])));
    public function __copy__() {
        return new T_http2requestBody(__0, _stream, _conn, _closeOnce, _sawEOF, _pipe, _needsContinue);
    }
}
