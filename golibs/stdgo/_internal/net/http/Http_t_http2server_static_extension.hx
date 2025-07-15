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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Server_asInterface) class T_http2Server_static_extension {
    @:keep
    @:tdfield
    static public function serveConn( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>, _c:stdgo._internal.net.Net_conn.Conn, _opts:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serveconnopts.T_http2ServeConnOpts>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var __tmp__ = stdgo._internal.net.http.Http__http2serverconnbasecontext._http2serverConnBaseContext(_c, _opts), _baseCtx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancel:() -> Void = __tmp__._1;
            {
                final __f__ = _cancel;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _sc = (stdgo.Go.setRef(({ _srv : _s, _hs : _opts._baseConfig(), _conn : _c, _baseCtx : _baseCtx, _remoteAddrStr : (_c.remoteAddr().string() : stdgo.GoString)?.__copy__(), _bw : stdgo._internal.net.http.Http__http2newbufferedwriter._http2newBufferedWriter(_c), _handler : _opts._handler(), _streams : (({
                final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>), _readFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult>), _wantWriteFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>((8 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>), _serveMsgCh : (new stdgo.Chan<stdgo.AnyInterface>((8 : stdgo.GoInt).toBasic(), () -> (null : stdgo.AnyInterface)) : stdgo.Chan<stdgo.AnyInterface>), _wroteFrameCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult>), _bodyReadCh : (new stdgo.Chan<stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg>(0, () -> ({} : stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg)) : stdgo.Chan<stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg>), _doneServing : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _clientMaxStreams : (-1u32 : stdgo.GoUInt32), _advMaxStreams : _s._maxConcurrentStreams(), _initialStreamSendWindowSize : (65535 : stdgo.GoInt32), _maxFrameSize : (16384 : stdgo.GoInt32), _serveG : stdgo._internal.net.http.Http__http2newgoroutinelock._http2newGoroutineLock(), _pushEnabled : true, _sawClientPreface : (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sawClientPreface } : stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4241"
            (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state._registerConn(_sc);
            {
                var _a0 = _sc;
                final __f__ = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state._unregisterConn;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4249"
            if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4250"
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.setWriteDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4253"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).newWriteScheduler != null) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).newWriteScheduler();
            } else {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched = stdgo._internal.net.http.Http__http2newroundrobinwritescheduler._http2newRoundRobinWriteScheduler();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4262"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add((65535 : stdgo.GoInt32));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4263"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._init((65535 : stdgo.GoInt32));
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hpackEncoder = _internal.golangdotorg.x.net.http2.hpack.Hpack_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headerWriteBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4265"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hpackEncoder.setMaxDynamicTableSizeLimit(_s._maxEncoderHeaderTableSize());
            var _fr = stdgo._internal.net.http.Http__http2newframer._http2NewFramer(stdgo.Go.asInterface((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2bufferedwriterdott_http2bufferedwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2bufferedwriterdotT_http2bufferedWriter })), _c);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4268"
            if ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError != null) {
                (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countError = (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError;
            };
            (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readMetaHeaders = _internal.golangdotorg.x.net.http2.hpack.Hpack_newdecoder.newDecoder(_s._maxDecoderHeaderTableSize(), null);
            (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderListSize = _sc._maxHeaderListSize();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4273"
            _fr.setMaxReadFrameSize(_s._maxReadFrameSize());
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._framer = _fr;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4276"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _c;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionstaterdott_http2connectionstater.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionstaterdotT_http2connectionStater) : stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater), _1 : false };
                }, _tc = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
                    {
                        var __tmp__ = _tc.connectionState()?.__copy__();
                        var x = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
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
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4289"
                    if (((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).version < (771 : stdgo.GoUInt16) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4290"
                        _sc._rejectConn((12u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), ("TLS version too low" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4291"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4294"
                    if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName == ((stdgo.Go.str() : stdgo.GoString))) {};
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4306"
                    if ((!(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).permitProhibitedCipherSuites && stdgo._internal.net.http.Http__http2isbadcipher._http2isBadCipher((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuite) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4317"
                        _sc._rejectConn((12u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("Prohibited TLS 1.2 Cipher Suite: %x" : stdgo.GoString), new stdgo.AnyInterface((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState ?? throw stdgo.Error._nullPointerDereference.__underlying__()).cipherSuite, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint16_kind))))?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4318"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4322"
            if ((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).settings != null) {
                var _fr = (stdgo.Go.setRef(({ _http2FrameHeader : ({ _valid : true } : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader), _p : (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).settings } : stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingsframedott_http2settingsframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingsframedotT_http2SettingsFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4327"
                {
                    var _err = @:assignType (_fr.foreachSetting(_sc._processSetting) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4328"
                        _sc._rejectConn((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), ("invalid settings" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4329"
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
                (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).settings = (null : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4334"
            {
                var _hook = stdgo._internal.net.http.Http__http2testhookgetserverconn._http2testHookGetServerConn;
                if (_hook != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4335"
                    _hook(_sc);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4338"
            if (({
                final value = (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).upgradeRequest;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4339"
                _sc._upgradeRequest((@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).upgradeRequest);
                (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__()).upgradeRequest = null;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4343"
            _sc._serve();
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
    static public function _maxQueuedControlFrames( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4018"
        return (10000 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _maxEncoderHeaderTableSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4006"
        {
            var _v = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxEncoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4007"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4009"
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxDecoderHeaderTableSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3999"
        {
            var _v = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxDecoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4000"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4002"
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxConcurrentStreams( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3992"
        {
            var _v = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxConcurrentStreams : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3993"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3995"
        return (250u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxReadFrameSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.GoUInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3985"
        {
            var _v = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxReadFrameSize : stdgo.GoUInt32);
            if (((_v >= (16384u32 : stdgo.GoUInt32) : Bool) && (_v <= (16777215u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3986"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3988"
        return (1048576u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _initialStreamRecvWindowSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3978"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxUploadBufferPerStream > (0 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3979"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxUploadBufferPerStream;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3981"
        return (1048576 : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _initialConnRecvWindowSize( _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>):stdgo.GoInt32 {
        @:recv var _s:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = _s;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3971"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxUploadBufferPerConnection >= (65535 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3972"
            return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxUploadBufferPerConnection;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3974"
        return (1048576 : stdgo.GoInt32);
    }
}
