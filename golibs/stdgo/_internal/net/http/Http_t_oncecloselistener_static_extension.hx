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
@:keep @:allow(stdgo._internal.net.http.Http.T_onceCloseListener_asInterface) class T_onceCloseListener_static_extension {
    @:keep
    @:tdfield
    static public function _close( _oc:stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener>):Void {
        @:recv var _oc:stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener> = _oc;
        (@:checkr _oc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeErr = (@:checkr _oc ?? throw stdgo.Error._nullPointerDereference.__underlying__()).listener.close();
    }
    @:keep
    @:tdfield
    static public function close( _oc:stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener>):stdgo.Error {
        @:recv var _oc:stdgo.Ref<stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener> = _oc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3498"
        (@:checkr _oc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._once.do_(_oc._close);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L3499"
        return (@:checkr _oc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeErr;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.addr();
    @:embedded
    @:embeddededffieldsffun
    public static function accept( __self__:stdgo._internal.net.http.Http_t_oncecloselistener.T_onceCloseListener):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__.accept();
}
