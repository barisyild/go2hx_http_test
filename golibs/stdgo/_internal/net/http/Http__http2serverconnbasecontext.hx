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
function _http2serverConnBaseContext(_c:stdgo._internal.net.Net_conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):{ var _0 : stdgo._internal.context.Context_context.Context; var _1 : () -> Void; } {
        var _ctx = (null : stdgo._internal.context.Context_context.Context), _cancel = null;
        {
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_opts._context());
            _ctx = @:tmpset0 __tmp__._0;
            _cancel = @:tmpset0 __tmp__._1;
        };
        _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_localaddrcontextkey.localAddrContextKey, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey }))), ({
            final __t__ = _c.localAddr();
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4349"
        {
            var _hs = _opts._baseConfig();
            if (({
                final value = _hs;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_servercontextkey.serverContextKey, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey }))), new stdgo.AnyInterface(stdgo.Go.asInterface(_hs, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer }))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4352"
        return { _0 : _ctx, _1 : _cancel };
    }
