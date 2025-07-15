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
class T_http2pipe_asInterface {
    @:keep
    public dynamic function done():stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11> return @:_0 __self__.value.done();
    @:keep
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:keep
    public dynamic function _closeDoneLocked():Void @:_0 __self__.value._closeDoneLocked();
    @:keep
    public dynamic function _closeWithError(_dst:stdgo.Ref<stdgo.Error>, _err:stdgo.Error, _fn:() -> Void):Void @:_0 __self__.value._closeWithError(_dst, _err, _fn);
    @:keep
    public dynamic function _closeWithErrorAndCode(_err:stdgo.Error, _fn:() -> Void):Void @:_0 __self__.value._closeWithErrorAndCode(_err, _fn);
    @:keep
    public dynamic function breakWithError(_err:stdgo.Error):Void @:_0 __self__.value.breakWithError(_err);
    @:keep
    public dynamic function closeWithError(_err:stdgo.Error):Void @:_0 __self__.value.closeWithError(_err);
    @:keep
    public dynamic function write(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_d);
    @:keep
    public dynamic function read(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_d);
    @:keep
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    public dynamic function _setBuffer(_b:stdgo._internal.net.http.Http_t_http2pipebuffer.T_http2pipeBuffer):Void @:_0 __self__.value._setBuffer(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2pipepointer.T_http2pipePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
