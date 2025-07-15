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
class T_http2priorityWriteScheduler_asInterface {
    @:keep
    public dynamic function _removeNode(_n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>):Void @:_0 __self__.value._removeNode(_n);
    @:keep
    public dynamic function _addClosedOrIdleNode(_list:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>, _maxSize:stdgo.GoInt, _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>):Void @:_0 __self__.value._addClosedOrIdleNode(_list, _maxSize, _n);
    @:keep
    public dynamic function pop():{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } return @:_0 __self__.value.pop();
    @:keep
    public dynamic function push(_wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void @:_0 __self__.value.push(_wr);
    @:keep
    public dynamic function adjustStream(_streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void @:_0 __self__.value.adjustStream(_streamID, _priority);
    @:keep
    public dynamic function closeStream(_streamID:stdgo.GoUInt32):Void @:_0 __self__.value.closeStream(_streamID);
    @:keep
    public dynamic function openStream(_streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void @:_0 __self__.value.openStream(_streamID, _options);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2prioritywriteschedulerpointer.T_http2priorityWriteSchedulerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
