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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2writeresheaders_static_extension.T_http2writeResHeaders_static_extension) @:using(stdgo._internal.net.http.Http_t_http2writeresheaders_static_extension.T_http2writeResHeaders_static_extension) class T_http2writeResHeaders {
    public var _streamID : stdgo.GoUInt32 = 0;
    public var _httpResCode : stdgo.GoInt = 0;
    public var _h : stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
    public var _trailers : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _endStream : Bool = false;
    public var _date : stdgo.GoString = "";
    public var _contentType : stdgo.GoString = "";
    public var _contentLength : stdgo.GoString = "";
    public function new(?_streamID:stdgo.GoUInt32, ?_httpResCode:stdgo.GoInt, ?_h:stdgo._internal.net.http.Http_header.Header, ?_trailers:stdgo.Slice<stdgo.GoString>, ?_endStream:Bool, ?_date:stdgo.GoString, ?_contentType:stdgo.GoString, ?_contentLength:stdgo.GoString) {
        if (_streamID != null) this._streamID = _streamID;
        if (_httpResCode != null) this._httpResCode = _httpResCode;
        if (_h != null) this._h = _h;
        if (_trailers != null) this._trailers = _trailers;
        if (_endStream != null) this._endStream = _endStream;
        if (_date != null) this._date = _date;
        if (_contentType != null) this._contentType = _contentType;
        if (_contentLength != null) this._contentLength = _contentLength;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_streamID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_httpResCode", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_h", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader }, optional : false }, { name : "_trailers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false }, { name : "_endStream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_date", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_contentType", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_contentLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new T_http2writeResHeaders(_streamID, _httpResCode, _h, _trailers, _endStream, _date, _contentType, _contentLength);
    }
}
