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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2roundRobinWriteScheduler_asInterface) class T_http2roundRobinWriteScheduler_static_extension {
    @:keep
    @:tdfield
    static public function pop( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11474"
        if (!(@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._control._empty()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11475"
            return { _0 : (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._control._shift()?.__copy__(), _1 : true };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11477"
        if (({
            final value = (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11478"
            return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
        };
        var _q = (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11481"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11482"
            {
                var __tmp__ = _q._consume((2147483647 : stdgo.GoInt32)), _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11484"
                    return { _0 : _wr?.__copy__(), _1 : true };
                };
            };
            _q = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11487"
            if (_q == ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11488"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11491"
        return { _0 : (new stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest), _1 : false };
    }
    @:keep
    @:tdfield
    static public function push( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11454"
        if (_wr._isControl()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11455"
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._control._push(_wr?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11456"
            return;
        };
        var _q = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_wr.streamID()] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11459"
        if (({
            final value = _q;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11463"
            if ((_wr.dataSize() > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11464"
                throw new stdgo.AnyInterface(("add DATA on non-open stream" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11466"
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._control._push(_wr?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11467"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11469"
        _q._push(_wr?.__copy__());
    }
    @:keep
    @:tdfield
    static public function adjustStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
    }
    @:keep
    @:tdfield
    static public function closeStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        var _q = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11434"
        if (({
            final value = _q;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11435"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11437"
        if ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next == (_q)) {
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head = null;
        } else {
            (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11443"
            if ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head == (_q)) {
                (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11447"
        if ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.__remove__(_streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11448"
        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._put(_q);
    }
    @:keep
    @:tdfield
    static public function openStream( _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler>, _streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void {
        @:recv var _ws:stdgo.Ref<stdgo._internal.net.http.Http_t_http2roundrobinwritescheduler.T_http2roundRobinWriteScheduler> = _ws;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11413"
        if (({
            final value = ((@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writequeue.T_http2writeQueue>));
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11414"
            throw ({
                final __t__ = stdgo._internal.fmt.Fmt_errorf.errorf(("stream %d already opened" : stdgo.GoString), new stdgo.AnyInterface(_streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        var _q = (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuePool._get();
        (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_streamID] = _q;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L11418"
        if (({
            final value = (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head = _q;
            (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _q;
            (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = _q;
        } else {
            (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = (@:checkr (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev;
            (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _ws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head;
            (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _q;
            (@:checkr (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = _q;
        };
    }
}
