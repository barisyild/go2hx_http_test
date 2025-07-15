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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2dialCall_asInterface) class T_http2dialCall_static_extension {
    @:keep
    @:tdfield
    static public function _dial( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>, _ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall> = _c;
        {};
        {
            var __tmp__ = (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._dialClientConn(_ctx, _addr?.__copy__(), false);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res = @:tmpset0 __tmp__._0;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L864"
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L865"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing != null) (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dialing.__remove__(_addr);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L866"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L867"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p._addConnLocked(_addr?.__copy__(), (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L869"
        (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L871"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done != null) (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.__close__();
    }
}
