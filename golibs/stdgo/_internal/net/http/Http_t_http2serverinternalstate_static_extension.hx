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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2serverInternalState_asInterface) class T_http2serverInternalState_static_extension {
    @:keep
    @:tdfield
    static public function _startGracefulShutdown( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4045"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4046"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4048"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4049"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConns != null) for (_sc => _ in (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConns) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4050"
            _sc._startGracefulShutdown();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4052"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _unregisterConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState>, _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4036"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4037"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4039"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4040"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConns != null) (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConns.__remove__(_sc);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4041"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _registerConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState>, _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4027"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4028"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4030"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._activeConns[_sc] = ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4032"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }
}
