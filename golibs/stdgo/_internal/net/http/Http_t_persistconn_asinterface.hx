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
class T_persistConn_asInterface {
    @:keep
    public dynamic function _closeLocked(_err:stdgo.Error):Void @:_0 __self__.value._closeLocked(_err);
    @:keep
    public dynamic function _close(_err:stdgo.Error):Void @:_0 __self__.value._close(_err);
    @:keep
    public dynamic function _markReused():Void @:_0 __self__.value._markReused();
    @:keep
    public dynamic function _roundTrip(_req:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value._roundTrip(_req);
    @:keep
    public dynamic function _wroteRequest():Bool return @:_0 __self__.value._wroteRequest();
    @:keep
    public dynamic function _writeLoop():Void @:_0 __self__.value._writeLoop();
    @:keep
    public dynamic function _waitForContinue(_continueCh:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>):() -> Bool return @:_0 __self__.value._waitForContinue(_continueCh);
    @:keep
    public dynamic function _readResponse(_rc:stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value._readResponse(_rc, _trace);
    @:keep
    public dynamic function _readLoopPeekFailLocked(_peekErr:stdgo.Error):Void @:_0 __self__.value._readLoopPeekFailLocked(_peekErr);
    @:keep
    public dynamic function _readLoop():Void @:_0 __self__.value._readLoop();
    @:keep
    public dynamic function _mapRoundTripError(_req:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>, _startBytesWritten:stdgo.GoInt64, _err:stdgo.Error):stdgo.Error return @:_0 __self__.value._mapRoundTripError(_req, _startBytesWritten, _err);
    @:keep
    public dynamic function _closeConnIfStillIdle():Void @:_0 __self__.value._closeConnIfStillIdle();
    @:keep
    public dynamic function _cancelRequest(_err:stdgo.Error):Void @:_0 __self__.value._cancelRequest(_err);
    @:keep
    public dynamic function _gotIdleConnTrace(_idleAt:stdgo._internal.time.Time_time.Time):stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo return @:_0 __self__.value._gotIdleConnTrace(_idleAt);
    @:keep
    public dynamic function _isReused():Bool return @:_0 __self__.value._isReused();
    @:keep
    public dynamic function _canceled():stdgo.Error return @:_0 __self__.value._canceled();
    @:keep
    public dynamic function _isBroken():Bool return @:_0 __self__.value._isBroken();
    @:keep
    public dynamic function read(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_p);
    @:keep
    public dynamic function _maxHeaderResponseSize():stdgo.GoInt64 return @:_0 __self__.value._maxHeaderResponseSize();
    @:keep
    public dynamic function _addTLS(_ctx:stdgo._internal.context.Context_context.Context, _name:stdgo.GoString, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo.Error return @:_0 __self__.value._addTLS(_ctx, _name, _trace);
    @:keep
    public dynamic function _shouldRetryRequest(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _err:stdgo.Error):Bool return @:_0 __self__.value._shouldRetryRequest(_req, _err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_persistconnpointer.T_persistConnPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
