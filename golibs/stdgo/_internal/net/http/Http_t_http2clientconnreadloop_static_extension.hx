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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2clientConnReadLoop_asInterface) class T_http2clientConnReadLoop_static_extension {
    @:keep
    @:tdfield
    static public function _processPushPromise( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10076"
        return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
    }
    @:keep
    @:tdfield
    static public function _processPing( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10048"
            if (_f.isAck()) {
                var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10050"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                {
                    final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10053"
                {
                    var __tmp__ = ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings != null && (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings.__exists__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data?.__copy__()) ? { _0 : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings[(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data?.__copy__()], _1 : true } : { _0 : (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _1 : false }), _c:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10054"
                        if (_c != null) _c.__close__();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10055"
                        if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings != null) (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pings.__remove__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10057"
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
            var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10060"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10062"
            {
                var _err = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writePing(true, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10063"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10065"
            {
                final __ret__:stdgo.Error = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
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
    static public function _processResetStream( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var _cs = _rl._streamByID((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9985"
        if (({
            final value = _cs;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9987"
            return (null : stdgo.Error);
        };
        var _serr = @:assignType (stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode)?.__copy__() : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError);
        _serr.cause = stdgo._internal.net.http.Http__http2errfrompeer._http2errFromPeer;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9991"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode == ((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9992"
            (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc.setDoNotReuse();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9994"
        {
            var _fn = @:assignType ((@:checkr (@:checkr (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError : stdgo.GoString -> Void);
            if (_fn != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9995"
                _fn((("recv_rststream_" : stdgo.GoString) + (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode._stringToken()?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9997"
        _cs._abortStream(stdgo.Go.asInterface(_serr, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9999"
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe.closeWithError(stdgo.Go.asInterface(_serr, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10000"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processWindowUpdate( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            var _cs = _rl._streamByID((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9965"
            if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID != (0u32 : stdgo.GoUInt32)) && ({
                final value = _cs;
                (value == null || (value : Dynamic).__nil__);
            }) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9966"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9969"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _fl = (stdgo.Go.setRef((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9973"
            if (({
                final value = _cs;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _fl = (stdgo.Go.setRef((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9976"
            if (!_fl._add(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).increment : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9977"
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9979"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9980"
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
    static public function _processSettingsNoWrite( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9896"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9899"
            if (_f.isAck()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9900"
                if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wantSettingsAck) {
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wantSettingsAck = false;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9902"
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
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9904"
                {
                    final __ret__:stdgo.Error = stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _seenMaxConcurrentStreams:Bool = false;
            var _err = @:assignType (_f.foreachSetting(function(_s:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting):stdgo.Error {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9909"
                {
                    final __value__ = _s.iD;
                    if (__value__ == ((5 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize = _s.val;
                    } else if (__value__ == ((3 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxConcurrentStreams = _s.val;
                        _seenMaxConcurrentStreams = true;
                    } else if (__value__ == ((6 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerMaxHeaderListSize = (_s.val : stdgo.GoUInt64);
                    } else if (__value__ == ((4 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9922"
                        if ((_s.val > (2147483647u32 : stdgo.GoUInt32) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9923"
                            return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                        };
                        var _delta = @:assignType ((_s.val : stdgo.GoInt32) - ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialWindowSize : stdgo.GoInt32) : stdgo.GoInt32);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9930"
                        if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) for (__12 => _cs in (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9931"
                            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add(_delta);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9933"
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialWindowSize = _s.val;
                    } else if (__value__ == ((1 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9937"
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._henc.setMaxDynamicTableSize(_s.val);
                        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerMaxHeaderTableSize = _s.val;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9940"
                        _cc._vlogf(("Unhandled Setting: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingdott_http2setting.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingdotT_http2Setting), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingdott_http2setting.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingdotT_http2Setting)));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9942"
                return (null : stdgo.Error);
            }) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9944"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9945"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9948"
            if (!(@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seenSettings) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9949"
                if (!_seenMaxConcurrentStreams) {
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxConcurrentStreams = (1000u32 : stdgo.GoUInt32);
                };
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._seenSettings = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9959"
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
    static public function _processSettings( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9881"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
            {
                final __f__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9884"
            {
                var _err = @:assignType (_rl._processSettingsNoWrite(_f) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9885"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9887"
            if (!_f.isAck()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9888"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeSettingsAck();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9889"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9891"
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
    static public function _processGoAway( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9865"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._connPool().markDead(_cc);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9866"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode != ((0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9868"
            _cc._vlogf(("transport got GOAWAY with error code = %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode)));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9869"
            {
                var _fn = @:assignType ((@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError : stdgo.GoString -> Void);
                if (_fn != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9870"
                    _fn((("recv_goaway_" : stdgo.GoString) + (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode._stringToken()?.__copy__() : stdgo.GoString)?.__copy__());
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9873"
        _cc._setGoAway(_f);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9874"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _streamByID( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _id:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream> {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9844"
            (@:checkr (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _cs = ((@:checkr (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_id] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9847"
            if ((({
                final value = _cs;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && !(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readAborted : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9848"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return _cs;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9850"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return null;
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
                return (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>);
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
                return (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _endStreamError( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _err:stdgo.Error):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readAborted = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9840"
        _cs._abortStream(_err);
    }
    @:keep
    @:tdfield
    static public function _endStream( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9825"
            if (!(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readClosed) {
                (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readClosed = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9831"
                (@:checkr (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                {
                    final __f__ = (@:checkr (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9833"
                (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe._closeWithErrorAndCode(stdgo._internal.io.Io_eof.eOF, _cs._copyTrailers);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9834"
                if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerClosed != null) (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerClosed.__close__();
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
    static public function _processData( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
        var _cs = _rl._streamByID((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID);
        var _data = _f.data();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9710"
        if (({
            final value = _cs;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9711"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            var _neverSent = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9713"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9714"
            if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID >= _neverSent : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9716"
                _cc._logf(("http2: Transport received unsolicited DATA frame; closing connection" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9717"
                return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9725"
            if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9726"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
                var _ok = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._take((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_) : Bool);
                var _connAdd = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ : stdgo.GoInt)) : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9729"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9730"
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9731"
                    return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9733"
                if ((_connAdd > (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9734"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9735"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_connAdd : stdgo.GoUInt32));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9736"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9737"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9740"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9742"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readClosed) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9743"
            _cc._logf(("protocol error: received DATA after END_STREAM" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9744"
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) } : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9748"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9750"
        if (!(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstByte) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9751"
            _cc._logf(("protocol error: received DATA before a HEADERS frame" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9752"
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) } : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9756"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9758"
        if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9759"
            if (((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHead && ((_data.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9760"
                _cc._logf(("protocol error: received DATA on a HEAD request" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9761"
                _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) } : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9765"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9768"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9769"
            if (!stdgo._internal.net.http.Http__http2takeinflows._http2takeInflows((stdgo.Go.setRef((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow>), (stdgo.Go.setRef((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow>), (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9770"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9771"
                return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
            };
            var _refund:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9776"
            {
                var _pad = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ : stdgo.GoInt) - (_data.length) : stdgo.GoInt);
                if ((_pad > (0 : stdgo.GoInt) : Bool)) {
                    _refund = (_refund + (_pad) : stdgo.GoInt);
                };
            };
            var _didReset = @:assignType (false : Bool);
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9782"
            if (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9783"
                {
                    {
                        var __tmp__ = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe.write(_data);
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (_err != null) {
                        _didReset = true;
                        _refund = (_refund + ((_data.length)) : stdgo.GoInt);
                    };
                };
            };
            var _sendConn = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(_refund) : stdgo.GoInt32);
            var _sendStream:stdgo.GoInt32 = (0 : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9793"
            if (!_didReset) {
                _sendStream = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(_refund);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9796"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9798"
            if (((_sendConn > (0 : stdgo.GoInt32) : Bool) || (_sendStream > (0 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9799"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.lock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9800"
                if ((_sendConn > (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9801"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (_sendConn : stdgo.GoUInt32));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9803"
                if ((_sendStream > (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9804"
                    (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeWindowUpdate((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).iD, (_sendStream : stdgo.GoUInt32));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9806"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9807"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wmu.unlock();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9810"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9811"
                _rl._endStreamError(_cs, _err);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9812"
                return (null : stdgo.Error);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9816"
        if (_f.streamEnded()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9817"
            _rl._endStream(_cs);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9819"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processTrailers( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9581"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pastTrailers) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9583"
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
        };
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pastTrailers = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9586"
        if (!_f.streamEnded()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9589"
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9591"
        if (((_f.pseudoFields().length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9594"
            return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
        };
        var _trailer = @:assignType ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header) : stdgo._internal.net.http.Http_header.Header);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9598"
        if (_f.regularFields() != null) for (__12 => _hf in _f.regularFields()) {
            var _key = @:assignType (stdgo._internal.net.http.Http__http2canonicalheader._http2canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
            _trailer[_key] = ((_trailer[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_hf.value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer = _trailer;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9604"
        _rl._endStream(_cs);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9605"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _handleResponse( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _cs:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9462"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).truncated) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9463"
            return { _0 : null, _1 : stdgo._internal.net.http.Http__http2errresponseheaderlistsize._http2errResponseHeaderListSize };
        };
        var _status = @:assignType (_f.pseudoValue(("status" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9467"
        if (_status == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9468"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("malformed response from server: missing status pseudo header" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_status?.__copy__()), _statusCode:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9471"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9472"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("malformed response from server: malformed non-numeric status pseudo header" : stdgo.GoString)) };
        };
        var _regularFields = _f.regularFields();
        var _strs = (new stdgo.Slice<stdgo.GoString>((_regularFields.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _header = @:assignType ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header) : stdgo._internal.net.http.Http_header.Header);
        var _res = (stdgo.Go.setRef(({ proto : ("HTTP/2.0" : stdgo.GoString), protoMajor : (2 : stdgo.GoInt), header : _header, statusCode : _statusCode, status : ((_status + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.net.http.Http_statustext.statusText(_statusCode)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.net.http.Http_response.Response), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse })) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9485"
        if (_regularFields != null) for (__12 => _hf in _regularFields) {
            var _key = @:assignType (stdgo._internal.net.http.Http__http2canonicalheader._http2canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9487"
            if (_key == (("Trailer" : stdgo.GoString))) {
                var _t = @:assignType ((@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer : stdgo._internal.net.http.Http_header.Header);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9489"
                if (_t == null) {
                    _t = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                        x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
                    (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = _t;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9493"
                stdgo._internal.net.http.Http__http2foreachheaderelement._http2foreachHeaderElement(_hf.value?.__copy__(), function(_v:stdgo.GoString):Void {
                    _t[stdgo._internal.net.http.Http__http2canonicalheader._http2canonicalHeader(_v?.__copy__())] = (null : stdgo.Slice<stdgo.GoString>);
                });
            } else {
                var _vv = (_header[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9498"
                if (((_vv == null) && ((_strs.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    {
                        final __tmp__0 = (_strs.__slice__(0, (1 : stdgo.GoInt), (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        final __tmp__1 = (_strs.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _vv = @:binopAssign __tmp__0;
                        _strs = @:binopAssign __tmp__1;
                    };
                    _vv[(0 : stdgo.GoInt)] = _hf.value?.__copy__();
                    _header[_key] = _vv;
                } else {
                    _header[_key] = (_vv.__append__(_hf.value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9512"
        if (((_statusCode >= (100 : stdgo.GoInt) : Bool) && (_statusCode <= (199 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9513"
            if (_f.streamEnded()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9514"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("1xx informational response with END_STREAM flag" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9516"
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._num1xx++;
            {};
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9518"
            if (((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._num1xx > (5 : stdgo.GoUInt8) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9519"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http2: too many 1xx informational responses" : stdgo.GoString)) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9521"
            {
                var _fn = @:assignType (_cs._get1xxTraceFunc() : (stdgo.GoInt, stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader) -> stdgo.Error);
                if (_fn != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9522"
                    {
                        var _err = @:assignType (_fn(_statusCode, (_header : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader)) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9523"
                            return { _0 : null, _1 : _err };
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9526"
            if (_statusCode == ((100 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9527"
                stdgo._internal.net.http.Http__http2tracegot100continue._http2traceGot100Continue((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9528"
                {
                    var __select__ = true;
                    var __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._on100;
                    while (__select__) {
                        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._on100 != null && __c__0.__isSend__(true)) {
                            __select__ = false;
                            {
                                __c__0.__send__(({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11));
                                {};
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
            };
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pastHeaders = false;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9534"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9538"
        {
            var _clens = ((@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header[("Content-Length" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if ((_clens.length) == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9539"
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_clens[(0 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (_cl : stdgo.GoInt64);
                    } else {};
                };
            } else if (((_clens.length) > (1 : stdgo.GoInt) : Bool)) {} else if ((_f.streamEnded() && !(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHead : Bool)) {
                (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (0i64 : stdgo.GoInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9552"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isHead) {
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo._internal.net.http.Http__http2nobody._http2noBody;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9554"
            return { _0 : _res, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9557"
        if (_f.streamEnded()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9558"
            if (((@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
                (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2missingbody.T_http2missingBody() : stdgo._internal.net.http.Http_t_http2missingbody.T_http2missingBody), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2missingbodydott_http2missingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2missingbodydotT_http2missingBody);
            } else {
                (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo._internal.net.http.Http__http2nobody._http2noBody;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9563"
            return { _0 : _res, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9566"
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufPipe._setBuffer(stdgo.Go.asInterface((stdgo.Go.setRef(({ _expected : (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength } : stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2databufferdott_http2databuffer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2databufferdotT_http2dataBuffer })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2databufferdott_http2databuffer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2databufferdotT_http2dataBuffer })));
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytesRemain = (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength;
        (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody(_cs) : stdgo._internal.net.http.Http_t_http2transportresponsebody.T_http2transportResponseBody), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2transportresponsebodydott_http2transportresponsebody.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2transportresponsebodydotT_http2transportResponseBody);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9570"
        if (((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._requestedGzip && stdgo._internal.net.http.Http__http2asciiequalfold._http2asciiEqualFold((@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Content-Encoding" : stdgo.GoString))?.__copy__(), ("gzip" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9571"
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("Content-Encoding" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9572"
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.del(("Content-Length" : stdgo.GoString));
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _body : (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body } : stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2gzipreaderdott_http2gzipreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2gzipreaderdotT_http2gzipReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2gzipreader.T_http2gzipReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2gzipreaderdott_http2gzipreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2gzipreaderdotT_http2gzipReader }));
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uncompressed = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9577"
        return { _0 : _res, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _processHeaders( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var _cs = _rl._streamByID((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9399"
        if (({
            final value = _cs;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9403"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9405"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readClosed) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9406"
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), cause : stdgo._internal.errors.Errors_new_.new_(("protocol error: headers after END_STREAM" : stdgo.GoString)) } : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9411"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9413"
        if (!(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstByte) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9414"
            if (({
                final value = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9419"
                stdgo._internal.net.http.Http__http2tracefirstresponsebyte._http2traceFirstResponseByte((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trace);
            };
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstByte = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9423"
        if (!(@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pastHeaders) {
            (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pastHeaders = true;
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9426"
            return _rl._processTrailers(_cs, _f);
        };
        var __tmp__ = _rl._handleResponse(_cs, _f), _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9430"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9431"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _1 : true };
                } catch(__exception__) {
                    { _0 : ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _1 : false };
                }, __12 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9432"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9435"
            _rl._endStreamError(_cs, stdgo.Go.asInterface(({ streamID : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID, code : (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), cause : _err } : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9440"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9442"
        if (({
            final value = _res;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9444"
            return (null : stdgo.Error);
        };
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resTrailer = (stdgo.Go.setRef((@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader })) : stdgo.Ref<stdgo._internal.net.http.Http_header.Header>);
        (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._res = _res;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9448"
        if ((@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._respHeaderRecv != null) (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._respHeaderRecv.__close__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9449"
        if (_f.streamEnded()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9450"
            _rl._endStream(_cs);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9452"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _run( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>):stdgo.Error {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            var _gotSettings = @:assignType (false : Bool);
            var _readIdleTimeout = @:assignType ((@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readIdleTimeout : stdgo._internal.time.Time_duration.Duration);
            var _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9333"
            if (_readIdleTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                _t = stdgo._internal.time.Time_afterfunc.afterFunc(_readIdleTimeout, _cc._healthCheck);
                {
                    final __f__ = _t.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9337"
            while (true) {
                var __tmp__ = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.readFrame(), _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9339"
                if (({
                    final value = _t;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9340"
                    _t.reset(_readIdleTimeout);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9342"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9343"
                    _cc._vlogf(("http2: Transport readFrame error on conn %p: (%T) %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cc, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
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
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9345"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : true };
                    } catch(__exception__) {
                        { _0 : ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9346"
                        {
                            var _cs = _rl._streamByID(_se.streamID);
                            if (({
                                final value = _cs;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9347"
                                if (_se.cause == null) {
                                    _se.cause = (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errDetail;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9350"
                                _rl._endStreamError(_cs, stdgo.Go.asInterface(_se, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9352"
                        continue;
                    } else if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9354"
                        _cc._countReadFrameError(_err);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9355"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9357"
                if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9358"
                    _cc._vlogf(("http2: Transport received %s" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2summarizeframe._http2summarizeFrame(_f), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9360"
                if (!_gotSettings) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9361"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = _f;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingsframedott_http2settingsframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingsframedotT_http2SettingsFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>), _1 : false };
                        }, __12 = __tmp__._0, _ok = __tmp__._1;
                        if (!_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9362"
                            _cc._logf(("protocol error: received %T before a SETTINGS frame" : stdgo.GoString), ({
                                final __t__ = _f;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }));
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9363"
                            {
                                final __ret__:stdgo.Error = stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return __ret__;
                            };
                        };
                    };
                    _gotSettings = true;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9368"
                {
                    final __type__ = _f;
                    if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2metaheadersframedott_http2metaheadersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2metaheadersframedotT_http2MetaHeadersFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>) : __type__.__underlying__().value);
                        _err = _rl._processHeaders(_f);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2dataframedott_http2dataframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2dataframedotT_http2DataFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : __type__.__underlying__().value);
                        _err = _rl._processData(_f);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : __type__.__underlying__().value);
                        _err = _rl._processGoAway(_f);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2rststreamframedott_http2rststreamframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2rststreamframedotT_http2RSTStreamFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : __type__.__underlying__().value);
                        _err = _rl._processResetStream(_f);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingsframedott_http2settingsframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingsframedotT_http2SettingsFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : __type__.__underlying__().value);
                        _err = _rl._processSettings(_f);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pushpromiseframedott_http2pushpromiseframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pushpromiseframedotT_http2PushPromiseFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>) : __type__.__underlying__().value);
                        _err = _rl._processPushPromise(_f);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2windowupdateframedott_http2windowupdateframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2windowupdateframedotT_http2WindowUpdateFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : __type__.__underlying__().value);
                        _err = _rl._processWindowUpdate(_f);
                    } else if (stdgo.Go.typeEquals(({
                        final __t__ = __type__;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pingframedott_http2pingframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pingframedotT_http2PingFrame }))) {
                        var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : __type__.__underlying__().value);
                        _err = _rl._processPing(_f);
                    } else {
                        var _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __type__ == null ? (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame) : cast __type__;
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9386"
                        _cc._logf(("Transport: unhandled response frame type %T" : stdgo.GoString), ({
                            final __t__ = _f;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9388"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9389"
                    if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9390"
                        _cc._vlogf(("http2: Transport conn %p received error from processing frame %v: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cc, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }))), new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2summarizeframe._http2summarizeFrame(_f), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9392"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
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
    static public function _cleanup( _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop>):Void {
        @:recv var _rl:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnreadloop.T_http2clientConnReadLoop> = _rl;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _cc = (@:checkr _rl ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cc;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9264"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t._connPool().markDead(_cc);
            {
                final __f__ = _cc._closeConn;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _a0 = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readerDone;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9268"
            if (({
                final value = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9269"
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.stop();
            };
            var _err = @:assignType ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readerErr : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9276"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9277"
            if ((({
                final value = (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && stdgo._internal.net.http.Http__http2iseofornetreaderror._http2isEOFOrNetReadError(_err) : Bool)) {
                _err = stdgo.Go.asInterface(({ lastStreamID : (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway ?? throw stdgo.Error._nullPointerDereference.__underlying__()).lastStreamID, errCode : (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAway ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode, debugData : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayDebug?.__copy__() } : stdgo._internal.net.http.Http_t_http2goawayerror.T_http2GoAwayError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayerrordott_http2goawayerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayerrordotT_http2GoAwayError);
            } else if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9288"
            if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) for (__12 => _cs in (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9289"
                {
                    var __select__ = true;
                    var __c__0 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _cs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerClosed;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {};
                            };
                        } else {
                            __select__ = false;
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9294"
                                _cs._abortStreamLocked(_err);
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9297"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L9298"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
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
}
