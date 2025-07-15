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
class T_http2Server_asInterface {
    @:keep
    public dynamic function serveConn(_c:stdgo._internal.net.Net_conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):Void @:_0 __self__.value.serveConn(_c, _opts);
    @:keep
    public dynamic function _maxQueuedControlFrames():stdgo.GoInt return @:_0 __self__.value._maxQueuedControlFrames();
    @:keep
    public dynamic function _maxEncoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxEncoderHeaderTableSize();
    @:keep
    public dynamic function _maxDecoderHeaderTableSize():stdgo.GoUInt32 return @:_0 __self__.value._maxDecoderHeaderTableSize();
    @:keep
    public dynamic function _maxConcurrentStreams():stdgo.GoUInt32 return @:_0 __self__.value._maxConcurrentStreams();
    @:keep
    public dynamic function _maxReadFrameSize():stdgo.GoUInt32 return @:_0 __self__.value._maxReadFrameSize();
    @:keep
    public dynamic function _initialStreamRecvWindowSize():stdgo.GoInt32 return @:_0 __self__.value._initialStreamRecvWindowSize();
    @:keep
    public dynamic function _initialConnRecvWindowSize():stdgo.GoInt32 return @:_0 __self__.value._initialConnRecvWindowSize();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2serverpointer.T_http2ServerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
