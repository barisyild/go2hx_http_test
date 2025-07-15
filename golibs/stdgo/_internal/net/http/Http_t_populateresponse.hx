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
@:structInit @:using(stdgo._internal.net.http.Http_t_populateresponse_static_extension.T_populateResponse_static_extension) @:using(stdgo._internal.net.http.Http_t_populateresponse_static_extension.T_populateResponse_static_extension) class T_populateResponse {
    public var _res : stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
    public var _ch : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>> = (null : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>>);
    public var _wroteHeader : Bool = false;
    public var _hasContent : Bool = false;
    public var _sentResponse : Bool = false;
    public var _pw : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = (null : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>);
    public function new(?_res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, ?_ch:stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>>, ?_wroteHeader:Bool, ?_hasContent:Bool, ?_sentResponse:Bool, ?_pw:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>) {
        if (_res != null) this._res = _res;
        if (_ch != null) this._ch = _ch;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_hasContent != null) this._hasContent = _hasContent;
        if (_sentResponse != null) this._sentResponse = _sentResponse;
        if (_pw != null) this._pw = _pw;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_res", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }) }, optional : false }, { name : "_ch", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }) }) }, optional : false }, { name : "_wroteHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_hasContent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_sentResponse", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_pw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_pipewriterdotpipewriter.__type__stdgodot_internaldotiodotIo_pipewriterdotPipeWriter }) }, optional : false }])));
    public function __copy__() {
        return new T_populateResponse(_res, _ch, _wroteHeader, _hasContent, _sentResponse, _pw);
    }
}
