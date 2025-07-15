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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2inflow_asInterface) class T_http2inflow_static_extension {
    @:keep
    @:tdfield
    static public function _take( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow>, _n:stdgo.GoUInt32):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1355"
        if ((_n > ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1356"
            return false;
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail - ((_n : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1359"
        return true;
    }
    @:keep
    @:tdfield
    static public function _add( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow>, _n:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow> = _f;
        var _connAdd = (0 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1331"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1332"
            throw new stdgo.AnyInterface(("negative update" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _unsent = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unsent : stdgo.GoInt64) + (_n : stdgo.GoInt64) : stdgo.GoInt64);
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1338"
        if (((_unsent + ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail : stdgo.GoInt64) : stdgo.GoInt64) > (2147483647i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1339"
            throw new stdgo.AnyInterface(("flow control update exceeds maximum window size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unsent = (_unsent : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1342"
        if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unsent < (4096 : stdgo.GoInt32) : Bool) && ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unsent < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1345"
            return _connAdd = (0 : stdgo.GoInt32);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail + ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unsent) : stdgo.GoInt32);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unsent = (0 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1349"
        return _connAdd = (_unsent : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _init( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow>, _n:stdgo.GoInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._avail = _n;
    }
}
