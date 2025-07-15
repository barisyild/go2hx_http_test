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
class T_http2clientConnReadLoop_asInterface {
    @:keep
    public dynamic function _processPushPromise(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>):stdgo.Error return @:_0 __self__.value._processPushPromise(_f);
    @:keep
    public dynamic function _processPing(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>):stdgo.Error return @:_0 __self__.value._processPing(_f);
    @:keep
    public dynamic function _processResetStream(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>):stdgo.Error return @:_0 __self__.value._processResetStream(_f);
    @:keep
    public dynamic function _processWindowUpdate(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>):stdgo.Error return @:_0 __self__.value._processWindowUpdate(_f);
    @:keep
    public dynamic function _processSettingsNoWrite(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.Error return @:_0 __self__.value._processSettingsNoWrite(_f);
    @:keep
    public dynamic function _processSettings(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.Error return @:_0 __self__.value._processSettings(_f);
    @:keep
    public dynamic function _processGoAway(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>):stdgo.Error return @:_0 __self__.value._processGoAway(_f);
    @:keep
    public dynamic function _streamByID(_id:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> return @:_0 __self__.value._streamByID(_id);
    @:keep
    public dynamic function _endStreamError(_cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _err:stdgo.Error):Void @:_0 __self__.value._endStreamError(_cs, _err);
    @:keep
    public dynamic function _endStream(_cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):Void @:_0 __self__.value._endStream(_cs);
    @:keep
    public dynamic function _processData(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>):stdgo.Error return @:_0 __self__.value._processData(_f);
    @:keep
    public dynamic function _processTrailers(_cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Error return @:_0 __self__.value._processTrailers(_cs, _f);
    @:keep
    public dynamic function _handleResponse(_cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } return @:_0 __self__.value._handleResponse(_cs, _f);
    @:keep
    public dynamic function _processHeaders(_f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Error return @:_0 __self__.value._processHeaders(_f);
    @:keep
    public dynamic function _run():stdgo.Error return @:_0 __self__.value._run();
    @:keep
    public dynamic function _cleanup():Void @:_0 __self__.value._cleanup();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2clientconnreadlooppointer.T_http2clientConnReadLoopPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
