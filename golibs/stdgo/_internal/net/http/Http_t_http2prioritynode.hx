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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2prioritynode_static_extension.T_http2priorityNode_static_extension) @:using(stdgo._internal.net.http.Http_t_http2prioritynode_static_extension.T_http2priorityNode_static_extension) class T_http2priorityNode {
    public var _q : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue = ({} : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue);
    public var _id : stdgo.GoUInt32 = 0;
    public var _weight : stdgo.GoUInt8 = 0;
    public var _state : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState);
    public var _bytes : stdgo.GoInt64 = 0;
    public var _subtreeBytes : stdgo.GoInt64 = 0;
    public var _parent : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
    public var _kids : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
    public var _prev : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
    public var _next : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
    public function new(?_q:stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue, ?_id:stdgo.GoUInt32, ?_weight:stdgo.GoUInt8, ?_state:stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState, ?_bytes:stdgo.GoInt64, ?_subtreeBytes:stdgo.GoInt64, ?_parent:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, ?_kids:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, ?_prev:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, ?_next:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>) {
        if (_q != null) this._q = _q;
        if (_id != null) this._id = _id;
        if (_weight != null) this._weight = _weight;
        if (_state != null) this._state = _state;
        if (_bytes != null) this._bytes = _bytes;
        if (_subtreeBytes != null) this._subtreeBytes = _subtreeBytes;
        if (_parent != null) this._parent = _parent;
        if (_kids != null) this._kids = _kids;
        if (_prev != null) this._prev = _prev;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_q", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writequeuedott_http2writequeue.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writequeuedotT_http2writeQueue }, optional : false }, { name : "_id", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false }, { name : "_weight", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, optional : false }, { name : "_state", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodestatedott_http2prioritynodestate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodestatedotT_http2priorityNodeState }, optional : false }, { name : "_bytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_subtreeBytes", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }, optional : false }, { name : "_parent", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode }) }, optional : false }, { name : "_kids", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode }) }, optional : false }, { name : "_prev", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode }) }, optional : false }, { name : "_next", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode }) }, optional : false }])));
    public function __copy__() {
        return new T_http2priorityNode(_q, _id, _weight, _state, _bytes, _subtreeBytes, _parent, _kids, _prev, _next);
    }
}
