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
class T_conn_asInterface {
    @:keep
    public dynamic function _serve(_ctx:stdgo._internal.context.Context_context.Context):Void @:_0 __self__.value._serve(_ctx);
    @:keep
    public dynamic function _getState():{ var _0 : stdgo._internal.net.http.Http_connstate.ConnState; var _1 : stdgo.GoInt64; } return @:_0 __self__.value._getState();
    @:keep
    public dynamic function _setState(_nc:stdgo._internal.net.Net_conn.Conn, _state:stdgo._internal.net.http.Http_connstate.ConnState, _runHook:Bool):Void @:_0 __self__.value._setState(_nc, _state, _runHook);
    @:keep
    public dynamic function _closeWriteAndWait():Void @:_0 __self__.value._closeWriteAndWait();
    @:keep
    public dynamic function _close():Void @:_0 __self__.value._close();
    @:keep
    public dynamic function _finalFlush():Void @:_0 __self__.value._finalFlush();
    @:keep
    public dynamic function _readRequest(_ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } return @:_0 __self__.value._readRequest(_ctx);
    @:keep
    public dynamic function _hijackLocked():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } return @:_0 __self__.value._hijackLocked();
    @:keep
    public dynamic function _hijacked():Bool return @:_0 __self__.value._hijacked();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_connpointer.T_connPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
