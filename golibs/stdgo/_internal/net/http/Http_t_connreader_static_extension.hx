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
@:keep @:allow(stdgo._internal.net.http.Http.T_connReader_asInterface) class T_connReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L764"
        _cr._lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L765"
        if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L766"
            _cr._unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L767"
            if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._hijacked()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L768"
                throw new stdgo.AnyInterface(("invalid Body.Read call. After hijacked, the original Request must not be used" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L770"
            throw new stdgo.AnyInterface(("invalid concurrent Body.Read call" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L772"
        if (_cr._hitReadLimit()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L773"
            _cr._unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L774"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L776"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L777"
            _cr._unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L778"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L780"
        if (((_p.length : stdgo.GoInt64) > (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain : Bool)) {
            _p = (_p.__slice__(0, (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L783"
        if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasByte) {
            _p[(0 : stdgo.GoInt)] = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteBuf[(0 : stdgo.GoInt)];
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasByte = false;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L786"
            _cr._unlock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L787"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (1 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L790"
        _cr._unlock();
        {
            var __tmp__ = (@:checkr (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L793"
        _cr._lock();
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L795"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L796"
            _cr._handleReadError(_err);
        };
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain = ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L799"
        _cr._unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L801"
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L802"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _closeNotify( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        var _res = ((@:checkr (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curReq.load() : stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L758"
        if ((({
            final value = _res;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && !(@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didCloseNotify.swap(true) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L759"
            (@:checkr _res ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifyCh.__send__(true);
        };
    }
    @:keep
    @:tdfield
    static public function _handleReadError( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>, __12:stdgo.Error):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L751"
        (@:checkr (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L752"
        _cr._closeNotify();
    }
    @:keep
    @:tdfield
    static public function _hitReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Bool {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L738"
        return ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain <= (0i64 : stdgo.GoInt64) : Bool);
    }
    @:keep
    @:tdfield
    static public function _setInfiniteReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain = (9223372036854775807i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _setReadLimit( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>, _remain:stdgo.GoInt64):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remain = _remain;
    }
    @:keep
    @:tdfield
    static public function _abortPendingRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L723"
            _cr._lock();
            {
                final __f__ = _cr._unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L725"
            if (!(@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L726"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._aborted = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L729"
            (@:checkr (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline(stdgo._internal.net.http.Http__alongtimeago._aLongTimeAgo?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L730"
            while ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L731"
                (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.wait_();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L733"
            (@:checkr (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
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
    static public function _backgroundRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        var __tmp__ = (@:checkr (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.read(((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L684"
        _cr._lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L685"
        if (_n == ((1 : stdgo.GoInt))) {
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasByte = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L710"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_errordoterror.__type__stdgodot_internaldotnetdotNet_errordotError) : stdgo._internal.net.Net_error.Error), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.Net_error.Error), _1 : false };
            }, _ne = __tmp__._0, _ok = __tmp__._1;
            if (((_ok && (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._aborted : Bool) && _ne.timeout() : Bool)) {} else if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L714"
                _cr._handleReadError(_err);
            };
        };
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._aborted = false;
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L718"
        _cr._unlock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L719"
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond.broadcast();
    }
    @:keep
    @:tdfield
    static public function _startBackgroundRead( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L669"
            _cr._lock();
            {
                final __f__ = _cr._unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L671"
            if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L672"
                throw new stdgo.AnyInterface(("invalid concurrent Body.Read call" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L674"
            if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hasByte) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L675"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inRead = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L678"
            (@:checkr (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L679"
            {
                {};
                stdgo.Go.routine(() -> _cr._backgroundRead());
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
    static public function _unlock( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L666"
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _lock( _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.Http_t_connreader.T_connReader> = _cr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L660"
        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L661"
        if (({
            final value = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond = stdgo._internal.sync.Sync_newcond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })));
        };
    }
}
