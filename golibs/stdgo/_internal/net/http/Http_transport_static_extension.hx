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
@:keep @:allow(stdgo._internal.net.http.Http.Transport_asInterface) class Transport_static_extension {
    @:keep
    @:tdfield
    static public function _dialConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _ctx:stdgo._internal.context.Context_context.Context, _cm:stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _pconn = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>), _err = (null : stdgo.Error);
        try {
            _pconn = (stdgo.Go.setRef(({ _t : _t, _cacheKey : _cm._key()?.__copy__(), _reqch : (new stdgo.Chan<stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan)) : stdgo.Chan<stdgo._internal.net.http.Http_t_requestandchan.T_requestAndChan>), _writech : (new stdgo.Chan<stdgo._internal.net.http.Http_t_writerequest.T_writeRequest>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_t_writerequest.T_writeRequest)) : stdgo.Chan<stdgo._internal.net.http.Http_t_writerequest.T_writeRequest>), _closech : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _writeErrCh : (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>), _writeLoopDone : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>) } : stdgo._internal.net.http.Http_t_persistconn.T_persistConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>);
            var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_ctx);
            var _wrapErr = @:assignType (function(_err:stdgo.Error):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1593"
                if (({
                    final value = _cm._proxyURL;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1595"
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ op : ("proxyconnect" : stdgo.GoString), net : ("tcp" : stdgo.GoString), err : _err } : stdgo._internal.net.Net_operror.OpError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError }));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1597"
                return _err;
            } : stdgo.Error -> stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1599"
            if (((_cm._scheme() == ("https" : stdgo.GoString)) && _t._hasCustomTLSDialer() : Bool)) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = _t._customDialTLS(_ctx, ("tcp" : stdgo.GoString), _cm._addr()?.__copy__());
                    (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1602"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1603"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                        _pconn = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1605"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : false };
                    }, _tc = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1608"
                        if ((({
                            final value = _trace;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeStart != null) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1609"
                            (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeStart();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1611"
                        {
                            var _err = @:assignType (_tc.handshakeContext(_ctx) : stdgo.Error);
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1612"
                                {
                                    {};
                                    stdgo.Go.routine(() -> (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close());
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1613"
                                if ((({
                                    final value = _trace;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone != null) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1614"
                                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone((new stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState), _err);
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1616"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                    _pconn = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                        var _cs = @:assignType (_tc.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1619"
                        if ((({
                            final value = _trace;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone != null) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1620"
                            (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeDone(_cs?.__copy__(), (null : stdgo.Error));
                        };
                        (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState = (stdgo.Go.setRef(_cs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
                    };
                };
            } else {
                var __tmp__ = _t._dial(_ctx, ("tcp" : stdgo.GoString), _cm._addr()?.__copy__()), _conn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1626"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1627"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                        _pconn = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn = _conn;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1630"
                if (_cm._scheme() == (("https" : stdgo.GoString))) {
                    var _firstTLSHost:stdgo.GoString = ("" : stdgo.GoString);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1632"
                    {
                        {
                            var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_cm._addr()?.__copy__());
                            _firstTLSHost = @:tmpset0 __tmp__._0?.__copy__();
                            _err = @:tmpset0 __tmp__._2;
                        };
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1633"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1635"
                    {
                        _err = _pconn._addTLS(_ctx, _firstTLSHost?.__copy__(), _trace);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1636"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _wrapErr(_err) };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1642"
            if (({
                final value = _cm._proxyURL;
                (value == null || (value : Dynamic).__nil__);
            })) {} else if ((@:checkr _cm._proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == (("socks5" : stdgo.GoString))) {
                var _conn = @:assignType ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn : stdgo._internal.net.Net_conn.Conn);
                var _d = stdgo._internal.net.http.Http__socksnewdialer._socksNewDialer(("tcp" : stdgo.GoString), (_conn.remoteAddr().string() : stdgo.GoString)?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1648"
                {
                    var _u = (@:checkr _cm._proxyURL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
                    if (({
                        final value = _u;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        var _auth = (stdgo.Go.setRef(({ username : _u.username()?.__copy__() } : stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_socksusernamepassworddott_socksusernamepassword.__type__stdgodot_internaldotnetdothttpdotHttp_t_socksusernamepassworddotT_socksUsernamePassword })) : stdgo.Ref<stdgo._internal.net.http.Http_t_socksusernamepassword.T_socksUsernamePassword>);
                        {
                            var __tmp__ = _u.password();
                            (@:checkr _auth ?? throw stdgo.Error._nullPointerDereference.__underlying__()).password = @:tmpset0 __tmp__._0?.__copy__();
                        };
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authMethods = (new stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>(2, 2, ...[(0 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod), (2 : stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod)]).__setNumber32__() : stdgo.Slice<stdgo._internal.net.http.Http_t_socksauthmethod.T_socksAuthMethod>);
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authenticate = _auth.authenticate;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1659"
                {
                    var __tmp__ = _d.dialWithConn(_ctx, _conn, ("tcp" : stdgo.GoString), _cm._targetAddr?.__copy__()), __12:stdgo._internal.net.Net_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1660"
                        _conn.close();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1661"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            } else if (_cm._targetScheme == (("http" : stdgo.GoString))) {
                (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isProxy = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1665"
                {
                    var _pa = @:assignType (_cm._proxyAuth()?.__copy__() : stdgo.GoString);
                    if (_pa != ((stdgo.Go.str() : stdgo.GoString))) {
                        (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mutateHeaderFunc = function(_h:stdgo._internal.net.http.Http_header.Header):Void {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1667"
                            _h.set(("Proxy-Authorization" : stdgo.GoString), _pa?.__copy__());
                        };
                    };
                };
            } else if (_cm._targetScheme == (("https" : stdgo.GoString))) {
                var _conn = @:assignType ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn : stdgo._internal.net.Net_conn.Conn);
                var _hdr:stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1673"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getProxyConnectHeader != null) {
                    var _err:stdgo.Error = (null : stdgo.Error);
                    {
                        var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getProxyConnectHeader(_ctx, _cm._proxyURL, _cm._targetAddr?.__copy__());
                        _hdr = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1676"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1677"
                        _conn.close();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1678"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                } else {
                    _hdr = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxyConnectHeader;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1683"
                if (_hdr == null) {
                    _hdr = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1686"
                {
                    var _pa = @:assignType (_cm._proxyAuth()?.__copy__() : stdgo.GoString);
                    if (_pa != ((stdgo.Go.str() : stdgo.GoString))) {
                        _hdr = _hdr.clone();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1688"
                        _hdr.set(("Proxy-Authorization" : stdgo.GoString), _pa?.__copy__());
                    };
                };
                var _connectReq = (stdgo.Go.setRef(({ method : ("CONNECT" : stdgo.GoString), uRL : (stdgo.Go.setRef(({ opaque : _cm._targetAddr?.__copy__() } : stdgo._internal.net.url.Url_url.URL), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>), host : _cm._targetAddr?.__copy__(), header : _hdr } : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
                var _connectCtx = @:assignType (_ctx : stdgo._internal.context.Context_context.Context);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1703"
                if (_ctx.done() == null) {
                    var __tmp__ = stdgo._internal.context.Context_withtimeout.withTimeout(_ctx, (60000000000i64 : stdgo._internal.time.Time_duration.Duration)), _newCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
                    {
                        final __f__ = _cancel;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    _connectCtx = _newCtx;
                };
                var _didReadResponse = (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
                var _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _err:stdgo.Error = (null : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1715"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
                        try {
                            {
                                var _a0 = _didReadResponse;
                                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
                            };
                            _err = _connectReq.write(_conn);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1718"
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1719"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return;
                                };
                            };
                            var _br = stdgo._internal.bufio.Bufio_newreader.newReader(_conn);
                            {
                                var __tmp__ = stdgo._internal.net.http.Http_readresponse.readResponse(_br, _connectReq);
                                _resp = @:tmpset0 __tmp__._0;
                                _err = @:tmpset0 __tmp__._1;
                            };
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                if (stdgo.Go.recover_exception != null) {
                                    final e = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    @:throw1 throw e;
                                };
                                return;
                            };
                        } catch(__exception__) {
                            {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                                    if (__exception__.message == "__return__") throw "__return__";
                                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                                };
                                stdgo.Go.recover_exception = exe;
                                {
                                    function f() {
                                        try {
                                            {
                                                for (defer in __deferstack__) {
                                                    if (defer.ran) continue;
                                                    defer.ran = true;
                                                    defer.f();
                                                };
                                            };
                                        } catch(__exception__2) {
                                            var exe:Dynamic = __exception__2.native;
                                            if ((exe is haxe.ValueException)) exe = exe.value;
                                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                                if (__exception__.message == "__return__") throw "__return__";
                                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                                            };
                                            stdgo.Go.recover_exception = exe;
                                            f();
                                        };
                                    };
                                    f();
                                };
                                if (stdgo.Go.recover_exception != null) {
                                    final e = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    @:throw3 throw e;
                                };
                                return;
                            };
                        };
                    };
                    a();
                }));
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1726"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _connectCtx.done();
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1728"
                                    _conn.close();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1729"
                                    _didReadResponse.__get__();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1730"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _connectCtx.err() };
                                            _pconn = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _pconn = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _didReadResponse;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {};
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1734"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1735"
                    _conn.close();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1736"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _pconn = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1739"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).onProxyConnectResponse != null) {
                    _err = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).onProxyConnectResponse(_ctx, _cm._proxyURL, _connectReq, _resp);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1741"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1742"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _pconn = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1746"
                if ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode != ((200 : stdgo.GoInt))) {
                    var __tmp__ = stdgo._internal.strings.Strings_cut.cut((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).status?.__copy__(), (" " : stdgo.GoString)), __12:stdgo.GoString = __tmp__._0, _text:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1748"
                    _conn.close();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1749"
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1750"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("unknown status code" : stdgo.GoString)) };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _pconn = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1752"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(_text?.__copy__()) };
                            _pconn = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _pconn = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1756"
            if ((({
                final value = _cm._proxyURL;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (_cm._targetScheme == ("https" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1757"
                {
                    var _err = @:assignType (_pconn._addTLS(_ctx, _cm._tlsHost()?.__copy__(), _trace) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1758"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                _pconn = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _pconn = __ret__._0;
                            _err = __ret__._1;
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1762"
            {
                var _s = (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState;
                if (((({
                    final value = _s;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).negotiatedProtocolIsMutual : Bool) && ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).negotiatedProtocol != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1763"
                    {
                        var __tmp__ = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto != null && (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto.__exists__((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).negotiatedProtocol?.__copy__()) ? { _0 : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto[(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).negotiatedProtocol?.__copy__()], _1 : true } : { _0 : null, _1 : false }), _next:(stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            var _alt = @:assignType (_next(_cm._targetAddr?.__copy__(), (stdgo.Go.typeAssert(({
                                final __t__ = (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>)) : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1765"
                            {
                                var __tmp__ = @:castTranslate try {
                                    { _0 : (stdgo.Go.typeAssert(({
                                        final __t__ = _alt;
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_erringroundtripperdott_erringroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_t_erringroundtripperdotT_erringRoundTripper) : stdgo._internal.net.http.Http_t_erringroundtripper.T_erringRoundTripper), _1 : true };
                                } catch(__exception__) {
                                    { _0 : (null : stdgo._internal.net.http.Http_t_erringroundtripper.T_erringRoundTripper), _1 : false };
                                }, _e = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1767"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _e.roundTripErr() };
                                            _pconn = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _pconn = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1769"
                            {
                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.setRef(({ _t : _t, _cacheKey : (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheKey?.__copy__(), _alt : _alt } : stdgo._internal.net.http.Http_t_persistconn.T_persistConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>), _1 : (null : stdgo.Error) };
                                    _pconn = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                                _pconn = __ret__._0;
                                _err = __ret__._1;
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                };
            };
            (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br = stdgo._internal.bufio.Bufio_newreadersize.newReaderSize(stdgo.Go.asInterface(_pconn, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn })), _t._readBufferSize());
            (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw = stdgo._internal.bufio.Bufio_newwritersize.newWriterSize(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter(_pconn) : stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconnwriterdott_persistconnwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconnwriterdotT_persistConnWriter), _t._writeBufferSize());
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1776"
            {
                {};
                stdgo.Go.routine(() -> _pconn._readLoop());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1777"
            {
                {};
                stdgo.Go.routine(() -> _pconn._writeLoop());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1778"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pconn, _1 : (null : stdgo.Error) };
                    _pconn = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _pconn = __ret__._0;
                _err = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _pconn, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _pconn, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _decConnsPerHost( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _key:stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1483"
            if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxConnsPerHost <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1484"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1487"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _n = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost[_key] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1490"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1493"
                throw new stdgo.AnyInterface(("net/http: internal error: connCount underflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1500"
            {
                var _q = @:assignType (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait[_key] ?? ({} : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue))?.__copy__() : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue);
                if ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                    var _done = @:assignType (false : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1502"
                    while ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                        var _w = _q._popFront();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1504"
                        if (_w._waiting()) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1505"
                            {
                                final __tmp__0 = _w;
                                stdgo.Go.routine(() -> _t._dialConnFor(__tmp__0));
                            };
                            _done = true;
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1507"
                            break;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1510"
                    if (_q._len() == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1511"
                        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait.__remove__(_key);
                    } else {
                        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait[_key] = _q?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1517"
                    if (_done) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1518"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1523"
            {
                _n--;
                if (_n == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1524"
                    if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost.__remove__(_key);
                } else {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost[_key] = _n;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _dialConnFor( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                final __f__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._afterDial;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = _t._dialConn((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cm?.__copy__()), _pc:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            var _delivered = @:assignType (_w._tryDeliver(_pc, _err) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1469"
            if (((_err == null) && ((!_delivered || ((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt != null) : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1473"
                _t._putOrCloseIdleConn(_pc);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1475"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1476"
                _t._decConnsPerHost((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key?.__copy__());
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _queueForDial( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1434"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._beforeDial();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1435"
            if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxConnsPerHost <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1436"
                {
                    final __tmp__0 = _w;
                    stdgo.Go.routine(() -> _t._dialConnFor(__tmp__0));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1437"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1440"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1443"
            {
                var _n = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
                if ((_n < (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxConnsPerHost : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1444"
                    if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost == null) {
                        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost = (({
                            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.GoInt>();
                            x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey);
                            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                            {};
                            cast x;
                        } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.GoInt>) : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.GoInt>);
                    };
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHost[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key] = (_n + (1 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1448"
                    {
                        final __tmp__0 = _w;
                        stdgo.Go.routine(() -> _t._dialConnFor(__tmp__0));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1449"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1452"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait == null) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait = (({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey);
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>) : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>);
            };
            var _q = @:assignType (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key] ?? ({} : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue))?.__copy__() : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1456"
            _q._cleanFront();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1457"
            _q._pushBack(_w);
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connsPerHostWait[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key] = _q?.__copy__();
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _getConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _treq:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>, _cm:stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _pc = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>), _err = (null : stdgo.Error);
        try {
            var _req = (@:checkr _treq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request;
            var _trace = (@:checkr _treq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace;
            var _ctx = @:assignType (_req.context() : stdgo._internal.context.Context_context.Context);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1353"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getConn != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1354"
                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getConn(_cm._addr()?.__copy__());
            };
            var _w = (stdgo.Go.setRef(({ _cm : _cm?.__copy__(), _key : _cm._key()?.__copy__(), _ctx : _ctx, _ready : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>((1 : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _beforeDial : stdgo._internal.net.http.Http__testhookprependingdial._testHookPrePendingDial, _afterDial : stdgo._internal.net.http.Http__testhookpostpendingdial._testHookPostPendingDial } : stdgo._internal.net.http.Http_t_wantconn.T_wantConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_wantconndott_wantconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_wantconndotT_wantConn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1366"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1367"
                            _w._cancel(_t, _err);
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1372"
            {
                var _delivered = @:assignType (_t._queueForIdleConn(_w) : Bool);
                if (_delivered) {
                    var _pc = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1376"
                    if ((((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt == null && ({
                        final value = _trace;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) : Bool) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gotConn != null) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1377"
                        (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gotConn(_pc._gotIdleConnTrace((@:checkr _pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleAt?.__copy__())?.__copy__());
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1382"
                    _t._setReqCanceler((@:checkr _treq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), function(_0:stdgo.Error):Void {});
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1383"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : _pc, _1 : (null : stdgo.Error) };
                            _pc = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _pc = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var _cancelc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1387"
            _t._setReqCanceler((@:checkr _treq ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelKey?.__copy__(), function(_err:stdgo.Error):Void {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1387"
                _cancelc.__send__(_err);
            });
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1390"
            _t._queueForDial(_w);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1393"
            {
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ready;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1397"
                                    if ((((({
                                        final value = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc;
                                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                    }) && (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt == null : Bool) && ({
                                        final value = _trace;
                                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                    }) : Bool) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gotConn != null) : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1398"
                                        (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).gotConn(({ conn : (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn, reused : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc._isReused() } : stdgo._internal.net.http.httptrace.Httptrace_gotconninfo.GotConnInfo));
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1400"
                                    if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1404"
                                        {
                                            var __select__ = true;
                                            var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
                                            while (__select__) {
                                                if ({
                                                    if (__c__0 == null) {
                                                        __c__0 = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel;
                                                    };
                                                    __c__0 != null && __c__0.__isGet__(true);
                                                }) {
                                                    __select__ = false;
                                                    {
                                                        __c__0.__get__();
                                                        {
                                                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1406"
                                                            {
                                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errrequestcanceledconn._errRequestCanceledConn };
                                                                    _pc = __tmp__._0;
                                                                    _err = __tmp__._1;
                                                                    __tmp__;
                                                                };
                                                                _pc = __ret__._0;
                                                                _err = __ret__._1;
                                                                for (defer in __deferstack__) {
                                                                    if (defer.ran) continue;
                                                                    defer.ran = true;
                                                                    defer.f();
                                                                };
                                                                return __ret__;
                                                            };
                                                        };
                                                    };
                                                } else if ({
                                                    if (__c__1 == null) {
                                                        __c__1 = _req.context().done();
                                                    };
                                                    __c__1 != null && __c__1.__isGet__(true);
                                                }) {
                                                    __select__ = false;
                                                    {
                                                        __c__1.__get__();
                                                        {
                                                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1408"
                                                            {
                                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _req.context().err() };
                                                                    _pc = __tmp__._0;
                                                                    _err = __tmp__._1;
                                                                    __tmp__;
                                                                };
                                                                _pc = __ret__._0;
                                                                _err = __ret__._1;
                                                                for (defer in __deferstack__) {
                                                                    if (defer.ran) continue;
                                                                    defer.ran = true;
                                                                    defer.f();
                                                                };
                                                                return __ret__;
                                                            };
                                                        };
                                                    };
                                                } else if ({
                                                    if (__c__2 == null) {
                                                        __c__2 = _cancelc;
                                                    };
                                                    __c__2 != null && __c__2.__isGet__(true);
                                                }) {
                                                    __select__ = false;
                                                    {
                                                        var _err = __c__2.__get__();
                                                        {
                                                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1410"
                                                            if (({
                                                                final __t__ = _err;
                                                                if (__t__ == null) {
                                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                                } else {
                                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                                };
                                                            }) == (({
                                                                final __t__ = stdgo._internal.net.http.Http__errrequestcanceled._errRequestCanceled;
                                                                if (__t__ == null) {
                                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                                } else {
                                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                                };
                                                            }))) {
                                                                _err = stdgo._internal.net.http.Http__errrequestcanceledconn._errRequestCanceledConn;
                                                            };
                                                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1413"
                                                            {
                                                                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                                                    _pc = __tmp__._0;
                                                                    _err = __tmp__._1;
                                                                    __tmp__;
                                                                };
                                                                _pc = __ret__._0;
                                                                _err = __ret__._1;
                                                                for (defer in __deferstack__) {
                                                                    if (defer.ran) continue;
                                                                    defer.ran = true;
                                                                    defer.f();
                                                                };
                                                                return __ret__;
                                                            };
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {};
                                                };
                                                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                                                stdgo._internal.internal.Async.tick();
                                            };
                                            __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1418"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pc, _1 : (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _pc = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cancel;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1420"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errrequestcanceledconn._errRequestCanceledConn };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _pc = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if ({
                            if (__c__2 == null) {
                                __c__2 = _req.context().done();
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__2.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1422"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _req.context().err() };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _pc = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        } else if ({
                            if (__c__3 == null) {
                                __c__3 = _cancelc;
                            };
                            __c__3 != null && __c__3.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _err = __c__3.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1424"
                                    if (({
                                        final __t__ = _err;
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    }) == (({
                                        final __t__ = stdgo._internal.net.http.Http__errrequestcanceled._errRequestCanceled;
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    }))) {
                                        _err = stdgo._internal.net.http.Http__errrequestcanceledconn._errRequestCanceledConn;
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1427"
                                    {
                                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                                            _pc = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _pc = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
__c__3.__reset__();
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return { _0 : _pc, _1 : _err };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _pc, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _pc, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _customDialTLS( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var _conn = (null : stdgo._internal.net.Net_conn.Conn), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1334"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLSContext != null) {
            {
                var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLSContext(_ctx, _network?.__copy__(), _addr?.__copy__());
                _conn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        } else {
            {
                var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLS(_network?.__copy__(), _addr?.__copy__());
                _conn = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1339"
        if (((_conn == null) && (_err == null) : Bool)) {
            _err = stdgo._internal.errors.Errors_new_.new_(("net/http: Transport.DialTLS or DialTLSContext returned (nil, nil)" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1342"
        return { _0 : _conn, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _dial( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1182"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialContext != null) {
            var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialContext(_ctx, _network?.__copy__(), _addr?.__copy__()), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1184"
            if (((_c == null) && (_err == null) : Bool)) {
                _err = stdgo._internal.errors.Errors_new_.new_(("net/http: Transport.DialContext hook returned (nil, nil)" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1187"
            return { _0 : _c, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1189"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dial != null) {
            var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dial(_network?.__copy__(), _addr?.__copy__()), _c:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1191"
            if (((_c == null) && (_err == null) : Bool)) {
                _err = stdgo._internal.errors.Errors_new_.new_(("net/http: Transport.Dial hook returned (nil, nil)" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1194"
            return { _0 : _c, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1196"
        return stdgo._internal.net.http.Http__zerodialer._zeroDialer.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _replaceReqCanceler( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _key:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, _fn:stdgo.Error -> Void):Bool {
        return true;
    }
    @:keep
    @:tdfield
    static public function _setReqCanceler( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _key:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, _fn:stdgo.Error -> Void):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1148"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1150"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler == null) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler = (({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, stdgo.Error -> Void>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_cancelkeydott_cancelkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_cancelkeydotT_cancelKey);
                    x.__defaultValue__ = () -> null;
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, stdgo.Error -> Void>) : stdgo.GoMap<stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, stdgo.Error -> Void>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1153"
            if (_fn != null) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler[_key] = _fn;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1156"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler.__remove__(_key);
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _removeIdleConnLocked( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1116"
        if (({
            final value = (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1117"
            (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.stop();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1119"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._remove(_pconn);
        var _key = @:assignType ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheKey?.__copy__() : stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey);
        var _pconns = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>));
        var _removed:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1123"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = (_pconns.length);
                    if (__value__ == ((0 : stdgo.GoInt))) {
                        break;
                    } else if (__value__ == ((1 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1127"
                        if (_pconns[(0 : stdgo.GoInt)] == (_pconn)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1128"
                            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn.__remove__(_key);
                            _removed = true;
                        };
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1132"
                        if (_pconns != null) for (_i => _v in _pconns) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1133"
                            if (_v != (_pconn)) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1134"
                                continue;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1138"
                            (_pconns.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>).__copyTo__((_pconns.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>));
                            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn[_key] = (_pconns.__slice__(0, ((_pconns.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>);
                            _removed = true;
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1141"
                            break;
                        };
                    };
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1144"
        return _removed;
    }
    @:keep
    @:tdfield
    static public function _removeIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1109"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1111"
            {
                final __ret__:Bool = _t._removeIdleConnLocked(_pconn);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return false;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _queueForIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _w:stdgo.Ref<stdgo._internal.net.http.Http_t_wantconn.T_wantConn>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _delivered = false;
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1022"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableKeepAlives) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1023"
                return _delivered = false;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1026"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeIdle = false;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1033"
            if (({
                final value = _w;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1035"
                {
                    final __ret__:Bool = _delivered = false;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _oldTime:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1042"
            if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleConnTimeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                _oldTime = stdgo._internal.time.Time_now.now().add(-(@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleConnTimeout)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1047"
            {
                var __tmp__ = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn != null && (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn.__exists__((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key?.__copy__()) ? { _0 : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>), _1 : false }), _list:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    var _stop = @:assignType (false : Bool);
                    var _delivered = @:assignType (false : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1050"
                    while ((((_list.length) > (0 : stdgo.GoInt) : Bool) && !_stop : Bool)) {
                        var _pconn = _list[((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        var _tooOld = @:assignType (!_oldTime.isZero() && (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleAt.round((0i64 : stdgo._internal.time.Time_duration.Duration)).before(_oldTime?.__copy__()) : Bool);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1057"
                        if (_tooOld) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1061"
                            {
                                {};
                                stdgo.Go.routine(() -> _pconn._closeConnIfStillIdle());
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1063"
                        if ((_pconn._isBroken() || _tooOld : Bool)) {
                            _list = (_list.__slice__(0, ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1070"
                            continue;
                        };
                        _delivered = _w._tryDeliver(_pconn, (null : stdgo.Error));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1073"
                        if (_delivered) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1074"
                            if ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt != null) {} else {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1080"
                                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._remove(_pconn);
                                _list = (_list.__slice__(0, ((_list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>);
                            };
                        };
                        _stop = true;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1086"
                    if (((_list.length) > (0 : stdgo.GoInt) : Bool)) {
                        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key] = _list;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1089"
                        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn.__remove__((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1091"
                    if (_stop) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1092"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _delivered;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1097"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait == null) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait = (({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey);
                    x.__defaultValue__ = () -> ({} : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>) : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue>);
            };
            var _q = @:assignType (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key] ?? ({} : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue))?.__copy__() : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1101"
            _q._cleanFront();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1102"
            _q._pushBack(_w);
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait[(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._key] = _q?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1104"
            {
                final __ret__:Bool = _delivered = false;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _delivered;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _delivered;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tryPutIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L926"
            if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableKeepAlives || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxIdleConnsPerHost < (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L927"
                return stdgo._internal.net.http.Http__errkeepalivesdisabled._errKeepAlivesDisabled;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L929"
            if (_pconn._isBroken()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L930"
                return stdgo._internal.net.http.Http__errconnbroken._errConnBroken;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L932"
            _pconn._markReused();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L934"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L940"
            if ((((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt != null) && ({
                final value = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._m[_pconn] ?? (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>));
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L941"
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _key = @:assignType ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheKey?.__copy__() : stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L949"
            {
                var __tmp__ = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait != null && (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait.__exists__(_key?.__copy__()) ? { _0 : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait[_key?.__copy__()], _1 : true } : { _0 : ({} : stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue), _1 : false }), _q:stdgo._internal.net.http.Http_t_wantconnqueue.T_wantConnQueue = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    var _done = @:assignType (false : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L951"
                    if ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt == null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L954"
                        while ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                            var _w = _q._popFront();
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L956"
                            if (_w._tryDeliver(_pconn, (null : stdgo.Error))) {
                                _done = true;
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L958"
                                break;
                            };
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L966"
                        while ((_q._len() > (0 : stdgo.GoInt) : Bool)) {
                            var _w = _q._popFront();
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L968"
                            _w._tryDeliver(_pconn, (null : stdgo.Error));
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L971"
                    if (_q._len() == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L972"
                        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait.__remove__(_key);
                    } else {
                        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConnWait[_key] = _q?.__copy__();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L976"
                    if (_done) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L977"
                        {
                            final __ret__:stdgo.Error = (null : stdgo.Error);
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L981"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeIdle) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L982"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return stdgo._internal.net.http.Http__errcloseidle._errCloseIdle;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L984"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn == null) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn = (({
                    final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>>();
                    x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connectmethodkeydott_connectmethodkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_connectmethodkeydotT_connectMethodKey);
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>>) : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>>);
            };
            var _idles = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn[_key] ?? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L988"
            if (((_idles.length) >= _t._maxIdleConnsPerHost() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L989"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return stdgo._internal.net.http.Http__errtoomanyidlehost._errTooManyIdleHost;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L991"
            if (_idles != null) for (__12 => _exist in _idles) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L992"
                if (_exist == (_pconn)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L993"
                    stdgo._internal.log.Log_fatalf.fatalf(("dup idle pconn %p in freelist" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_pconn, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_persistconndott_persistconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_persistconndotT_persistConn }))));
                };
            };
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn[_key] = (_idles.__append__(_pconn) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L997"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._add(_pconn);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L998"
            if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxIdleConns != (0 : stdgo.GoInt)) && ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._len() > (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxIdleConns : Bool) : Bool)) {
                var _oldest = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU._removeOldest();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1000"
                _oldest._close(stdgo._internal.net.http.Http__errtoomanyidle._errTooManyIdle);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1001"
                _t._removeIdleConnLocked(_oldest);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1007"
            if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleConnTimeout > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool) && ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt == null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1008"
                if (({
                    final value = (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1009"
                    (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.reset((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleConnTimeout);
                } else {
                    (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer = stdgo._internal.time.Time_afterfunc.afterFunc((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleConnTimeout, _pconn._closeConnIfStillIdle);
                };
            };
            (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleAt = stdgo._internal.time.Time_now.now()?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1015"
            {
                final __ret__:stdgo.Error = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return (null : stdgo.Error);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _maxIdleConnsPerHost( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L914"
        {
            var _v = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxIdleConnsPerHost : stdgo.GoInt);
            if (_v != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L915"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L917"
        return (2 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _putOrCloseIdleConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L908"
        {
            var _err = @:assignType (_t._tryPutIdleConn(_pconn) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L909"
                _pconn._close(_err);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _connectMethodForRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _treq:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>):{ var _0 : stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var _cm = ({} : stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod), _err = (null : stdgo.Error);
        _cm._targetScheme = (@:checkr (@:checkr _treq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__();
        _cm._targetAddr = stdgo._internal.net.http.Http__canonicaladdr._canonicalAddr((@:checkr _treq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.uRL)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L850"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxy != null) {
            {
                var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxy((@:checkr _treq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request);
                _cm._proxyURL = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        _cm._onlyH1 = _treq._requiresHTTP1();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L854"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod; var _1 : stdgo.Error; } = { _0 : _cm?.__copy__(), _1 : _err };
            _cm = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _cancelRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _key:stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey, _err:stdgo.Error):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L812"
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqMu.lock();
            {
                final __f__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _cancel = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler[_key] ?? null : stdgo.Error -> Void);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L815"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqCanceler.__remove__(_key);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L816"
            if (_cancel != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L817"
                _cancel(_err);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L820"
            {
                final __ret__:Bool = _cancel != null;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return false;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function cancelRequest( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L804"
        _t._cancelRequest((new stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey(_req) : stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey), stdgo._internal.net.http.Http__errrequestcanceled._errRequestCanceled);
    }
    @:keep
    @:tdfield
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L780"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoOnce.do_(_t._onceSetNextProtoDefaults);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L781"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.lock();
        var _m = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn;
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleConn = (({
            final x:stdgo.GoMap.GoObjectMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>> = null;
            cast x;
        } : stdgo.GoMap<stdgo._internal.net.http.Http_t_connectmethodkey.T_connectMethodKey, stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn>>>));
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeIdle = true;
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleLRU = (new stdgo._internal.net.http.Http_t_connlru.T_connLRU() : stdgo._internal.net.http.Http_t_connlru.T_connLRU);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L786"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleMu.unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L787"
        if (_m != null) for (__12 => _conns in _m) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L788"
            if (_conns != null) for (__13 => _pconn in _conns) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L789"
                _pconn._close(stdgo._internal.net.http.Http__errcloseidleconns._errCloseIdleConns);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L792"
        {
            var _t2 = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h2transport : stdgo._internal.net.http.Http_t_h2transport.T_h2Transport);
            if (_t2 != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L793"
                _t2.closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function registerProtocol( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _scheme:stdgo.GoString, _rt:stdgo._internal.net.http.Http_roundtripper.RoundTripper):Void {}
    @:keep
    @:tdfield
    static public function _roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L514"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoOnce.do_(_t._onceSetNextProtoDefaults);
        var _ctx = @:assignType (_req.context() : stdgo._internal.context.Context_context.Context);
        var _trace = stdgo._internal.net.http.httptrace.Httptrace_contextclienttrace.contextClientTrace(_ctx);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L518"
        if (({
            final value = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L519"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L520"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.URL" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L522"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L523"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L524"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: nil Request.Header" : stdgo.GoString)) };
        };
        var _scheme = @:assignType ((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__() : stdgo.GoString);
        var _isHTTP = @:assignType ((_scheme == ("http" : stdgo.GoString)) || (_scheme == ("https" : stdgo.GoString)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L528"
        if (_isHTTP) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L529"
            if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) for (_k => _vv in (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L530"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldname.validHeaderFieldName(_k?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L531"
                    _req._closeBody();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L532"
                    return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid header field name %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L534"
                if (_vv != null) for (__12 => _v in _vv) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L535"
                    if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldvalue.validHeaderFieldValue(_v?.__copy__())) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L536"
                        _req._closeBody();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L538"
                        return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid header field value for %q" : stdgo.GoString), new stdgo.AnyInterface(_k, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                    };
                };
            };
        };
        var _origReq = _req;
        var _cancelKey = @:assignType (new stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey(_origReq) : stdgo._internal.net.http.Http_t_cancelkey.T_cancelKey);
        _req = stdgo._internal.net.http.Http__setuprewindbody._setupRewindBody(_req);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L548"
        {
            var _altRT = @:assignType (_t._alternateRoundTripper(_req) : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
            if (_altRT != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L549"
                {
                    var __tmp__ = _altRT.roundTrip(_req), _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != (({
                        final __t__ = stdgo._internal.net.http.Http_errskipaltprotocol.errSkipAltProtocol;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L550"
                        return { _0 : _resp, _1 : _err };
                    };
                };
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.net.http.Http__rewindbody._rewindBody(_req);
                    _req = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L554"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L555"
                    return { _0 : null, _1 : _err };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L558"
        if (!_isHTTP) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L559"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L560"
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("unsupported protocol scheme" : stdgo.GoString), _scheme?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L562"
        if ((((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != (stdgo.Go.str() : stdgo.GoString)) && !stdgo._internal.net.http.Http__validmethod._validMethod((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L563"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L564"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid method %q" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L566"
        if ((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L567"
            _req._closeBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L568"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http: no Host in request URL" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L571"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L572"
            {
                var __select__ = true;
                var __c__0 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _ctx.done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L574"
                                _req._closeBody();
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L575"
                                return { _0 : null, _1 : _ctx.err() };
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
            };
            var _treq = (stdgo.Go.setRef(({ request : _req, _trace : _trace, _cancelKey : _cancelKey?.__copy__() } : stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_transportrequestdott_transportrequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_transportrequestdotT_transportRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>);
            var __tmp__ = _t._connectMethodForRequest(_treq), _cm:stdgo._internal.net.http.Http_t_connectmethod.T_connectMethod = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L582"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L583"
                _req._closeBody();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L584"
                return { _0 : null, _1 : _err };
            };
            var __tmp__ = _t._getConn(_treq, _cm?.__copy__()), _pconn:stdgo.Ref<stdgo._internal.net.http.Http_t_persistconn.T_persistConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L592"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L593"
                _t._setReqCanceler(_cancelKey?.__copy__(), null);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L594"
                _req._closeBody();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L595"
                return { _0 : null, _1 : _err };
            };
            var _resp:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L599"
            if ((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L601"
                _t._setReqCanceler(_cancelKey?.__copy__(), null);
                {
                    var __tmp__ = (@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._alt.roundTrip(_req);
                    _resp = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _pconn._roundTrip(_treq);
                    _resp = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L606"
            if (_err == null) {
                (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request = _origReq;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L608"
                return { _0 : _resp, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L612"
            if (stdgo._internal.net.http.Http__http2isnocachedconnerror._http2isNoCachedConnError(_err)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L613"
                if (_t._removeIdleConn(_pconn)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L614"
                    _t._decConnsPerHost((@:checkr _pconn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cacheKey?.__copy__());
                };
            } else if (!_pconn._shouldRetryRequest(_req, _err)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L619"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nothingwrittenerrordott_nothingwrittenerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_nothingwrittenerrordotT_nothingWrittenError) : stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError), _1 : true };
                    } catch(__exception__) {
                        { _0 : ({} : stdgo._internal.net.http.Http_t_nothingwrittenerror.T_nothingWrittenError), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _err = _e._error;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L622"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_transportreadfromservererrordott_transportreadfromservererror.__type__stdgodot_internaldotnetdothttpdotHttp_t_transportreadfromservererrordotT_transportReadFromServerError) : stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError), _1 : true };
                    } catch(__exception__) {
                        { _0 : ({} : stdgo._internal.net.http.Http_t_transportreadfromservererror.T_transportReadFromServerError), _1 : false };
                    }, _e = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _err = _e._err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L625"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>), _1 : false };
                    }, _b = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && !(@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didClose : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L629"
                        _req._closeBody();
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L631"
                return { _0 : null, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L633"
            stdgo._internal.net.http.Http__testhookroundtripretried._testHookRoundTripRetried();
            {
                var __tmp__ = stdgo._internal.net.http.Http__rewindbody._rewindBody(_req);
                _req = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L637"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L638"
                return { _0 : null, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _alternateRoundTripper( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo._internal.net.http.Http_roundtripper.RoundTripper {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L505"
        if (!_t._useRegisteredProtocol(_req)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L506"
            return (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._altProto.load(), stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper })) : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_roundtripper.RoundTripper>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo._internal.net.http.Http_roundtripper.RoundTripper>), _1 : false };
        }, _altProto = __tmp__._0, __12 = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L509"
        return (_altProto[(@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme] ?? (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper));
    }
    @:keep
    @:tdfield
    static public function _useRegisteredProtocol( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L491"
        if ((((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ("https" : stdgo.GoString)) && _req._requiresHTTP1() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L496"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L498"
        return true;
    }
    @:keep
    @:tdfield
    static public function _onceSetNextProtoDefaults( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):Void {}
    @:keep
    @:tdfield
    static public function _hasCustomTLSDialer( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L362"
        return (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLS != null) || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLSContext != null) : Bool);
    }
    @:keep
    @:tdfield
    static public function clone( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L314"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextProtoOnce.do_(_t._onceSetNextProtoDefaults);
        var _t2 = (stdgo.Go.setRef(({ proxy : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxy, onProxyConnectResponse : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).onProxyConnectResponse, dialContext : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialContext, dial : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dial, dialTLS : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLS, dialTLSContext : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLSContext, tLSHandshakeTimeout : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSHandshakeTimeout, disableKeepAlives : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableKeepAlives, disableCompression : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableCompression, maxIdleConns : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxIdleConns, maxIdleConnsPerHost : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxIdleConnsPerHost, maxConnsPerHost : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxConnsPerHost, idleConnTimeout : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleConnTimeout, responseHeaderTimeout : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).responseHeaderTimeout, expectContinueTimeout : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expectContinueTimeout, proxyConnectHeader : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proxyConnectHeader.clone(), getProxyConnectHeader : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getProxyConnectHeader, maxResponseHeaderBytes : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxResponseHeaderBytes, forceAttemptHTTP2 : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).forceAttemptHTTP2, writeBufferSize : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeBufferSize, readBufferSize : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readBufferSize } : stdgo._internal.net.http.Http_transport.Transport), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_transportdottransport.__type__stdgodot_internaldotnetdothttpdotHttp_transportdotTransport })) : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L338"
        if (({
            final value = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig.clone();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L341"
        if (!(@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsNextProtoWasNil) {
            var _npm = ({
                final x = new stdgo.GoMap.GoStringMap<(stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>();
                x.__defaultValue__ = () -> null;
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, (stdgo.GoString, stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>) -> stdgo._internal.net.http.Http_roundtripper.RoundTripper>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L343"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto != null) for (_k => _v in (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto) {
                _npm[_k] = _v;
            };
            (@:checkr _t2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto = _npm;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L348"
        return _t2;
    }
    @:keep
    @:tdfield
    static public function _readBufferSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L306"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readBufferSize > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L307"
            return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readBufferSize;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L309"
        return (4096 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeBufferSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L299"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeBufferSize > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L300"
            return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeBufferSize;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L302"
        return (4096 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L66"
        if (((((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dial != null || (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialContext != null : Bool) || (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLS != null : Bool) || (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLSContext != null : Bool) || stdgo._internal.net.http.Http__jsfetchmissing._jsFetchMissing : Bool) || stdgo._internal.net.http.Http__jsfetchdisabled._jsFetchDisabled : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L67"
            return _t._roundTrip(_req);
        };
        var _ac = @:assignType (stdgo._internal.syscall.js.Js_global.global().get(("AbortController" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L71"
        if (!_ac.isUndefined()) {
            _ac = _ac.new_()?.__copy__();
        };
        var _opt = @:assignType (stdgo._internal.syscall.js.Js_global.global().get(("Object" : stdgo.GoString)).new_()?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L81"
        _opt.set(("method" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L82"
        _opt.set(("credentials" : stdgo.GoString), new stdgo.AnyInterface(("same-origin" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L83"
        {
            var _h = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("js.fetch:credentials" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L84"
                _opt.set(("credentials" : stdgo.GoString), new stdgo.AnyInterface(_h, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L85"
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("js.fetch:credentials" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L87"
        {
            var _h = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("js.fetch:mode" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L88"
                _opt.set(("mode" : stdgo.GoString), new stdgo.AnyInterface(_h, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L89"
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("js.fetch:mode" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L91"
        {
            var _h = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("js.fetch:redirect" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_h != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L92"
                _opt.set(("redirect" : stdgo.GoString), new stdgo.AnyInterface(_h, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L93"
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("js.fetch:redirect" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L95"
        if (!_ac.isUndefined()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L96"
            _opt.set(("signal" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_ac.get(("signal" : stdgo.GoString)), _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue)));
        };
        var _headers = @:assignType (stdgo._internal.syscall.js.Js_global.global().get(("Headers" : stdgo.GoString)).new_()?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L99"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) for (_key => _values in (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L100"
            if (_values != null) for (__12 => _value in _values) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L101"
                _headers.call(("append" : stdgo.GoString), new stdgo.AnyInterface(_key, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L104"
        _opt.set(("headers" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_headers, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue)));
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L106"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body != null) {
            var __tmp__ = stdgo._internal.io.Io_readall.readAll((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body), _body:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L116"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L117"
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.close();
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L118"
                return { _0 : null, _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L120"
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.close();
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L121"
            if ((_body.length) != ((0 : stdgo.GoInt))) {
                var _buf = @:assignType (stdgo._internal.net.http.Http__uint8array._uint8Array.new_(new stdgo.AnyInterface((_body.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L123"
                stdgo._internal.syscall.js.Js_copybytestojs.copyBytesToJS(_buf?.__copy__(), _body);
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L124"
                _opt.set(("body" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_buf, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue)));
            };
        };
        var _fetchPromise = @:assignType (stdgo._internal.syscall.js.Js_global.global().call(("fetch" : stdgo.GoString), new stdgo.AnyInterface(((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_opt, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_valuedotvalue.__type__stdgodot_internaldotsyscalldotjsdotJs_valuedotValue)))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
        var _respCh = (new stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>)) : stdgo.Chan<stdgo.Ref<stdgo._internal.net.http.Http_response.Response>>), _errCh = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>), _success:stdgo._internal.syscall.js.Js_func.Func = ({} : stdgo._internal.syscall.js.Js_func.Func), _failure:stdgo._internal.syscall.js.Js_func.Func = ({} : stdgo._internal.syscall.js.Js_func.Func);
        _success = stdgo._internal.syscall.js.Js_funcof.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L135"
            _success.release();
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L136"
            _failure.release();
            var _result = @:assignType (_args[(0 : stdgo.GoInt)] : stdgo._internal.syscall.js.Js_value.Value);
            var _header = @:assignType (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            var _headersIt = @:assignType (_result.get(("headers" : stdgo.GoString)).call(("entries" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L142"
            while (true) {
                var _n = @:assignType (_headersIt.call(("next" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L144"
                if (_n.get(("done" : stdgo.GoString)).bool_()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L145"
                    break;
                };
                var _pair = @:assignType (_n.get(("value" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                var __0 = @:assignType ((_pair.index((0 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = @:assignType ((_pair.index((1 : stdgo.GoInt)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _value = __1, _key = __0;
                var _ck = @:assignType (stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_key?.__copy__())?.__copy__() : stdgo.GoString);
                _header[_ck] = ((_header[_ck] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            var _contentLength = @:assignType ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
            var _clHeader = @:assignType (_header.get(("Content-Length" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L155"
            if (_clHeader != ((stdgo.Go.str() : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_clHeader?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _cl:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L158"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L159"
                    _errCh.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: ill-formed Content-Length header: %v" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L160"
                    return (null : stdgo.AnyInterface);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L162"
                if ((_cl < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L165"
                    _errCh.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid Content-Length header: %q" : stdgo.GoString), new stdgo.AnyInterface(_clHeader, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L166"
                    return (null : stdgo.AnyInterface);
                };
                _contentLength = _cl;
            } else {
                _contentLength = (-1i64 : stdgo.GoInt64);
            };
            var _b = @:assignType (_result.get(("body" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
            var _body:stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L178"
            if ((!_b.isUndefined() && !_b.isNull() : Bool)) {
                _body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _stream : _b.call(("getReader" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_t_streamreader.T_streamReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_streamreaderdott_streamreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_streamreaderdotT_streamReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_streamreaderdott_streamreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_streamreaderdotT_streamReader }));
            } else {
                _body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _arrayPromise : _result.call(("arrayBuffer" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_arrayreaderdott_arrayreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_arrayreaderdotT_arrayReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_arrayreader.T_arrayReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_arrayreaderdott_arrayreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_arrayreaderdotT_arrayReader }));
            };
            var _code = @:assignType (_result.get(("status" : stdgo.GoString)).int_() : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L187"
            _respCh.__send__((stdgo.Go.setRef(({ status : stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.net.http.Http_statustext.statusText(_code), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__(), statusCode : _code, header : _header, contentLength : _contentLength, body : _body, request : _req } : stdgo._internal.net.http.Http_response.Response), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse })) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L196"
            return (null : stdgo.AnyInterface);
        })?.__copy__();
        _failure = stdgo._internal.syscall.js.Js_funcof.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L199"
            _success.release();
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L200"
            _failure.release();
            var _err = @:assignType (_args[(0 : stdgo.GoInt)] : stdgo._internal.syscall.js.Js_value.Value);
            var _errMsg = @:assignType ((_err.call(("toString" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L208"
            {
                var _cause = @:assignType (_err.get(("cause" : stdgo.GoString))?.__copy__() : stdgo._internal.syscall.js.Js_value.Value);
                if (!_cause.isUndefined()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L211"
                    if (!_cause.get(("toString" : stdgo.GoString)).isUndefined()) {
                        _errMsg = (_errMsg + (((": " : stdgo.GoString) + (_cause.call(("toString" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    } else if (_cause.type() == ((4 : stdgo._internal.syscall.js.Js_type_.Type_))) {
                        _errMsg = (_errMsg + (((": " : stdgo.GoString) + (_cause.string() : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L217"
            _errCh.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: fetch() failed: %s" : stdgo.GoString), new stdgo.AnyInterface(_errMsg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))));
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L218"
            return (null : stdgo.AnyInterface);
        })?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L221"
        _fetchPromise.call(("then" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_success, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc)), new stdgo.AnyInterface(stdgo.Go.asInterface(_failure, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc)));
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L222"
        {
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _req.context().done();
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L224"
                                if (!_ac.isUndefined()) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L226"
                                    _ac.call(("abort" : stdgo.GoString));
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L228"
                                return { _0 : null, _1 : _req.context().err() };
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = _respCh;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _resp = __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L230"
                                return { _0 : _resp, _1 : (null : stdgo.Error) };
                            };
                        };
                    } else if ({
                        if (__c__2 == null) {
                            __c__2 = _errCh;
                        };
                        __c__2 != null && __c__2.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            var _err = __c__2.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L232"
                                return { _0 : null, _1 : _err };
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
__c__2.__reset__();
            };
            return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>), _1 : (null : stdgo.Error) };
        };
    }
}
