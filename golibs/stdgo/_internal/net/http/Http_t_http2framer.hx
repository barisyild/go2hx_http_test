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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension) @:using(stdgo._internal.net.http.Http_t_http2framer_static_extension.T_http2Framer_static_extension) class T_http2Framer {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _lastFrame : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame);
    public var _errDetail : stdgo.Error = (null : stdgo.Error);
    public var _countError : stdgo.GoString -> Void = null;
    public var _lastHeaderStream : stdgo.GoUInt32 = 0;
    public var _maxReadSize : stdgo.GoUInt32 = 0;
    public var _headerBuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(9, 9).__setNumber32__();
    public var _getReadBuf : stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8> = null;
    public var _readBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _maxWriteSize : stdgo.GoUInt32 = 0;
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _wbuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var allowIllegalWrites : Bool = false;
    public var allowIllegalReads : Bool = false;
    public var readMetaHeaders : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = (null : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>);
    public var maxHeaderListSize : stdgo.GoUInt32 = 0;
    public var _logReads : Bool = false;
    public var _logWrites : Bool = false;
    public var _debugFramer : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
    public var _debugFramerBuf : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
    public var _debugReadLoggerf : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void = null;
    public var _debugWriteLoggerf : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void = null;
    public var _frameCache : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>);
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_lastFrame:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame, ?_errDetail:stdgo.Error, ?_countError:stdgo.GoString -> Void, ?_lastHeaderStream:stdgo.GoUInt32, ?_maxReadSize:stdgo.GoUInt32, ?_headerBuf:stdgo.GoArray<stdgo.GoUInt8>, ?_getReadBuf:stdgo.GoUInt32 -> stdgo.Slice<stdgo.GoUInt8>, ?_readBuf:stdgo.Slice<stdgo.GoUInt8>, ?_maxWriteSize:stdgo.GoUInt32, ?_w:stdgo._internal.io.Io_writer.Writer, ?_wbuf:stdgo.Slice<stdgo.GoUInt8>, ?allowIllegalWrites:Bool, ?allowIllegalReads:Bool, ?readMetaHeaders:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, ?maxHeaderListSize:stdgo.GoUInt32, ?_logReads:Bool, ?_logWrites:Bool, ?_debugFramer:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, ?_debugFramerBuf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, ?_debugReadLoggerf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void, ?_debugWriteLoggerf:(stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void, ?_frameCache:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>) {
        if (_r != null) this._r = _r;
        if (_lastFrame != null) this._lastFrame = _lastFrame;
        if (_errDetail != null) this._errDetail = _errDetail;
        if (_countError != null) this._countError = _countError;
        if (_lastHeaderStream != null) this._lastHeaderStream = _lastHeaderStream;
        if (_maxReadSize != null) this._maxReadSize = _maxReadSize;
        if (_headerBuf != null) this._headerBuf = _headerBuf;
        if (_getReadBuf != null) this._getReadBuf = _getReadBuf;
        if (_readBuf != null) this._readBuf = _readBuf;
        if (_maxWriteSize != null) this._maxWriteSize = _maxWriteSize;
        if (_w != null) this._w = _w;
        if (_wbuf != null) this._wbuf = _wbuf;
        if (allowIllegalWrites != null) this.allowIllegalWrites = allowIllegalWrites;
        if (allowIllegalReads != null) this.allowIllegalReads = allowIllegalReads;
        if (readMetaHeaders != null) this.readMetaHeaders = readMetaHeaders;
        if (maxHeaderListSize != null) this.maxHeaderListSize = maxHeaderListSize;
        if (_logReads != null) this._logReads = _logReads;
        if (_logWrites != null) this._logWrites = _logWrites;
        if (_debugFramer != null) this._debugFramer = _debugFramer;
        if (_debugFramerBuf != null) this._debugFramerBuf = _debugFramerBuf;
        if (_debugReadLoggerf != null) this._debugReadLoggerf = _debugReadLoggerf;
        if (_debugWriteLoggerf != null) this._debugWriteLoggerf = _debugWriteLoggerf;
        if (_frameCache != null) this._frameCache = _frameCache;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_r", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false },
{ name : "_lastFrame", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame }, optional : false },
{ name : "_errDetail", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false },
{ name : "_countError", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_lastHeaderStream", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_maxReadSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_headerBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 9) }, optional : false },
{ name : "_getReadBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(uint32_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_readBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "_maxWriteSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false },
{ name : "_wbuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false },
{ name : "allowIllegalWrites", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "allowIllegalReads", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "readMetaHeaders", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decoderdotdecoder.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decoderdotDecoder }) }, optional : false },
{ name : "maxHeaderListSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_logReads", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_logWrites", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_debugFramer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer }) }, optional : false },
{ name : "_debugFramerBuf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }) }, optional : false },
{ name : "_debugReadLoggerf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_debugWriteLoggerf", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false },
{ name : "_frameCache", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framecachedott_http2framecache.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framecachedotT_http2frameCache }) }, optional : false }])));
    public function __copy__() {
        return new T_http2Framer(
_r,
_lastFrame,
_errDetail,
_countError,
_lastHeaderStream,
_maxReadSize,
_headerBuf,
_getReadBuf,
_readBuf,
_maxWriteSize,
_w,
_wbuf,
allowIllegalWrites,
allowIllegalReads,
readMetaHeaders,
maxHeaderListSize,
_logReads,
_logWrites,
_debugFramer,
_debugFramerBuf,
_debugReadLoggerf,
_debugWriteLoggerf,
_frameCache);
    }
}
