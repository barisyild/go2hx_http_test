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
@:keep @:allow(stdgo._internal.net.http.Http.T_conn_asInterface) class T_conn_static_extension {
    @:keep
    @:tdfield
    static public function _serve( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, _ctx:stdgo._internal.context.Context_context.Context):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1859"
            {
                var _ra = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.remoteAddr() : stdgo._internal.net.Net_addr.Addr);
                if (_ra != null) {
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteAddr = (_ra.string() : stdgo.GoString)?.__copy__();
                };
            };
            _ctx = stdgo._internal.context.Context_withvalue.withValue(_ctx, new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_localaddrcontextkey.localAddrContextKey, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_contextkeydott_contextkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_contextkeydotT_contextKey }))), ({
                final __t__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.localAddr();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            var _inFlightResponse:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1865"
                        {
                            var _err = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if ((({
                                final value = _err;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) && (_err != ({
                                final __t__ = stdgo._internal.net.http.Http_erraborthandler.errAbortHandler;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })) : Bool)) {
                                {};
                                var _buf = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                _buf = (_buf.__slice__(0, stdgo._internal.runtime.Runtime_stack.stack(_buf, false)) : stdgo.Slice<stdgo.GoUInt8>);
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1869"
                                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._logf(("http: panic serving %v: %v\n%s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteAddr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _err, new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1871"
                        if (({
                            final value = _inFlightResponse;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1872"
                            (@:checkr _inFlightResponse ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1874"
                        if (!_c._hijacked()) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1875"
                            if (({
                                final value = _inFlightResponse;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1876"
                                (@:checkr (@:checkr _inFlightResponse ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._abortPendingRead();
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1877"
                                (@:checkr _inFlightResponse ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody.close();
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1879"
                            _c._close();
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1880"
                            _c._setState((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, (4 : stdgo._internal.net.http.Http_connstate.ConnState), true);
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1884"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>), _1 : false };
                }, _tlsConn = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var _tlsTO = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._tlsHandshakeTimeout() : stdgo._internal.time.Time_duration.Duration);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1886"
                    if ((_tlsTO > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        var _dl = @:assignType (stdgo._internal.time.Time_now.now().add(_tlsTO)?.__copy__() : stdgo._internal.time.Time_time.Time);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1888"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline(_dl?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1889"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setWriteDeadline(_dl?.__copy__());
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1891"
                    {
                        var _err = @:assignType (_tlsConn.handshakeContext(_ctx) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1895"
                            {
                                var __tmp__ = @:castTranslate try {
                                    { _0 : (stdgo.Go.typeAssert(({
                                        final __t__ = _err;
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    }), _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_recordheadererrordotrecordheadererror.__type__stdgodot_internaldotcryptodottlsdotTls_recordheadererrordotRecordHeaderError) : stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError), _1 : true };
                                } catch(__exception__) {
                                    { _0 : ({} : stdgo._internal.crypto.tls.Tls_recordheadererror.RecordHeaderError), _1 : false };
                                }, _re = __tmp__._0, _ok = __tmp__._1;
                                if (((_ok && _re.conn != null : Bool) && stdgo._internal.net.http.Http__tlsrecordheaderlookslikehttp._tlsRecordHeaderLooksLikeHTTP(_re.recordHeader?.__copy__()) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1896"
                                    stdgo._internal.io.Io_writestring.writeString(_re.conn, ("HTTP/1.0 400 Bad Request\r\n\r\nClient sent an HTTP request to an HTTPS server.\n" : stdgo.GoString));
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1897"
                                    _re.conn.close();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1898"
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
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1900"
                            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._logf(("http: TLS handshake error from %s: %v" : stdgo.GoString), ({
                                final __t__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.remoteAddr();
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }));
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1901"
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
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1904"
                    if ((_tlsTO > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1905"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1906"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setWriteDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
                    };
                    (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
                    {
                        var __tmp__ = _tlsConn.connectionState()?.__copy__();
                        var x = ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
                        x.version = __tmp__?.version;
                        x.handshakeComplete = __tmp__?.handshakeComplete;
                        x.didResume = __tmp__?.didResume;
                        x.cipherSuite = __tmp__?.cipherSuite;
                        x.negotiatedProtocol = __tmp__?.negotiatedProtocol;
                        x.negotiatedProtocolIsMutual = __tmp__?.negotiatedProtocolIsMutual;
                        x.serverName = __tmp__?.serverName;
                        x.peerCertificates = __tmp__?.peerCertificates;
                        x.verifiedChains = __tmp__?.verifiedChains;
                        x.signedCertificateTimestamps = __tmp__?.signedCertificateTimestamps;
                        x.oCSPResponse = __tmp__?.oCSPResponse;
                        x.tLSUnique = __tmp__?.tLSUnique;
                        x._ekm = __tmp__?._ekm;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1910"
                    {
                        var _proto = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).negotiatedProtocol?.__copy__() : stdgo.GoString);
                        if (stdgo._internal.net.http.Http__validnextproto._validNextProto(_proto?.__copy__())) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1911"
                            {
                                var _fn = ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSNextProto[_proto] ?? null);
                                if (_fn != null) {
                                    var _h = @:assignType (new stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest(_ctx, _tlsConn, (new stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server) : stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler)) : stdgo._internal.net.http.Http_t_initalpnrequest.T_initALPNRequest);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1916"
                                    _c._setState((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, (1 : stdgo._internal.net.http.Http_connstate.ConnState), false);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1917"
                                    _fn((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server, _tlsConn, stdgo.Go.asInterface(_h, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_initalpnrequestdott_initalpnrequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_initalpnrequestdotT_initALPNRequest));
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1919"
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
            };
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx = _cancelCtx;
            {
                final __f__ = _cancelCtx;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = (stdgo.Go.setRef(({ _conn : _c } : stdgo._internal.net.http.Http_t_connreader.T_connReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connreaderdott_connreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_connreaderdotT_connReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr = stdgo._internal.net.http.Http__newbufioreader._newBufioReader(stdgo.Go.asInterface((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_connreaderdott_connreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_connreaderdotT_connReader })));
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw = stdgo._internal.net.http.Http__newbufiowritersize._newBufioWriterSize(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter(_c) : stdgo._internal.net.http.Http_t_checkconnerrorwriter.T_checkConnErrorWriter), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_checkconnerrorwriterdott_checkconnerrorwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_checkconnerrorwriterdotT_checkConnErrorWriter), (4096 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1933"
            while (true) {
                var __tmp__ = _c._readRequest(_ctx), _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1935"
                if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain != ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._initialReadLimitSize())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1937"
                    _c._setState((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, (1 : stdgo._internal.net.http.Http_connstate.ConnState), true);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1939"
                if (_err != null) {
                    {};
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1942"
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.net.http.Http__errtoolarge._errTooLarge;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        {};
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1950"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, ("HTTP/1.1 431 Request Header Fields Too Large\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n431 Request Header Fields Too Large" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1951"
                        _c._closeWriteAndWait();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1952"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    } else if (stdgo._internal.net.http.Http__isunsupportedteerror._isUnsupportedTEError(_err)) {
                        var _code = @:assignType (501 : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1963"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, ("HTTP/1.1 %d %s%sUnsupported transfer encoding" : stdgo.GoString), new stdgo.AnyInterface(_code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.net.http.Http_statustext.statusText(_code), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1964"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    } else if (stdgo._internal.net.http.Http__iscommonnetreaderror._isCommonNetReadError(_err)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1967"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1970"
                        {
                            var __tmp__ = @:castTranslate try {
                                { _0 : (stdgo.Go.typeAssert(({
                                    final __t__ = _err;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_statuserrordott_statuserror.__type__stdgodot_internaldotnetdothttpdotHttp_t_statuserrordotT_statusError) : stdgo._internal.net.http.Http_t_statuserror.T_statusError), _1 : true };
                            } catch(__exception__) {
                                { _0 : ({} : stdgo._internal.net.http.Http_t_statuserror.T_statusError), _1 : false };
                            }, _v = __tmp__._0, _ok = __tmp__._1;
                            if (_ok) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1971"
                                stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, ("HTTP/1.1 %d %s: %s%s%d %s: %s" : stdgo.GoString), new stdgo.AnyInterface(_v._code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.net.http.Http_statustext.statusText(_v._code), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v._code, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(stdgo._internal.net.http.Http_statustext.statusText(_v._code), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v._text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1972"
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
                        var _publicErr = @:assignType (("400 Bad Request" : stdgo.GoString) : stdgo.GoString);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1975"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, (((("HTTP/1.1 " : stdgo.GoString) + _publicErr?.__copy__() : stdgo.GoString) + ("\r\nContent-Type: text/plain; charset=utf-8\r\nConnection: close\r\n\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _publicErr?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1976"
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
                var _req = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1982"
                if (_req._expectsContinue()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1983"
                    if ((_req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != (0i64 : stdgo.GoInt64)) : Bool)) {
                        (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _readCloser : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, _resp : _w } : stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_expectcontinuereaderdott_expectcontinuereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_expectcontinuereaderdotT_expectContinueReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_expectcontinuereaderdott_expectcontinuereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_expectcontinuereaderdotT_expectContinueReader }));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1986"
                        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.store(true);
                    };
                } else if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Expect" : stdgo.GoString)) != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1989"
                    _w._sendExpectationFailed();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1990"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1993"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curReq.store(stdgo.Go.pointer(_w));
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1995"
                if (stdgo._internal.net.http.Http__requestbodyremains._requestBodyRemains((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1996"
                    stdgo._internal.net.http.Http__registeronhiteof._registerOnHitEOF((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._startBackgroundRead);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1998"
                    (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._startBackgroundRead();
                };
                _inFlightResponse = _w;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2009"
                (new stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server) : stdgo._internal.net.http.Http_t_serverhandler.T_serverHandler).serveHTTP(stdgo.Go.asInterface(_w, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_responsedott_response.__type__stdgodot_internaldotnetdothttpdotHttp_t_responsedotT_response })), (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req);
                _inFlightResponse = null;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2011"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2012"
                if (_c._hijacked()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2013"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2015"
                _w._finishRequest();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2016"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setWriteDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2017"
                if (!_w._shouldReuseConnection()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2018"
                    if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._requestBodyLimitHit || _w._closedRequestBodyEarly() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2019"
                        _c._closeWriteAndWait();
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2021"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2023"
                _c._setState((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc, (2 : stdgo._internal.net.http.Http_connstate.ConnState), true);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2024"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curReq.store(null);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2026"
                if (!(@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._doKeepAlives()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2031"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2034"
                {
                    var _d = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._idleTimeout() : stdgo._internal.time.Time_duration.Duration);
                    if (_d != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2035"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline(stdgo._internal.time.Time_now.now().add(_d)?.__copy__());
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2037"
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2044"
                {
                    var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr.peek((4 : stdgo.GoInt)), __12:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2045"
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
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2048"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
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
    static public function _getState( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>):{ var _0 : stdgo._internal.net.http.Http_connstate.ConnState; var _1 : stdgo.GoInt64; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        var _state = ((0 : stdgo.GoInt) : stdgo._internal.net.http.Http_connstate.ConnState), _unixSec = (0 : stdgo.GoInt64);
        var _packedState = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curState.load() : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1817"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_connstate.ConnState; var _1 : stdgo.GoInt64; } = { _0 : ((_packedState & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo._internal.net.http.Http_connstate.ConnState), _1 : ((_packedState >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt64) };
            _state = __tmp__._0;
            _unixSec = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _setState( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, _nc:stdgo._internal.net.Net_conn.Conn, _state:stdgo._internal.net.http.Http_connstate.ConnState, _runHook:Bool):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        var _srv = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1796"
        {
            final __value__ = _state;
            if (__value__ == ((0 : stdgo._internal.net.http.Http_connstate.ConnState))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1798"
                _srv._trackConn(_c, true);
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_connstate.ConnState)) || __value__ == ((4 : stdgo._internal.net.http.Http_connstate.ConnState))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1800"
                _srv._trackConn(_c, false);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1802"
        if (((_state > (255 : stdgo._internal.net.http.Http_connstate.ConnState) : Bool) || (_state < (0 : stdgo._internal.net.http.Http_connstate.ConnState) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1803"
            throw new stdgo.AnyInterface(("internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _packedState = @:assignType (((stdgo._internal.time.Time_now.now().unix() << (8i64 : stdgo.GoUInt64) : stdgo.GoInt64) : stdgo.GoUInt64) | (_state : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1806"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curState.store(_packedState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1807"
        if (!_runHook) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1808"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1810"
        {
            var _hook = @:assignType ((@:checkr _srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connState : (stdgo._internal.net.Net_conn.Conn, stdgo._internal.net.http.Http_connstate.ConnState) -> Void);
            if (_hook != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1811"
                _hook(_nc, _state);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closeWriteAndWait( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1771"
        _c._finalFlush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1772"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_closewriterdott_closewriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_closewriterdotT_closeWriter) : stdgo._internal.net.http.Http_t_closewriter.T_closeWriter), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.http.Http_t_closewriter.T_closeWriter), _1 : false };
            }, _tcp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1773"
                _tcp.closeWrite();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1775"
        stdgo._internal.time.Time_sleep.sleep((500000000i64 : stdgo._internal.time.Time_duration.Duration));
    }
    @:keep
    @:tdfield
    static public function _close( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1745"
        _c._finalFlush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1746"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.close();
    }
    @:keep
    @:tdfield
    static public function _finalFlush( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1727"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1730"
            stdgo._internal.net.http.Http__putbufioreader._putBufioReader((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1734"
        if (({
            final value = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1735"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.flush();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1738"
            stdgo._internal.net.http.Http__putbufiowriter._putBufioWriter((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw);
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw = null;
        };
    }
    @:keep
    @:tdfield
    static public function _readRequest( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>, _ctx:stdgo._internal.context.Context_context.Context):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _w = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L971"
            if (_c._hijacked()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L972"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http_errhijacked.errHijacked };
                    _w = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            var _wholeReqDeadline:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time), _hdrDeadline:stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
            var _t0 = @:assignType (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_time.Time);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L980"
            {
                var _d = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._readHeaderTimeout() : stdgo._internal.time.Time_duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    _hdrDeadline = _t0.add(_d)?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L983"
            {
                var _d = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout : stdgo._internal.time.Time_duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    _wholeReqDeadline = _t0.add(_d)?.__copy__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L986"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline(_hdrDeadline?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L987"
            {
                var _d = @:assignType ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeTimeout : stdgo._internal.time.Time_duration.Duration);
                if ((_d > (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
                    {
                        __deferstack__.unshift({ ran : false, f : () -> ({
                            var a = function():Void {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L989"
                                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setWriteDeadline(stdgo._internal.time.Time_now.now().add(_d)?.__copy__());
                            };
                            a();
                        }) });
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L993"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._setReadLimit((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._initialReadLimitSize());
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L994"
            if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastMethod == (("POST" : stdgo.GoString))) {
                var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr.peek((4 : stdgo.GoInt)), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __12:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L997"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr.discard(stdgo._internal.net.http.Http__numleadingcrorlf._numLeadingCRorLF(_peek));
            };
            var __tmp__ = stdgo._internal.net.http.Http__readrequest._readRequest((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr), _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1000"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1001"
                if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._hitReadLimit()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1002"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errtoolarge._errTooLarge };
                            _w = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _w = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1004"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _w = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1007"
            if (!stdgo._internal.net.http.Http__http1serversupportsrequest._http1ServerSupportsRequest(_req)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1008"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_statuserror.T_statusError((505 : stdgo.GoInt), ("unsupported protocol version" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_statuserror.T_statusError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_statuserrordott_statuserror.__type__stdgodot_internaldotnetdothttpdotHttp_t_statuserrordotT_statusError) };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _w = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastMethod = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1012"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._setInfiniteReadLimit();
            var __tmp__ = ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null && (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.__exists__(("Host" : stdgo.GoString)) ? { _0 : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header[("Host" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _hosts:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveHost:Bool = __tmp__._1;
            var _isH2Upgrade = @:assignType (_req._isH2Upgrade() : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1016"
            if ((((_req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) && ((!_haveHost || (_hosts.length == (0 : stdgo.GoInt)) : Bool)) : Bool) && !_isH2Upgrade : Bool) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != ("CONNECT" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1017"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badrequesterror._badRequestError(("missing required Host header" : stdgo.GoString)) };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _w = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1019"
            if (((_hosts.length == (1 : stdgo.GoInt)) && !_internal.golangdotorg.x.net.http.httpguts.Httpguts_validhostheader.validHostHeader(_hosts[(0 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1020"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badrequesterror._badRequestError(("malformed Host header" : stdgo.GoString)) };
                        _w = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _w = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1022"
            if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) for (_k => _vv in (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1023"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldname.validHeaderFieldName(_k?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1024"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badrequesterror._badRequestError(("invalid header name" : stdgo.GoString)) };
                            _w = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _w = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1026"
                if (_vv != null) for (__12 => _v in _vv) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1027"
                    if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldvalue.validHeaderFieldValue(_v?.__copy__())) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1028"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badrequesterror._badRequestError(("invalid header value" : stdgo.GoString)) };
                                _w = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                            _w = __ret__._0;
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1032"
            if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.__remove__(("Host" : stdgo.GoString));
            var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel(_ctx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx = _ctx;
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).remoteAddr = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteAddr?.__copy__();
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLS = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1038"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body })) : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>), _1 : false };
                }, _body = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    (@:checkr _body ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doEarlyClose = true;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1043"
            if (!_hdrDeadline.equal(_wholeReqDeadline?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1044"
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline(_wholeReqDeadline?.__copy__());
            };
            _w = (stdgo.Go.setRef(({ _conn : _c, _cancelCtx : _cancelCtx, _req : _req, _reqBody : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body, _handlerHeader : (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), _contentLength : (-1i64 : stdgo.GoInt64), _closeNotifyCh : (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>), _wants10KeepAlive : _req._wantsHttp10KeepAlive(), _wantsClose : _req._wantsClose() } : stdgo._internal.net.http.Http_t_response.T_response), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_responsedott_response.__type__stdgodot_internaldotnetdothttpdotHttp_t_responsedotT_response })) : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1062"
            if (_isH2Upgrade) {
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
            };
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._res = _w;
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w = stdgo._internal.net.http.Http__newbufiowritersize._newBufioWriterSize(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_chunkwriterdott_chunkwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_chunkwriterdotT_chunkWriter })) : stdgo.Ref<stdgo._internal.net.http.Http_t_chunkwriter.T_chunkWriter>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_chunkwriterdott_chunkwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_chunkwriterdotT_chunkWriter })), (2048 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1067"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>; var _1 : stdgo.Error; } = { _0 : _w, _1 : (null : stdgo.Error) };
                    _w = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _w = __ret__._0;
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
                return { _0 : _w, _1 : _err };
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
                return { _0 : _w, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _hijackLocked( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        var _rwc = (null : stdgo._internal.net.Net_conn.Conn), _buf = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L317"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hijackedv) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L318"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : null, _2 : stdgo._internal.net.http.Http_errhijacked.errHijacked };
                _rwc = __tmp__._0;
                _buf = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L320"
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._abortPendingRead();
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hijackedv = true;
        _rwc = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L324"
        _rwc.setDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
        _buf = stdgo._internal.bufio.Bufio_newreadwriter.newReadWriter((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr, stdgo._internal.bufio.Bufio_newwriter.newWriter(_rwc));
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L327"
        if ((@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasByte) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L328"
            {
                var __tmp__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr.peek(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufr.buffered() + (1 : stdgo.GoInt) : stdgo.GoInt)), __12:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L329"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : null, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("unexpected Peek failure reading buffered byte: %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) };
                        _rwc = __tmp__._0;
                        _buf = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L332"
        _c._setState(_rwc, (3 : stdgo._internal.net.http.Http_connstate.ConnState), true);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L333"
        return { _0 : _rwc, _1 : _buf, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function _hijacked( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn>):Bool {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_conn.T_conn> = _c;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L310"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L312"
            {
                final __ret__:Bool = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hijackedv;
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
}
