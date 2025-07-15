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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2outflow_asInterface) class T_http2outflow_static_extension {
    @:keep
    @:tdfield
    static public function _add( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>, _n:stdgo.GoInt32):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow> = _f;
        var _sum = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n + _n : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1412"
        if (((_sum > _n : Bool)) == (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n > (0 : stdgo.GoInt32) : Bool))) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = _sum;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1414"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1416"
        return false;
    }
    @:keep
    @:tdfield
    static public function _take( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>, _n:stdgo.GoInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1399"
        if ((_n > _f._available() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1400"
            throw new stdgo.AnyInterface(("internal error: took too much" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - (_n) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1403"
        if (({
            final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - (_n) : stdgo.GoInt32);
        };
    }
    @:keep
    @:tdfield
    static public function _available( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>):stdgo.GoInt32 {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow> = _f;
        var _n = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1392"
        if ((({
            final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n < _n : Bool) : Bool)) {
            _n = (@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1395"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _setConnFlow( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>, _cf:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn = _cf;
    }
}
