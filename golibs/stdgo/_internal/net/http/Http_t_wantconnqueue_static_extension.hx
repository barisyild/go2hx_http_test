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
@:keep @:allow(stdgo._internal.net.http.Http.T_wantConnQueue_asInterface) class T_wantConnQueue_static_extension {
    @:keep
    @:tdfield
    static public function _cleanFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = _q;
        var _cleaned = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1323"
        while (true) {
            var _w = _q._peekFront();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1325"
            if ((({
                final value = _w;
                (value == null || (value : Dynamic).__nil__);
            }) || _w._waiting() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1326"
                return _cleaned;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1328"
            _q._popFront();
            _cleaned = true;
        };
    }
    @:keep
    @:tdfield
    static public function _peekFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>):stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn> {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1311"
        if (((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos < ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1312"
            return (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1314"
        if ((((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1315"
            return (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail[(0 : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1317"
        return null;
    }
    @:keep
    @:tdfield
    static public function _popFront( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>):stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn> {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1296"
        if (((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos >= ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1297"
            if (((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1298"
                return null;
            };
            {
                final __tmp__0 = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail;
                final __tmp__1 = (0 : stdgo.GoInt);
                final __tmp__2 = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>>);
                (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head = @:binopAssign __tmp__0;
                (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos = @:binopAssign __tmp__1;
                (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail = @:binopAssign __tmp__2;
            };
        };
        var _w = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos : stdgo.GoInt)];
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos : stdgo.GoInt)] = null;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1305"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos++;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1306"
        return _w;
    }
    @:keep
    @:tdfield
    static public function _pushBack( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>, _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = _q;
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail = ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail.__append__(_w) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>>);
    }
    @:keep
    @:tdfield
    static public function _len( _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>):stdgo.GoInt {
        @:recv var _q:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1286"
        return ((((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head.length) - (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headPos : stdgo.GoInt) + ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tail.length) : stdgo.GoInt);
    }
}
