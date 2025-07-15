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
@:structInit @:using(stdgo._internal.net.http.Http_t_requestandchan_static_extension.T_requestAndChan_static_extension) @:using(stdgo._internal.net.http.Http_t_requestandchan_static_extension.T_requestAndChan_static_extension) class T_requestAndChan {
    @:optional
    public var __0 : stdgo._internal.net.http.Http_t_incomparable.T_incomparable = new stdgo._internal.net.http.Http_t_incomparable.T_incomparable(0, 0, ...[for (i in 0 ... 0) null]);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    public var _cancelKey : stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey = ({} : stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey);
    public var _ch : stdgo.Chan<stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError>);
    public var _addedGzip : Bool = false;
    public var _continueCh : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _callerGone : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public function new(?__0:stdgo._internal.net.http.Http_t_incomparable.T_incomparable, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, ?_cancelKey:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, ?_ch:stdgo.Chan<stdgo._internal.net.http.Http_t_responseanderror.T_responseAndError>, ?_addedGzip:Bool, ?_continueCh:stdgo.Chan<{ }>, ?_callerGone:stdgo.Chan<{ }>) {
        if (__0 != null) this.__0 = __0;
        if (_req != null) this._req = _req;
        if (_cancelKey != null) this._cancelKey = _cancelKey;
        if (_ch != null) this._ch = _ch;
        if (_addedGzip != null) this._addedGzip = _addedGzip;
        if (_continueCh != null) this._continueCh = _continueCh;
        if (_callerGone != null) this._callerGone = _callerGone;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "__0", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_incomparabledott_incomparable.__type__stdgodot_internaldotnetdothttpdotHttp_t_incomparabledotT_incomparable }, optional : false }, { name : "_req", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }) }, optional : false }, { name : "_cancelKey", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_cancelkeydott_cancelkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_cancelkeydotT_cancelKey }, optional : false }, { name : "_ch", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_responseanderrordott_responseanderror.__type__stdgodot_internaldotnetdothttpdotHttp_t_responseanderrordotT_responseAndError }) }, optional : false }, { name : "_addedGzip", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_continueCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }, { name : "_callerGone", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false }])));
    public function __copy__() {
        return new T_requestAndChan(__0, _req, _cancelKey, _ch, _addedGzip, _continueCh, _callerGone);
    }
}
