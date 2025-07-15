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
@:structInit @:using(stdgo._internal.net.http.Http_t_expectcontinuereader_static_extension.T_expectContinueReader_static_extension) @:using(stdgo._internal.net.http.Http_t_expectcontinuereader_static_extension.T_expectContinueReader_static_extension) class T_expectContinueReader {
    public var _resp : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
    public var _readCloser : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var _closed : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public var _sawEOF : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__bool_.Bool_);
    public function new(?_resp:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, ?_readCloser:stdgo._internal.io.Io_readcloser.ReadCloser, ?_closed:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_, ?_sawEOF:stdgo._internal.sync.atomic_.Atomic__bool_.Bool_) {
        if (_resp != null) this._resp = _resp;
        if (_readCloser != null) this._readCloser = _readCloser;
        if (_closed != null) this._closed = _closed;
        if (_sawEOF != null) this._sawEOF = _sawEOF;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_resp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_responsedott_response.__type__stdgodot_internaldotnetdothttpdotHttp_t_responsedotT_response }) }, optional : false }, { name : "_readCloser", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser }, optional : false }, { name : "_closed", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false }, { name : "_sawEOF", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotatomic_dotatomic__bool_dotbool_.__type__stdgodot_internaldotsyncdotatomic_dotAtomic__bool_dotBool_ }, optional : false }])));
    public function __copy__() {
        return new T_expectContinueReader(_resp, _readCloser, _closed, _sawEOF);
    }
}
