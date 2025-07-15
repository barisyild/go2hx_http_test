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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2headersframeparam_static_extension.T_http2HeadersFrameParam_static_extension) @:using(stdgo._internal.net.http.Http_t_http2headersframeparam_static_extension.T_http2HeadersFrameParam_static_extension) class T_http2HeadersFrameParam {
    public var streamID : stdgo.GoUInt32 = 0;
    public var blockFragment : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var endStream : Bool = false;
    public var endHeaders : Bool = false;
    public var padLength : stdgo.GoUInt8 = 0;
    public var priority : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam = ({} : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam);
    public function new(?streamID:stdgo.GoUInt32, ?blockFragment:stdgo.Slice<stdgo.GoUInt8>, ?endStream:Bool, ?endHeaders:Bool, ?padLength:stdgo.GoUInt8, ?priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam) {
        if (streamID != null) this.streamID = streamID;
        if (blockFragment != null) this.blockFragment = blockFragment;
        if (endStream != null) this.endStream = endStream;
        if (endHeaders != null) this.endHeaders = endHeaders;
        if (padLength != null) this.padLength = padLength;
        if (priority != null) this.priority = priority;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "streamID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "blockFragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "endStream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "endHeaders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "padLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "priority", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2priorityparamdott_http2priorityparam.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2priorityparamdotT_http2PriorityParam }, optional : false }])));
    public function __copy__() {
        return new T_http2HeadersFrameParam(streamID, blockFragment, endStream, endHeaders, padLength, priority);
    }
}
