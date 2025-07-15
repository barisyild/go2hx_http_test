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
class T_http2clientStream_asInterface {
    @:keep
    public dynamic function _copyTrailers():Void @:_0 __self__.value._copyTrailers();
    @:keep
    public dynamic function _awaitFlowControl(_maxBytes:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.Error; } return @:_0 __self__.value._awaitFlowControl(_maxBytes);
    @:keep
    public dynamic function _writeRequestBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error return @:_0 __self__.value._writeRequestBody(_req);
    @:keep
    public dynamic function _frameScratchBufferLen(_maxFrameSize:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._frameScratchBufferLen(_maxFrameSize);
    @:keep
    public dynamic function _cleanupWriteRequest(_err:stdgo.Error):Void @:_0 __self__.value._cleanupWriteRequest(_err);
    @:keep
    public dynamic function _encodeAndWriteHeaders(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error return @:_0 __self__.value._encodeAndWriteHeaders(_req);
    @:keep
    public dynamic function _writeRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error return @:_0 __self__.value._writeRequest(_req);
    @:keep
    public dynamic function _doRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void @:_0 __self__.value._doRequest(_req);
    @:keep
    public dynamic function _closeReqBodyLocked():Void @:_0 __self__.value._closeReqBodyLocked();
    @:keep
    public dynamic function _abortRequestBodyWrite():Void @:_0 __self__.value._abortRequestBodyWrite();
    @:keep
    public dynamic function _abortStreamLocked(_err:stdgo.Error):Void @:_0 __self__.value._abortStreamLocked(_err);
    @:keep
    public dynamic function _abortStream(_err:stdgo.Error):Void @:_0 __self__.value._abortStream(_err);
    @:keep
    public dynamic function _get1xxTraceFunc():(stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error return @:_0 __self__.value._get1xxTraceFunc();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2clientstreampointer.T_http2clientStreamPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
