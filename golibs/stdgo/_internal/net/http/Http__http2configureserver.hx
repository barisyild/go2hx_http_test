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
function _http2ConfigureServer(_s:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _conf:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4061"
        if (({
            final value = _s;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4062"
            throw new stdgo.AnyInterface(("nil *http.Server" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4064"
        if (({
            final value = _conf;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _conf = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_t_http2server.T_http2Server), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverdott_http2server.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverdotT_http2Server })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>);
        };
        (@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (stdgo.Go.setRef(({ _activeConns : ({
            final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, stdgo._internal.net.http.Http_t__struct_11.T__struct_11>();
            {};
            cast x;
        } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, stdgo._internal.net.http.Http_t__struct_11.T__struct_11>) } : stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverinternalstatedott_http2serverinternalstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverinternalstatedotT_http2serverInternalState })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverinternalstate.T_http2serverInternalState>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4068"
        {
            var __0 = _s, __1 = _conf;
var _h2 = __1, _h1 = __0;
            if ((@:checkr _h2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout == ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4069"
                if ((@:checkr _h1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                    (@:checkr _h2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout = (@:checkr _h1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout;
                } else {
                    (@:checkr _h2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout = (@:checkr _h1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4075"
        _s.registerOnShutdown((@:checkr _conf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state._startGracefulShutdown);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4077"
        if (({
            final value = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_config.Config), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        } else if ((((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites != null) && ((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).minVersion < (772 : stdgo.GoUInt16) : Bool) : Bool)) {
            var _haveRequired = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4084"
            if ((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites != null) for (__12 => _cs in (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuites) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4085"
                {
                    final __value__ = _cs;
                    if (__value__ == ((49199 : stdgo.GoUInt16)) || __value__ == ((49195 : stdgo.GoUInt16))) {
                        _haveRequired = true;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4093"
            if (!_haveRequired) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4094"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("http2: TLSConfig.CipherSuites is missing an HTTP/2-required AES_128_GCM_SHA256 cipher (need at least one of TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 or TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256)" : stdgo.GoString));
            };
        };
        (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).preferServerCipherSuites = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4107"
        if (!stdgo._internal.net.http.Http__http2strslicecontains._http2strSliceContains((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, ("h2" : stdgo.GoString))) {
            (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos = ((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos.__append__(("h2" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4110"
        if (!stdgo._internal.net.http.Http__http2strslicecontains._http2strSliceContains((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, ("http/1.1" : stdgo.GoString))) {
            (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos = ((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSConfig ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos.__append__(("http/1.1" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4114"
        if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto == null) {
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto = ({
                final x = new stdgo.GoMap.GoStringMap<(stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>();
                x.__defaultValue__ = () -> null;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, (stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, stdgo._internal.net.http.Http_handler.Handler) -> Void>);
        };
        var _protoHandler = function(_hs:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, _c:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>, _h:stdgo._internal.net.http.Http_handler.Handler):Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4118"
            if (stdgo._internal.net.http.Http__http2testhookonconn._http2testHookOnConn != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4119"
                stdgo._internal.net.http.Http__http2testhookonconn._http2testHookOnConn();
            };
            var _ctx:stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
            {};
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4130"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _h;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_handlerdothandler.__type__stdgodot_internaldotnetdothttpdotHttp_handlerdotHandler)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t__http2configureserver___localname___basecontexter_139945dott__http2configureserver___localname___basecontexter_139945.__type__stdgodot_internaldotnetdothttpdotHttp_t__http2configureserver___localname___basecontexter_139945dotT__http2ConfigureServer___localname___baseContexter_139945) : stdgo._internal.net.http.Http_t__http2configureserver___localname___basecontexter_139945.T__http2ConfigureServer___localname___baseContexter_139945), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.net.http.Http_t__http2configureserver___localname___basecontexter_139945.T__http2ConfigureServer___localname___baseContexter_139945), _1 : false };
                }, _bc = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _ctx = _bc.baseContext();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4133"
            _conf.serveConn(stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })), (stdgo.Go.setRef(({ context : _ctx, handler : _h, baseConfig : _hs } : stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serveconnoptsdott_http2serveconnopts.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serveconnoptsdotT_http2ServeConnOpts })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>));
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto[("h2" : stdgo.GoString)] = _protoHandler;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4140"
        return (null : stdgo.Error);
    }
