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
function _http2shouldRetryDial(_call:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dialcall.T_http2dialCall>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1014"
        if ((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1016"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1018"
        if (({
            final __t__ = (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = _req.context();
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1022"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1024"
        if ((!stdgo._internal.errors.Errors_is_.is_((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err, stdgo._internal.context.Context_canceled.canceled) && !stdgo._internal.errors.Errors_is_.is_((@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err, stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1027"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1031"
        return (@:checkr _call ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx.err() != null;
    }
