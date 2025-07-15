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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2priorityWriteScheduler_asInterface) class T_http2priorityWriteScheduler_static_extension {
    @:keep
    @:tdfield
    static public function _removeNode( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11308"
        {
            var _k = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids;
            while (({
                final value = _k;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11309"
                _k._setParent((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent);
                _k = (@:checkr _k ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11311"
        _n._setParent(null);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11312"
        if ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes != null) (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes.__remove__((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id);
    }
    @:keep
    @:tdfield
    static public function _addClosedOrIdleNode( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _list:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>, _maxSize:stdgo.GoInt, _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11294"
        if (_maxSize == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11295"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11297"
        if (((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).length) == (_maxSize)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11299"
            _ws._removeNode(((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>))[(0 : stdgo.GoInt)]);
            var _x = (((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>)).__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11301"
            (_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).__copyTo__(_x);
            @:_1 (_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).__setData__((((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>)).__slice__(0, (_x.length)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>));
        };
        @:_1 (_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).__setData__(((_list : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).__append__(_n) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>));
    }
    @:keep
    @:tdfield
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        var _wr = ({} : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11267"
        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root._walkReadyInOrder(false, (stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode }) }) })) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>), function(_n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, _openParent:Bool):Bool {
            var _limit = @:assignType ((2147483647 : stdgo.GoInt32) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11269"
            if (_openParent) {
                _limit = (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit;
            };
            {
                var __tmp__ = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q._consume(_limit);
                _wr = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11273"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11274"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11276"
            _n._addBytes((_wr.dataSize() : stdgo.GoInt64));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11280"
            if (_openParent) {
                (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit + ((1024 : stdgo.GoInt32)) : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11282"
                if (((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit < (0 : stdgo.GoInt32) : Bool)) {
                    (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit = (2147483647 : stdgo.GoInt32);
                };
            } else if ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._enableWriteThrottle) {
                (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeThrottleLimit = (1024 : stdgo.GoInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11288"
            return true;
        });
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11290"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } = { _0 : _wr?.__copy__(), _1 : _ok };
            _wr = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        var _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11248"
        if (_wr._isControl()) {
            _n = (stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        } else {
            var _id = @:assignType (_wr.streamID() : stdgo.GoUInt32);
            _n = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_id] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11253"
            if (({
                final value = _n;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11257"
                if ((_wr.dataSize() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11258"
                    throw new stdgo.AnyInterface(("add DATA on non-open stream" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                _n = (stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11263"
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q._push(_wr?.__copy__());
    }
    @:keep
    @:tdfield
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11176"
        if (_streamID == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11177"
            throw new stdgo.AnyInterface(("adjustPriority on root" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _n = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11184"
        if (({
            final value = _n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11185"
            if (((_streamID <= (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxID : Bool) || ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxIdleNodesInTree == (0 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11186"
                return;
            };
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxID = _streamID;
            _n = (stdgo.Go.setRef(({ _q : ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._get() : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue)?.__copy__(), _id : _streamID, _weight : (15 : stdgo.GoUInt8), _state : (2 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState) } : stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11195"
            _n._setParent((stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_streamID] = _n;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11197"
            _ws._addClosedOrIdleNode((stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleNodes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode }) }) })) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>), (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxIdleNodesInTree, _n);
        };
        var _parent = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_priority.streamDep] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11203"
        if (({
            final value = _parent;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11204"
            _n._setParent((stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._weight = (15 : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11206"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11210"
        if (_n == (_parent)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11211"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11221"
        {
            var _x = (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent;
            while (({
                final value = _x;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11222"
                if (_x == (_n)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11223"
                    _parent._setParent((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11224"
                    break;
                };
                _x = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11231"
        if (_priority.exclusive) {
            var _k = (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11233"
            while (({
                final value = _k;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _next = (@:checkr _k ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11235"
                if (_k != (_n)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11236"
                    _k._setParent(_n);
                };
                _k = _next;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11242"
        _n._setParent(_parent);
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._weight = _priority.weight;
    }
    @:keep
    @:tdfield
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11151"
        if (_streamID == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11152"
            throw new stdgo.AnyInterface(("violation of WriteScheduler interface: cannot close stream 0" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11154"
        if (({
            final value = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11155"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("violation of WriteScheduler interface: unknown stream %d" : stdgo.GoString), new stdgo.AnyInterface(_streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11157"
        if ((@:checkr ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>)) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state != ((0 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11158"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("violation of WriteScheduler interface: stream %d already closed" : stdgo.GoString), new stdgo.AnyInterface(_streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _n = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (1 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11163"
        _n._addBytes(-(@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes);
        var _q = @:assignType ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q?.__copy__() : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11166"
        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._put((stdgo.Go.setRef(_q, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writequeuedott_http2writequeue.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writequeuedotT_http2writeQueue })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>));
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q._s = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11168"
        if (((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClosedNodesInTree > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11169"
            _ws._addClosedOrIdleNode((stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closedNodes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode }) }) })) : stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>), (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClosedNodesInTree, _n);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11171"
            _ws._removeNode(_n);
        };
    }
    @:keep
    @:tdfield
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritywritescheduler.T_http2priorityWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11121"
        {
            var _curr = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
            if (({
                final value = _curr;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11122"
                if ((@:checkr _curr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state != ((2 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11123"
                    throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("stream %d already opened" : stdgo.GoString), new stdgo.AnyInterface(_streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                (@:checkr _curr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (0 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11126"
                return;
            };
        };
        var _parent = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_options.pusherID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11134"
        if (({
            final value = _parent;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _parent = (stdgo.Go.setRef((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._root, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        };
        var _n = (stdgo.Go.setRef(({ _q : ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._get() : stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue)?.__copy__(), _id : _streamID, _weight : (15 : stdgo.GoUInt8), _state : (0 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState) } : stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2prioritynodedott_http2prioritynode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2prioritynodedotT_http2priorityNode })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11143"
        _n._setParent(_parent);
        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nodes[_streamID] = _n;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11145"
        if ((_streamID > (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxID : Bool)) {
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxID = _streamID;
        };
    }
}
