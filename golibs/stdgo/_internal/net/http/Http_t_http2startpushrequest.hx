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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2startpushrequest_static_extension.T_http2startPushRequest_static_extension) @:using(stdgo._internal.net.http.Http_t_http2startpushrequest_static_extension.T_http2startPushRequest_static_extension) class T_http2startPushRequest {
    public var _parent : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>);
    public var _method : stdgo.GoString = "";
    public var _url : stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
    public var _header : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _done : stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
    public function new(?_parent:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, ?_method:stdgo.GoString, ?_url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, ?_header:stdgo._internal.net.http.Http_header.Header, ?_done:stdgo.Chan<stdgo.Error>) {
        if (_parent != null) this._parent = _parent;
        if (_method != null) this._method = _method;
        if (_url != null) this._url = _url;
        if (_header != null) this._header = _header;
        if (_done != null) this._done = _done;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamdott_http2stream.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamdotT_http2stream }) }, optional : false }, { name : "_method", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_url", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }) }, optional : false }, { name : "_header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false }, { name : "_done", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }) }, optional : false }])));
    public function __copy__() {
        return new T_http2startPushRequest(_parent, _method, _url, _header, _done);
    }
}
