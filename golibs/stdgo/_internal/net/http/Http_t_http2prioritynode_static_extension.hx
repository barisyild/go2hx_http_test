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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2priorityNode_asInterface) class T_http2priorityNode_static_extension {
    @:keep
    @:tdfield
    static public function _walkReadyInOrder( _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, _openParent:Bool, _tmp:stdgo.Ref<stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>>, _f:(stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, Bool) -> Bool):Bool {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = _n;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11018"
        if ((!(@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._q._empty() && _f(_n, _openParent) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11019"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11021"
        if (({
            final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11022"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11027"
        if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id != ((0u32 : stdgo.GoUInt32))) {
            _openParent = (_openParent || ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == (0 : stdgo._internal.net.http.Http_t_http2prioritynodestate.T_http2priorityNodeState)) : Bool);
        };
        var _w = @:assignType ((@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids ?? throw stdgo.Error._nullPointerDereference.__underlying__())._weight : stdgo.GoUInt8);
        var _needSort = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11036"
        {
            var _k = (@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            while (({
                final value = _k;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11037"
                if ((@:checkr _k ?? throw stdgo.Error._nullPointerDereference.__underlying__())._weight != (_w)) {
                    _needSort = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11039"
                    break;
                };
                _k = (@:checkr _k ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11042"
        if (!_needSort) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11043"
            {
                var _k = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids;
                while (({
                    final value = _k;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11044"
                    if (_k._walkReadyInOrder(_openParent, _tmp, _f)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11045"
                        return true;
                    };
                    _k = (@:checkr _k ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11048"
            return false;
        };
        @:_1 (_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).__setData__((((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>)).__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11054"
        while (({
            final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            @:_1 (_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).__setData__(((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).__append__((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11056"
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids._setParent(null);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11058"
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>) : stdgo._internal.net.http.Http_t_http2sortprioritynodesiblings.T_http2sortPriorityNodeSiblings), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sortprioritynodesiblingsdott_http2sortprioritynodesiblings.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sortprioritynodesiblingsdotT_http2sortPriorityNodeSiblings));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11059"
        {
            var _i = @:assignType (((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>).length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11060"
                ((_tmp : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>>))[(_i : stdgo.GoInt)]._setParent(_n);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11062"
        {
            var _k = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids;
            while (({
                final value = _k;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11063"
                if (_k._walkReadyInOrder(_openParent, _tmp, _f)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11064"
                    return true;
                };
                _k = (@:checkr _k ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11067"
        return false;
    }
    @:keep
    @:tdfield
    static public function _addBytes( _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, _b:stdgo.GoInt64):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = _n;
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes + (_b) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11006"
        while (({
            final value = _n;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subtreeBytes = ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._subtreeBytes + (_b) : stdgo.GoInt64);
            _n = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent;
        };
    }
    @:keep
    @:tdfield
    static public function _setParent( _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>, _parent:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode>):Void {
        @:recv var _n:stdgo.Ref<stdgo._internal.net.http.Http_t_http2prioritynode.T_http2priorityNode> = _n;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10970"
        if (_n == (_parent)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10971"
            throw new stdgo.AnyInterface(("setParent to self" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10973"
        if ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent == (_parent)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10974"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10977"
        {
            var _parent = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent;
            if (({
                final value = _parent;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10978"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                } else {
                    (@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10983"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev;
                };
            };
        };
        (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent = _parent;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10991"
        if (({
            final value = _parent;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = null;
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = null;
        } else {
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids;
            (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = null;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10997"
            if (({
                final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = _n;
            };
            (@:checkr _parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._kids = _n;
        };
    }
}
