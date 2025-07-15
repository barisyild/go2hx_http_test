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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2ServeConnOpts_asInterface) class T_http2ServeConnOpts_static_extension {
    @:keep
    @:tdfield
    static public function _handler( _o:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):stdgo._internal.net.http.Http_handler.Handler {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts> = _o;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4188"
        if (({
            final value = _o;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4189"
            if ((@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).handler != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4190"
                return (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).handler;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4192"
            if ((({
                final value = (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).baseConfig;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).baseConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).handler != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4193"
                return (@:checkr (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).baseConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).handler;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4196"
        return stdgo.Go.asInterface(stdgo._internal.net.http.Http_defaultservemux.defaultServeMux, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_servemuxdotservemux.__type__stdgodot_internaldotnetdothttpdotHttp_servemuxdotServeMux }));
    }
    @:keep
    @:tdfield
    static public function _baseConfig( _o:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):stdgo.Ref<stdgo._internal.net.http.Http_server.Server> {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts> = _o;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4181"
        if ((({
            final value = _o;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).baseConfig;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4182"
            return (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).baseConfig;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4184"
        return (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_server.Server), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer })) : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
    }
    @:keep
    @:tdfield
    static public function _context( _o:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):stdgo._internal.context.Context_context.Context {
        @:recv var _o:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts> = _o;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4174"
        if ((({
            final value = _o;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ((@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4175"
            return (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).context;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4177"
        return stdgo._internal.context.Context_background.background();
    }
}
