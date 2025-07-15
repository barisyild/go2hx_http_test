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
@:keep @:allow(stdgo._internal.net.http.Http.T_response_asInterface) class T_response_static_extension {
    @:keep
    @:tdfield
    static public function closeNotify( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo.Chan<Bool> {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2095"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone.load()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2096"
            throw new stdgo.AnyInterface(("net/http: CloseNotify called after ServeHTTP finished" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2098"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeNotifyCh;
    }
    @:keep
    @:tdfield
    static public function hijack( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _rwc = (null : stdgo._internal.net.Net_conn.Conn), _buf = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2073"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone.load()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2074"
                throw new stdgo.AnyInterface(("net/http: Hijack called after ServeHTTP finished" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2076"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2077"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._flush();
            };
            var _c = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2081"
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = _c._hijackLocked();
                _rwc = @:tmpset0 __tmp__._0;
                _buf = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2087"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2088"
                stdgo._internal.net.http.Http__putbufiowriter._putBufioWriter((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w);
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w = null;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2091"
            {
                final __ret__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } = { _0 : _rwc, _1 : _buf, _2 : _err };
                    _rwc = __tmp__._0;
                    _buf = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
                _rwc = __ret__._0;
                _buf = __ret__._1;
                _err = __ret__._2;
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
                return { _0 : _rwc, _1 : _buf, _2 : _err };
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
                return { _0 : _rwc, _1 : _buf, _2 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _sendExpectationFailed( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2065"
        _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2066"
        _w.writeHeader((417 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2067"
        _w._finishRequest();
    }
    @:keep
    @:tdfield
    static public function flushError( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1715"
        if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1716"
            _w.writeHeader((200 : stdgo.GoInt));
        };
        var _err = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.flush() : stdgo.Error);
        var _e2 = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._flush() : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1720"
        if (_err == null) {
            _err = _e2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1723"
        return _err;
    }
    @:keep
    @:tdfield
    static public function flush( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1711"
        _w.flushError();
    }
    @:keep
    @:tdfield
    static public function _closedRequestBodyEarly( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body })) : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>), _1 : false };
        }, _body = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1707"
        return (_ok && _body._didEarlyClose() : Bool);
    }
    @:keep
    @:tdfield
    static public function _shouldReuseConnection( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1680"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1684"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1687"
        if (((((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != (("HEAD" : stdgo.GoString)) && (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength != ((-1i64 : stdgo.GoInt64)) : Bool) && _w._bodyAllowed() : Bool) && ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength != (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._written) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1689"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1694"
        if ((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._werr != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1695"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1698"
        if (_w._closedRequestBodyEarly()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1699"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1702"
        return true;
    }
    @:keep
    @:tdfield
    static public function _finishRequest( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1655"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerDone.store(true);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1657"
        if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1658"
            _w.writeHeader((200 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1661"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.flush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1662"
        stdgo._internal.net.http.Http__putbufiowriter._putBufioWriter((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1663"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._close();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1664"
        (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.flush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1666"
        (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r._abortPendingRead();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1670"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqBody.close();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1672"
        if (({
            final value = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1673"
            (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm.removeAll();
        };
    }
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _lenData:stdgo.GoInt, _dataB:stdgo.Slice<stdgo.GoUInt8>, _dataS:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1615"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._hijacked()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1616"
            if ((_lenData > (0 : stdgo.GoInt) : Bool)) {
                var _caller = @:assignType (stdgo._internal.net.http.Http__relevantcaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_frame.Frame);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1618"
                (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._logf(("http: response.Write on hijacked connection from %s (%s:%d)" : stdgo.GoString), new stdgo.AnyInterface(_caller.function_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_caller.line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1620"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errhijacked.errHijacked };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1623"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.load()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1628"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeContinueMu.lock();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1629"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.store(false);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1630"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeContinueMu.unlock();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1633"
        if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1634"
            _w.writeHeader((200 : stdgo.GoInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1636"
        if (_lenData == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1637"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1639"
        if (!_w._bodyAllowed()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1640"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errbodynotallowed.errBodyNotAllowed };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._written = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._written + ((_lenData : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1644"
        if ((((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength != (-1i64 : stdgo.GoInt64)) && ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._written > (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1645"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errcontentlength.errContentLength };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1647"
        if (_dataB != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1648"
            return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(_dataB);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1650"
            return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.writeString(_dataS?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function writeString( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _data:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1610"
        return _w._write((_data.length), (null : stdgo.Slice<stdgo.GoUInt8>), _data?.__copy__());
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1606"
        return _w._write((_data.length), _data, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _bodyAllowed( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Bool {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1565"
        if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1566"
            throw new stdgo.AnyInterface((stdgo.Go.str() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1568"
        return stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status);
    }
    @:keep
    @:tdfield
    static public function writeHeader( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _code:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1145"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn._hijacked()) {
            var _caller = @:assignType (stdgo._internal.net.http.Http__relevantcaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_frame.Frame);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1147"
            (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._logf(("http: response.WriteHeader on hijacked connection from %s (%s:%d)" : stdgo.GoString), new stdgo.AnyInterface(_caller.function_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_caller.line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1148"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1150"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            var _caller = @:assignType (stdgo._internal.net.http.Http__relevantcaller._relevantCaller()?.__copy__() : stdgo._internal.runtime.Runtime_frame.Frame);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1152"
            (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._logf(("http: superfluous response.WriteHeader call from %s (%s:%d)" : stdgo.GoString), new stdgo.AnyInterface(_caller.function_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.path.Path_base.base(_caller.file?.__copy__()), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_caller.line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1153"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1155"
        stdgo._internal.net.http.Http__checkwriteheadercode._checkWriteHeaderCode(_code);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1161"
        if ((((_code >= (100 : stdgo.GoInt) : Bool) && (_code <= (199 : stdgo.GoInt) : Bool) : Bool) && (_code != (101 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1163"
            if (((_code == (100 : stdgo.GoInt)) && (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.load() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1164"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeContinueMu.lock();
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1165"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canWriteContinue.store(false);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1166"
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeContinueMu.unlock();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1169"
            stdgo._internal.net.http.Http__writestatusline._writeStatusLine((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)), _code, ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._statusBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1172"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader.writeSubset(stdgo.Go.asInterface((@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), stdgo._internal.net.http.Http__excludedheadersnobody._excludedHeadersNoBody);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1173"
            (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.write(stdgo._internal.net.http.Http__crlf._crlf);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1174"
            (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufw.flush();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1176"
            return;
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader = true;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._status = _code;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1182"
        if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._calledHeader && ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._header == null) : Bool)) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._header = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader.clone();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1186"
        {
            var _cl = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader._get(("Content-Length" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_cl != ((stdgo.Go.str() : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_cl?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _v:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1188"
                if (((_err == null) && (_v >= (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._contentLength = _v;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1191"
                    (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._server._logf(("http: invalid Content-Length of %q" : stdgo.GoString), new stdgo.AnyInterface(_cl, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1192"
                    (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader.del(("Content-Length" : stdgo.GoString));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function header( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1088"
        if ((((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._header == null && (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader : Bool) && !(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._wroteHeader : Bool)) {
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._header = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader.clone();
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._calledHeader = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1095"
        return (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader;
    }
    @:keep
    @:tdfield
    static public function readFrom( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _src:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        try {
            var _bufp = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__copybufpool._copyBufPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            var _buf = (_bufp : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _a0 = _bufp;
                final __f__ = stdgo._internal.net.http.Http__copybufpool._copyBufPool.put;
                __deferstack__.unshift({ ran : false, f : () -> __f__(new stdgo.AnyInterface(_a0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))) });
            };
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerfromdotreaderfrom.__type__stdgodot_internaldotiodotIo_readerfromdotReaderFrom) : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_readerfrom.ReaderFrom), _1 : false };
            }, _rf = __tmp__._0, _ok = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L587"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L588"
                {
                    final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = ({
                        @:explicitConversion final __tmp__ = stdgo._internal.io.Io_copybuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_writeronly.T_writerOnly(stdgo.Go.asInterface(_w, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_responsedott_response.__type__stdgodot_internaldotnetdothttpdotHttp_t_responsedotT_response }))) : stdgo._internal.net.http.Http_t_writeronly.T_writerOnly), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_writeronlydott_writeronly.__type__stdgodot_internaldotnetdothttpdotHttp_t_writeronlydotT_writerOnly), _src, _buf);
                        { _0 : __tmp__._0, _1 : __tmp__._1 };
                    });
                    _n = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L595"
            if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._wroteHeader) {
                var __tmp__ = stdgo._internal.io.Io_copybuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_writeronly.T_writerOnly(stdgo.Go.asInterface(_w, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_responsedott_response.__type__stdgodot_internaldotnetdothttpdotHttp_t_responsedotT_response }))) : stdgo._internal.net.http.Http_t_writeronly.T_writerOnly), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_writeronlydott_writeronly.__type__stdgodot_internaldotnetdothttpdotHttp_t_writeronlydotT_writerOnly), stdgo._internal.io.Io_limitreader.limitReader(_src, (512i64 : stdgo.GoInt64)), _buf), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_n0) : stdgo.GoInt64);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L598"
                if (((_err != null) || (_n0 < (512i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L599"
                    {
                        final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _n = __ret__._0;
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L603"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.flush();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L604"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._flush();
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L607"
            if ((!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw._chunking && _w._bodyAllowed() : Bool)) {
                var __tmp__ = _rf.readFrom(_src), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_n0) : stdgo.GoInt64);
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._written = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._written + (_n0) : stdgo.GoInt64);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L611"
                {
                    final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _n = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var __tmp__ = stdgo._internal.io.Io_copybuffer.copyBuffer(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_writeronly.T_writerOnly(stdgo.Go.asInterface(_w, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_responsedott_response.__type__stdgodot_internaldotnetdothttpdotHttp_t_responsedotT_response }))) : stdgo._internal.net.http.Http_t_writeronly.T_writerOnly), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_writeronlydott_writeronly.__type__stdgodot_internaldotnetdothttpdotHttp_t_writeronlydotT_writerOnly), _src, _buf), _n0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_n0) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L616"
            {
                final __ret__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _n = __ret__._0;
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
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _requestTooLarge( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeAfterReply = true;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._requestBodyLimitHit = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L564"
        if (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L565"
            _w.header().set(("Connection" : stdgo.GoString), ("close" : stdgo.GoString));
        };
    }
    @:keep
    @:tdfield
    static public function _declareTrailer( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _k:stdgo.GoString):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        _k = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L552"
        if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validtrailerheader.validTrailerHeader(_k?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L554"
            return;
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function _finalTrailers( _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _w:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _w;
        var _t:stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L528"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader != null) for (_k => _vv in (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L529"
            {
                var __tmp__ = stdgo._internal.strings.Strings_cutprefix.cutPrefix(_k?.__copy__(), ("Trailer:" : stdgo.GoString)), _kk:stdgo.GoString = __tmp__._0, _found:Bool = __tmp__._1;
                if (_found) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L530"
                    if (_t == null) {
                        _t = (({
                            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
                    };
                    _t[_kk] = _vv;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L536"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers != null) for (__12 => _k in (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailers) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L537"
            if (_t == null) {
                _t = (({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                    x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L540"
            if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader[_k] ?? (null : stdgo.Slice<stdgo.GoString>)) != null) for (__13 => _v in ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handlerHeader[_k] ?? (null : stdgo.Slice<stdgo.GoString>))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L541"
                _t.add(_k?.__copy__(), _v?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L544"
        return _t;
    }
    @:keep
    @:tdfield
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _c;
        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fullDuplex = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L506"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L501"
        return (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setWriteDeadline(_deadline?.__copy__());
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_t_response.T_response> = _c;
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L497"
        return (@:checkr (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rwc.setReadDeadline(_deadline?.__copy__());
    }
}
