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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2frameheader_static_extension.T_http2FrameHeader_static_extension) @:using(stdgo._internal.net.http.Http_t_http2frameheader_static_extension.T_http2FrameHeader_static_extension) class T_http2FrameHeader {
    public var _valid : Bool = false;
    public var type : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType);
    public var flags : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
    public var length_ : stdgo.GoUInt32 = 0;
    public var streamID : stdgo.GoUInt32 = 0;
    public function new(?_valid:Bool, ?type:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType, ?flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, ?length_:stdgo.GoUInt32, ?streamID:stdgo.GoUInt32) {
        if (_valid != null) this._valid = _valid;
        if (type != null) this.type = type;
        if (flags != null) this.flags = flags;
        if (length_ != null) this.length_ = length_;
        if (streamID != null) this.streamID = streamID;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_valid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "type", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2frametypedott_http2frametype.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2frametypedotT_http2FrameType }, optional : false }, { name : "flags", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2flagsdott_http2flags.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2flagsdotT_http2Flags }, optional : false }, { name : "length_", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "streamID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }])));
    public function __copy__() {
        return new T_http2FrameHeader(_valid, type, flags, length_, streamID);
    }
}
