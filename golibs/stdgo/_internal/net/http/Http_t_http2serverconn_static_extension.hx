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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2serverConn_asInterface) class T_http2serverConn_static_extension {
    @:keep
    @:tdfield
    static public function _countError( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _name:stdgo.GoString, _err:stdgo.Error):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7096"
        if ((({
            final value = _sc;
            (value == null || (value : Dynamic).__nil__);
        }) || ({
            final value = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv;
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7097"
            return _err;
        };
        var _f = @:assignType ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError : stdgo.GoString -> Void);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7100"
        if (_f == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7101"
            return _err;
        };
        var _typ:stdgo.GoString = ("" : stdgo.GoString);
        var _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7105"
        {
            final __type__ = _err;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError)) {
                var _e:stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError) : __type__.__underlying__().value);
                _typ = ("conn" : stdgo.GoString);
                _code = (_e : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError)) {
                var _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = __type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : __type__.__underlying__().value);
                _typ = ("stream" : stdgo.GoString);
                _code = (_e.code : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
            } else {
                var _e:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7113"
                return _err;
            };
        };
        var _codeStr = @:assignType ((stdgo._internal.net.http.Http__http2errcodename._http2errCodeName[_code] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7116"
        if (_codeStr == ((stdgo.Go.str() : stdgo.GoString))) {
            _codeStr = stdgo._internal.strconv.Strconv_itoa.itoa((_code : stdgo.GoInt))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7119"
        _f(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s_%s_%s" : stdgo.GoString), new stdgo.AnyInterface(_typ, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_codeStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7120"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _startPush( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _msg:stdgo.Ref<stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6953"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6958"
        if ((((@:checkr (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state != (1 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) && ((@:checkr (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state != (3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6960"
            (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.__send__(stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6961"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6965"
        if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pushEnabled) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6966"
            (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done.__send__(stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotsupported.errNotSupported, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdothttpdotHttp_protocolerrordotProtocolError })));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6967"
            return;
        };
        var _allocatePromisedID = @:assignType (function():{ var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; } {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6974"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6978"
            if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pushEnabled) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6979"
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_errnotsupported.errNotSupported, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_protocolerrordotprotocolerror.__type__stdgodot_internaldotnetdothttpdotHttp_protocolerrordotProtocolError })) };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6982"
            if ((((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curPushedStreams + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) > (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientMaxStreams : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6983"
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.net.http.Http__http2errpushlimitreached._http2ErrPushLimitReached };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6990"
            if ((((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxPushPromiseID + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) >= (-2147483648u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6991"
                _sc._startGracefulShutdownInternal();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6992"
                return { _0 : (0u32 : stdgo.GoUInt32), _1 : stdgo._internal.net.http.Http__http2errpushlimitreached._http2ErrPushLimitReached };
            };
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxPushPromiseID = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxPushPromiseID + ((2u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            var _promisedID = @:assignType ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxPushPromiseID : stdgo.GoUInt32);
            var _promised = _sc._newStream(_promisedID, (@:checkr (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState));
            var __tmp__ = _sc._newWriterAndRequestNoBody(_promised, ({ _method : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._method?.__copy__(), _scheme : (@:checkr (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__(), _authority : (@:checkr (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__(), _path : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url.requestURI()?.__copy__(), _header : stdgo._internal.net.http.Http__http2cloneheader._http2cloneHeader((@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header) } : stdgo._internal.net.http.Http_t_http2requestparam.T_http2requestParam)), _rw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = __tmp__._0, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7010"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7012"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("newWriterAndRequestNoBody(%+v): %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url, _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL }))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                })), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7015"
            {
                final __tmp__0 = _rw;
final __tmp__1 = _req;
final __tmp__2 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handler.serveHTTP;
                stdgo.Go.routine(() -> _sc._runHandler(__tmp__0, __tmp__1, __tmp__2));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7016"
            return { _0 : _promisedID, _1 : (null : stdgo.Error) };
        } : () -> { var _0 : stdgo.GoUInt32; var _1 : stdgo.Error; });
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7019"
        _sc._writeFrame(({ _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _streamID : (@:checkr (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _method : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._method?.__copy__(), _url : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._url, _h : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header, _allocatePromisedID : _allocatePromisedID } : stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writepushpromisedott_http2writepushpromise.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writepushpromisedotT_http2writePushPromise })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writepushpromisedott_http2writepushpromise.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writepushpromisedotT_http2writePushPromise })), _stream : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parent, _done : (@:checkr _msg ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
    }
    @:keep
    @:tdfield
    static public function _sendWindowUpdate( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _n:stdgo.GoInt):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6285"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _streamID:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _send:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6288"
        if (({
            final value = _st;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _send = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(_n);
        } else {
            _streamID = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
            _send = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._add(_n);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6294"
        if (_send == ((0 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6295"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6297"
        _sc._writeFrame(({ _write : stdgo.Go.asInterface(({ _streamID : _streamID, _n : (_send : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_t_http2writewindowupdate.T_http2writeWindowUpdate), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writewindowupdatedott_http2writewindowupdate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writewindowupdatedotT_http2writeWindowUpdate), _stream : _st } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
    }
    @:keep
    @:tdfield
    static public function _sendWindowUpdate32( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _n:stdgo.GoInt32):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6280"
        _sc._sendWindowUpdate(_st, (_n : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function _noteBodyRead( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _n:stdgo.GoInt):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6269"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6270"
        _sc._sendWindowUpdate(null, _n);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6271"
        if ((((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state != (3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) && ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state != (4 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6274"
            _sc._sendWindowUpdate(_st, _n);
        };
    }
    @:keep
    @:tdfield
    static public function _noteBodyReadFromHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _n:stdgo.GoInt, _err:stdgo.Error):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6259"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._checkNotOn();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6260"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6261"
            {
                var __select__ = true;
                var __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyReadCh;
var __c__1 = null;
                while (__select__) {
                    if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyReadCh != null && __c__0.__isSend__(true)) {
                        __select__ = false;
                        {
                            __c__0.__send__((new stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg(_st, _n) : stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg));
                            {};
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
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
        };
    }
    @:keep
    @:tdfield
    static public function _write100ContinueHeaders( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6242"
        _sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id) : stdgo._internal.net.http.Http_t_http2write100continueheadersframe.T_http2write100ContinueHeadersFrame), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2write100continueheadersframedott_http2write100continueheadersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2write100continueheadersframedotT_http2write100ContinueHeadersFrame), _stream : _st } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
    }
    @:keep
    @:tdfield
    static public function _writeHeaders( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _headerData:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6210"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._checkNotOn();
        var _errc:stdgo.Chan<stdgo.Error> = (null : stdgo.Chan<stdgo.Error>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6212"
        if ((@:checkr _headerData ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h != null) {
            _errc = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.get(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Chan<stdgo.Error>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6219"
        {
            var _err = @:assignType (_sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface(_headerData, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeresheadersdott_http2writeresheaders.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeresheadersdotT_http2writeResHeaders })), _stream : _st, _done : _errc } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6224"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6226"
        if (_errc != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6227"
            {
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _errc;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _err = __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6229"
                                    stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.put(new stdgo.AnyInterface(_errc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }))));
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6230"
                                    return _err;
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6232"
                                    return stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected;
                                };
                            };
                        } else if ({
                            if (__c__2 == null) {
                                __c__2 = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw;
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__2.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6234"
                                    return stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed;
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
                return (null : stdgo.Error);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6237"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _runHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _rw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _handler:(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) -> Void):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {
                var _a0 = stdgo._internal.net.http.Http__http2handlerdonemsg._http2handlerDoneMsg;
                final __f__ = _sc._sendServeMsg;
                __deferstack__.unshift({ ran : false, f : () -> __f__(new stdgo.AnyInterface(_a0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2servermessagedott_http2servermessage.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2servermessagedotT_http2serverMessage })))) });
            };
            var _didPanic = @:assignType (true : Bool);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6172"
                        (@:checkr (@:checkr (@:checkr _rw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6173"
                        if (({
                            final value = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6174"
                            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).multipartForm.removeAll();
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6176"
                        if (_didPanic) {
                            var _e = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6178"
                            _sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST((@:checkr (@:checkr (@:checkr _rw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id) : stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2handlerpanicrstdott_http2handlerpanicrst.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2handlerpanicrstdotT_http2handlerPanicRST), _stream : (@:checkr (@:checkr _rw ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6183"
                            if ((({
                                final value = _e;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) && (_e != ({
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
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6187"
                                _sc._logf(("http2: panic serving %v: %v\n%s" : stdgo.GoString), ({
                                    final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }), _e, new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6189"
                            return;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6191"
                        _rw._handlerDone();
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6193"
            _handler(stdgo.Go.asInterface(_rw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2responsewriterdott_http2responsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2responsewriterdotT_http2responseWriter })), _req);
            _didPanic = false;
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
    static public function _handlerDone( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6144"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6145"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curHandlers--;
        var _i = @:assignType (0 : stdgo.GoInt);
        var _maxHandlers = @:assignType ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._advMaxStreams : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6148"
        while ((_i < ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers.length) : Bool)) {
            var _u = @:assignType ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers[(_i : stdgo.GoInt)] : stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6150"
            if (({
                final value = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_u._streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>));
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6152"
                {
                    _i++;
                    continue;
                };
            };
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6154"
            if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curHandlers >= _maxHandlers : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6155"
                break;
            };
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6157"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curHandlers++;
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6158"
            {
                final __tmp__0 = _u._rw;
final __tmp__1 = _u._req;
final __tmp__2 = _u._handler;
                stdgo.Go.routine(() -> _sc._runHandler(__tmp__0, __tmp__1, __tmp__2));
            };
(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers[(_i : stdgo.GoInt)] = (new stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler() : stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler);
            _i++;
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers.__slice__(_i) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6162"
        if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler>);
        };
    }
    @:keep
    @:tdfield
    static public function _scheduleHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _streamID:stdgo.GoUInt32, _rw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _handler:(stdgo._internal.net.http.Http_responsewriter.ResponseWriter, stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) -> Void):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6124"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _maxHandlers = @:assignType ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._advMaxStreams : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6126"
        if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curHandlers < _maxHandlers : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6127"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curHandlers++;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6128"
            {
                final __tmp__0 = _rw;
final __tmp__1 = _req;
final __tmp__2 = _handler;
                stdgo.Go.routine(() -> _sc._runHandler(__tmp__0, __tmp__1, __tmp__2));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6129"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6131"
        if ((((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers.length) > (((4u32 : stdgo.GoUInt32) * (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._advMaxStreams : stdgo.GoUInt32) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6132"
            return _sc._countError(("too_many_early_resets" : stdgo.GoString), stdgo.Go.asInterface(((11u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unstartedHandlers.__append__(({ _streamID : _streamID, _rw : _rw, _req : _req, _handler : _handler } : stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler)) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6140"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _newResponseWriter( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var _rws = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2responsewriterstatepool._http2responseWriterStatePool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2responsewriterstatedott_http2responsewriterstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2responsewriterstatedotT_http2responseWriterState })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState>);
        var _bwSave = (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw;
        {
            var __tmp__ = (new stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState() : stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState);
            var x = (_rws : stdgo._internal.net.http.Http_t_http2responsewriterstate.T_http2responseWriterState);
            x._stream = __tmp__?._stream;
            x._req = __tmp__?._req;
            x._conn = __tmp__?._conn;
            x._bw = __tmp__?._bw;
            x._handlerHeader = __tmp__?._handlerHeader;
            x._snapHeader = __tmp__?._snapHeader;
            x._trailers = __tmp__?._trailers;
            x._status = __tmp__?._status;
            x._wroteHeader = __tmp__?._wroteHeader;
            x._sentHeader = __tmp__?._sentHeader;
            x._handlerDone = __tmp__?._handlerDone;
            x._dirty = __tmp__?._dirty;
            x._sentContentLen = __tmp__?._sentContentLen;
            x._wroteBytes = __tmp__?._wroteBytes;
            x._closeNotifierMu = __tmp__?._closeNotifierMu;
            x._closeNotifierCh = __tmp__?._closeNotifierCh;
        };
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn = _sc;
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw = _bwSave;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6108"
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.reset(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter(_rws) : stdgo._internal.net.http.Http_t_http2chunkwriter.T_http2chunkWriter), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2chunkwriterdott_http2chunkwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2chunkwriterdotT_http2chunkWriter));
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream = _st;
        (@:checkr _rws ?? throw stdgo.Error._nullPointerDereference.__underlying__())._req = _req;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6111"
        return (stdgo.Go.setRef(({ _rws : _rws } : stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2responsewriterdott_http2responsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2responsewriterdotT_http2responseWriter })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>);
    }
    @:keep
    @:tdfield
    static public function _newWriterAndRequestNoBody( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _rp:stdgo._internal.net.http.Http_t_http2requestparam.T_http2requestParam):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _2 : stdgo.Error; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6028"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6031"
        if (_rp._scheme == (("https" : stdgo.GoString))) {
            _tlsState = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState;
        };
        var _needsContinue = @:assignType (_internal.golangdotorg.x.net.http.httpguts.Httpguts_headervaluescontainstoken.headerValuesContainsToken((_rp._header[("Expect" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)), ("100-continue" : stdgo.GoString)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6036"
        if (_needsContinue) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6037"
            _rp._header.del(("Expect" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6040"
        {
            var _cookies = (_rp._header[("Cookie" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
            if (((_cookies.length) > (1 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6041"
                _rp._header.set(("Cookie" : stdgo.GoString), stdgo._internal.strings.Strings_join.join(_cookies, ("; " : stdgo.GoString))?.__copy__());
            };
        };
        var _trailer:stdgo._internal.net.http.Http_header.Header = (null : stdgo._internal.net.http.Http_header.Header);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6046"
        if ((_rp._header[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)) != null) for (__12 => _v in (_rp._header[("Trailer" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6047"
            if (stdgo._internal.strings.Strings_split.split(_v?.__copy__(), ("," : stdgo.GoString)) != null) for (__13 => _key in stdgo._internal.strings.Strings_split.split(_v?.__copy__(), ("," : stdgo.GoString))) {
                _key = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(stdgo._internal.net.textproto.Textproto_trimstring.trimString(_key?.__copy__())?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6049"
                {
                    final __value__ = _key;
                    if (__value__ == (("Transfer-Encoding" : stdgo.GoString)) || __value__ == (("Trailer" : stdgo.GoString)) || __value__ == (("Content-Length" : stdgo.GoString))) {} else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6054"
                        if (_trailer == null) {
                            _trailer = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
                        };
                        _trailer[_key] = (null : stdgo.Slice<stdgo.GoString>);
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6061"
        if (_rp._header != null) _rp._header.__remove__(("Trailer" : stdgo.GoString));
        var _url_:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = (null : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        var _requestURI:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6065"
        if (_rp._method == (("CONNECT" : stdgo.GoString))) {
            _url_ = (stdgo.Go.setRef(({ host : _rp._authority?.__copy__() } : stdgo._internal.net.url.Url_url.URL), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
            _requestURI = _rp._authority?.__copy__();
        } else {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.net.url.Url_parserequesturi.parseRequestURI(_rp._path?.__copy__());
                _url_ = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6071"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6072"
                return { _0 : null, _1 : null, _2 : _sc._countError(("bad_path" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError)) };
            };
            _requestURI = _rp._path?.__copy__();
        };
        var _body = (stdgo.Go.setRef(({ _conn : _sc, _stream : _st, _needsContinue : _needsContinue } : stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2requestbodydott_http2requestbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2requestbodydotT_http2requestBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>);
        var _req = (stdgo.Go.setRef(({ method : _rp._method?.__copy__(), uRL : _url_, remoteAddr : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._remoteAddrStr?.__copy__(), header : _rp._header, requestURI : _requestURI?.__copy__(), proto : ("HTTP/2.0" : stdgo.GoString), protoMajor : (2 : stdgo.GoInt), protoMinor : (0 : stdgo.GoInt), tLS : _tlsState, host : _rp._authority?.__copy__(), body : stdgo.Go.asInterface(_body, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2requestbodydott_http2requestbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2requestbodydotT_http2requestBody })), trailer : _trailer } : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        _req = _req.withContext((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ctx);
        var _rw = _sc._newResponseWriter(_st, _req);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6099"
        return { _0 : _rw, _1 : _req, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _newWriterAndRequest( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter>; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _2 : stdgo.Error; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5963"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _rp = @:assignType ({ _method : _f.pseudoValue(("method" : stdgo.GoString))?.__copy__(), _scheme : _f.pseudoValue(("scheme" : stdgo.GoString))?.__copy__(), _authority : _f.pseudoValue(("authority" : stdgo.GoString))?.__copy__(), _path : _f.pseudoValue(("path" : stdgo.GoString))?.__copy__() } : stdgo._internal.net.http.Http_t_http2requestparam.T_http2requestParam);
        var _isConnect = @:assignType (_rp._method == (("CONNECT" : stdgo.GoString)) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5973"
        if (_isConnect) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5974"
            if (((_rp._path != ((stdgo.Go.str() : stdgo.GoString)) || _rp._scheme != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (_rp._authority == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5975"
                return { _0 : null, _1 : null, _2 : _sc._countError(("bad_connect" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError)) };
            };
        } else if (((_rp._method == ((stdgo.Go.str() : stdgo.GoString)) || _rp._path == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (((_rp._scheme != ("https" : stdgo.GoString)) && (_rp._scheme != ("http" : stdgo.GoString)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5988"
            return { _0 : null, _1 : null, _2 : _sc._countError(("bad_path_method" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError)) };
        };
        _rp._header = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5992"
        if (_f.regularFields() != null) for (__12 => _hf in _f.regularFields()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5993"
            _rp._header.add(_sc._canonicalHeader(_hf.name?.__copy__())?.__copy__(), _hf.value?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5995"
        if (_rp._authority == ((stdgo.Go.str() : stdgo.GoString))) {
            _rp._authority = _rp._header.get(("Host" : stdgo.GoString))?.__copy__();
        };
        var __tmp__ = _sc._newWriterAndRequestNoBody(_st, _rp?.__copy__()), _rw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = __tmp__._0, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6000"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6001"
            return { _0 : null, _1 : null, _2 : _err };
        };
        var _bodyOpen = @:assignType (!_f.streamEnded() : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6004"
        if (_bodyOpen) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6005"
            {
                var __tmp__ = (_rp._header != null && _rp._header.__exists__(("Content-Length" : stdgo.GoString)) ? { _0 : _rp._header[("Content-Length" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _vv:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6006"
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_vv[(0 : stdgo.GoInt)]?.__copy__(), (10 : stdgo.GoInt), (63 : stdgo.GoInt)), _cl:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (_cl : stdgo.GoInt64);
                        } else {
                            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (0i64 : stdgo.GoInt64);
                        };
                    };
                } else {
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
                };
            };
            (@:checkr (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2requestbodydott_http2requestbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2requestbodydotT_http2requestBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pipe = (stdgo.Go.setRef(({ _b : stdgo.Go.asInterface((stdgo.Go.setRef(({ _expected : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength } : stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2databufferdott_http2databuffer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2databufferdotT_http2dataBuffer })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2databuffer.T_http2dataBuffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2databufferdott_http2databuffer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2databufferdotT_http2dataBuffer })) } : stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pipedott_http2pipe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pipedotT_http2pipe })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pipe.T_http2pipe>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L6018"
        return { _0 : _rw, _1 : _req, _2 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _newStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _id:stdgo.GoUInt32, _pusherID:stdgo.GoUInt32, _state:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState):stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5927"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5928"
        if (_id == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5929"
            throw new stdgo.AnyInterface(("internal error: cannot create stream with id 0" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var __tmp__ = stdgo._internal.context.Context_withcancel.withCancel((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._baseCtx), _ctx:stdgo._internal.context.Context_context.Context = __tmp__._0, _cancelCtx:stdgo._internal.context.Context_cancelfunc.CancelFunc = __tmp__._1;
        var _st = (stdgo.Go.setRef(({ _sc : _sc, _id : _id, _state : _state, _ctx : _ctx, _cancelCtx : _cancelCtx } : stdgo._internal.net.http.Http_t_http2stream.T_http2stream), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamdott_http2stream.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamdotT_http2stream })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5940"
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw.init();
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._conn = (stdgo.Go.setRef((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5942"
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialStreamSendWindowSize);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5943"
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._init((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv._initialStreamRecvWindowSize());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5944"
        if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline = stdgo._internal.time.Time_afterfunc.afterFunc((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeTimeout, _st._onWriteTimeout);
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_id] = _st;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5949"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched.openStream((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, ({ pusherID : _pusherID } : stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5950"
        if (_st._isPushed()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5951"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curPushedStreams++;
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5953"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curClientStreams++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5955"
        if (_sc._curOpenStreams() == ((1u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5956"
            _sc._setConnState((1 : stdgo._internal.net.http.Http_connstate.ConnState));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5959"
        return _st;
    }
    @:keep
    @:tdfield
    static public function _processPriority( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5919"
        {
            var _err = @:assignType (_sc._checkPriority((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2PriorityParam?.__copy__()) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5920"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5922"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched.adjustStream((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2PriorityParam?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5923"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _checkPriority( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5908"
        if (_streamID == (_p.streamDep)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5913"
            return _sc._countError(("priority" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_streamID, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5915"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _upgradeRequest( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5854"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _id = @:assignType ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClientStreamID = _id;
        var _st = _sc._newStream(_id, (0u32 : stdgo.GoUInt32), (3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState));
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5859"
        if ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer != null) {
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        var _rw = _sc._newResponseWriter(_st, _req);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5866"
        if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5867"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.setReadDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5873"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curHandlers++;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5874"
        {
            final __tmp__0 = _rw;
final __tmp__1 = _req;
final __tmp__2 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handler.serveHTTP;
            stdgo.Go.routine(() -> _sc._runHandler(__tmp__0, __tmp__1, __tmp__2));
        };
    }
    @:keep
    @:tdfield
    static public function _processHeaders( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5741"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _id = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5748"
        if ((_id % (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((1u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5749"
            return _sc._countError(("headers_even" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5755"
        {
            var _st = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID] ?? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>));
            if (({
                final value = _st;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5756"
                if ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resetQueued) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5759"
                    return (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5765"
                if ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == ((3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5766"
                    return _sc._countError(("headers_half_closed" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (5u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5768"
                return _st._processTrailerHeaders(_f);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5776"
        if ((_id <= (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClientStreamID : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5777"
            return _sc._countError(("stream_went_down" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClientStreamID = _id;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5781"
        if (({
            final value = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5782"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.stop();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5791"
        if ((((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curClientStreams + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) > (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._advMaxStreams : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5792"
            if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unackedSettings == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5794"
                return _sc._countError(("over_max_streams" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5801"
            return _sc._countError(("over_max_streams_race" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (7u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        };
        var _initialState = @:assignType (1 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5805"
        if (_f.streamEnded()) {
            _initialState = (3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState);
        };
        var _st = _sc._newStream(_id, (0u32 : stdgo.GoUInt32), _initialState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5810"
        if (_f.hasPriority()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5811"
            {
                var _err = @:assignType (_sc._checkPriority((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame.priority?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5812"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5814"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched.adjustStream((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame.priority?.__copy__());
        };
        var __tmp__ = _sc._newWriterAndRequest(_st, _f), _rw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2responsewriter.T_http2responseWriter> = __tmp__._0, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5818"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5819"
            return _err;
        };
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5822"
        if ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer != null) {
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body = (@:checkr (stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2requestbodydott_http2requestbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2requestbodydotT_http2requestBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2requestbody.T_http2requestBody>) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pipe;
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declBodyBytes = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength;
        var _handler = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._handler.serveHTTP;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5829"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).truncated) {
            _handler = stdgo._internal.net.http.Http__http2handleheaderlisttoolong._http2handleHeaderListTooLong;
        } else {
            var _err = @:assignType (stdgo._internal.net.http.Http__http2checkvalidhttp2requestheaders._http2checkValidHTTP2RequestHeaders((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header) : stdgo.Error);
            if (_err != null) {
                _handler = stdgo._internal.net.http.Http__http2new400handler._http2new400Handler(_err);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5843"
        if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5844"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.setReadDeadline((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5845"
            if (({
                final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline = stdgo._internal.time.Time_afterfunc.afterFunc((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readTimeout, _st._onReadTimeout);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5850"
        return _sc._scheduleHandler(_id, _rw, _req, _handler);
    }
    @:keep
    @:tdfield
    static public function _processGoAway( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5677"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5678"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode != ((0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5679"
            _sc._logf(("http2: received GOAWAY %+v, starting graceful shutdown" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame }))));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5681"
            _sc._vlogf(("http2: received GOAWAY %+v, starting graceful shutdown" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame }))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5683"
        _sc._startGracefulShutdownInternal();
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pushEnabled = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5687"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processData( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5580"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _id = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header().streamID : stdgo.GoUInt32);
        var _data = _f.data();
        var __tmp__ = _sc._state(_id), _state:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState = __tmp__._0, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5585"
        if (((_id == (0u32 : stdgo.GoUInt32)) || (_state == (0 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5596"
            return _sc._countError(("data_on_idle" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5602"
        if ((((({
            final value = _st;
            (value == null || (value : Dynamic).__nil__);
        }) || _state != ((1 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) : Bool) || (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._gotTrailerHeader : Bool) || (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resetQueued : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5612"
            if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._take((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5613"
                return _sc._countError(("data_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5615"
            _sc._sendWindowUpdate(null, ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5617"
            if ((({
                final value = _st;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resetQueued : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5619"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5621"
            return _sc._countError(("closed" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (5u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5623"
        if (({
            final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5624"
            throw new stdgo.AnyInterface(("internal error: should have a body in this state" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5628"
        if ((((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declBodyBytes != (-1i64 : stdgo.GoInt64)) && (((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyBytes + (_data.length : stdgo.GoInt64) : stdgo.GoInt64) > (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declBodyBytes : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5629"
            if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._take((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5630"
                return _sc._countError(("data_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5632"
            _sc._sendWindowUpdate(null, ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5634"
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("sender tried to send more than declared Content-Length of %d bytes" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declBodyBytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)))));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5638"
            return _sc._countError(("send_too_much" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5640"
        if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ > (0u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5642"
            if (!stdgo._internal.net.http.Http__http2takeinflows._http2takeInflows((stdgo.Go.setRef((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow>), (stdgo.Go.setRef((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow>), (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5643"
                return _sc._countError(("flow_on_data_length" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_id, (3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5646"
            if (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyBytes = ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyBytes + ((_data.length : stdgo.GoInt64)) : stdgo.GoInt64);
                var __tmp__ = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.write(_data), _wrote:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5649"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5653"
                    _sc._sendWindowUpdate(null, (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ : stdgo.GoInt) - _wrote : stdgo.GoInt));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5654"
                    return (null : stdgo.Error);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5656"
                if (_wrote != ((_data.length))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5657"
                    throw new stdgo.AnyInterface(("internal error: bad Writer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            var _pad = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ : stdgo.GoInt32) - (_data.length : stdgo.GoInt32) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5667"
            _sc._sendWindowUpdate32(null, _pad);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5668"
            _sc._sendWindowUpdate32(_st, _pad);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5670"
        if (_f.streamEnded()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5671"
            _st._endStream();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5673"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processSettingInitialWindowSize( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _val:stdgo.GoUInt32):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5552"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _old = @:assignType ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialStreamSendWindowSize : stdgo.GoInt32);
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialStreamSendWindowSize = (_val : stdgo.GoInt32);
        var _growth = @:assignType ((_val : stdgo.GoInt32) - _old : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5565"
        if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) for (__12 => _st in (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5566"
            if (!(@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add(_growth)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5573"
                return _sc._countError(("setting_win_size" : stdgo.GoString), stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5576"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processSetting( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _s:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5520"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5521"
        {
            var _err = @:assignType (_s.valid() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5522"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5524"
        if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5525"
            _sc._vlogf(("http2: server processing setting %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingdott_http2setting.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingdotT_http2Setting), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingdott_http2setting.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingdotT_http2Setting)));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5527"
        {
            final __value__ = _s.iD;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5529"
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hpackEncoder.setMaxDynamicTableSize(_s.val);
            } else if (__value__ == ((2 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pushEnabled = _s.val != ((0u32 : stdgo.GoUInt32));
            } else if (__value__ == ((3 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._clientMaxStreams = _s.val;
            } else if (__value__ == ((4 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5535"
                return _sc._processSettingInitialWindowSize(_s.val);
            } else if (__value__ == ((5 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize = (_s.val : stdgo.GoInt32);
            } else if (__value__ == ((6 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerMaxHeaderListSize = _s.val;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5544"
                if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5545"
                    _sc._vlogf(("http2: server ignoring unknown setting %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_s, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingdott_http2setting.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingdotT_http2Setting), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingdott_http2setting.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingdotT_http2Setting)));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5548"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processSettings( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5492"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5493"
        if (_f.isAck()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5494"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unackedSettings--;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5495"
            if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unackedSettings < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5499"
                return _sc._countError(("ack_mystery" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5501"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5503"
        if (((_f.numSettings() > (100 : stdgo.GoInt) : Bool) || _f.hasDuplicates() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5507"
            return _sc._countError(("settings_big_or_dups" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5509"
        {
            var _err = @:assignType (_f.foreachSetting(_sc._processSetting) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5510"
                return _err;
            };
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needToSendSettingsAck = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5515"
        _sc._scheduleFrameWrite();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5516"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _closeStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _err:stdgo.Error):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5446"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5447"
        if ((((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == (0 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) || ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state == (4 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5448"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invariant; can\'t close stream in state %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamstatedott_http2streamstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamstatedotT_http2streamState), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamstatedott_http2streamstate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamstatedotT_http2streamState))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (4 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5451"
        if (({
            final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5452"
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readDeadline.stop();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5454"
        if (({
            final value = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5455"
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeDeadline.stop();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5457"
        if (_st._isPushed()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5458"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curPushedStreams--;
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5460"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curClientStreams--;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5462"
        if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.__remove__((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5463"
        if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5464"
            _sc._setConnState((2 : stdgo._internal.net.http.Http_connstate.ConnState));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5465"
            if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5466"
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.reset((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5468"
            if (stdgo._internal.net.http.Http__http2h1serverkeepalivesdisabled._http2h1ServerKeepAlivesDisabled((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5469"
                _sc._startGracefulShutdownInternal();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5472"
        {
            var _p = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body;
            if (({
                final value = _p;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5475"
                _sc._sendWindowUpdate(null, _p.len());
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5477"
                _p.closeWithError(_err);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5479"
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
            }, _e = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5480"
                if (_e.cause != null) {
                    _err = _e.cause;
                } else {
                    _err = stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed;
                };
            };
        };
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closeErr = _err;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5487"
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw.close();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5488"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched.closeStream((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id);
    }
    @:keep
    @:tdfield
    static public function _processResetStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5427"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var __tmp__ = _sc._state((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID), _state:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState = __tmp__._0, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5430"
        if (_state == ((0 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5436"
            return _sc._countError(("reset_idle_stream" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5438"
        if (({
            final value = _st;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5439"
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cancelCtx();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5440"
            _sc._closeStream(_st, stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errCode), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5442"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processWindowUpdate( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5395"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5396"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID != ((0u32 : stdgo.GoUInt32))) {
            var __tmp__ = _sc._state((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID), _state:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState = __tmp__._0, _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5399"
            if (_state == ((0 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5404"
                return _sc._countError(("stream_idle" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5406"
            if (({
                final value = _st;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5412"
                return (null : stdgo.Error);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5414"
            if (!(@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).increment : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5415"
                return _sc._countError(("bad_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID, (3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5418"
            if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).increment : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5419"
                return stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError() : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayflowerrordott_http2goawayflowerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayflowerrordotT_http2goAwayFlowError);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5422"
        _sc._scheduleFrameWrite();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5423"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processPing( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5376"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5377"
        if (_f.isAck()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5380"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5382"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID != ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5388"
            return _sc._countError(("ping_on_stream" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5390"
        _sc._writeFrame(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2writepingack.T_http2writePingAck(_f) : stdgo._internal.net.http.Http_t_http2writepingack.T_http2writePingAck), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writepingackdott_http2writepingack.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writepingackdotT_http2writePingAck) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5391"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _processFrame( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5323"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5326"
        if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawFirstSettings) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5327"
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
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5328"
                    return _sc._countError(("first_settings" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
                };
            };
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawFirstSettings = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5337"
        if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inGoAway && ((((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode != (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)) || (_f.header().streamID > (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClientStreamID : Bool) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5339"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _f;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2dataframedott_http2dataframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2dataframedotT_http2DataFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>), _1 : false };
                }, _f = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5340"
                    if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._take((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5341"
                        return _sc._countError(("data_flow" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header().streamID, (3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5343"
                    _sc._sendWindowUpdate(null, ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.length_ : stdgo.GoInt));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5345"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5348"
        {
            final __type__ = _f;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingsframedott_http2settingsframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingsframedotT_http2SettingsFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5350"
                return _sc._processSettings(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2metaheadersframedott_http2metaheadersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2metaheadersframedotT_http2MetaHeadersFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5352"
                return _sc._processHeaders(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2windowupdateframedott_http2windowupdateframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2windowupdateframedotT_http2WindowUpdateFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2windowupdateframe.T_http2WindowUpdateFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5354"
                return _sc._processWindowUpdate(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pingframedott_http2pingframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pingframedotT_http2PingFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pingframe.T_http2PingFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5356"
                return _sc._processPing(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2dataframedott_http2dataframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2dataframedotT_http2DataFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2dataframe.T_http2DataFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5358"
                return _sc._processData(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2rststreamframedott_http2rststreamframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2rststreamframedotT_http2RSTStreamFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2rststreamframe.T_http2RSTStreamFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5360"
                return _sc._processResetStream(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2priorityframedott_http2priorityframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2priorityframedotT_http2PriorityFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5362"
                return _sc._processPriority(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5364"
                return _sc._processGoAway(_f);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pushpromiseframedott_http2pushpromiseframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pushpromiseframedotT_http2PushPromiseFrame }))) {
                var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5368"
                return _sc._countError(("push_promise" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
            } else {
                var _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __type__ == null ? (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5370"
                _sc._vlogf(("http2: server ignoring frame: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_f.header(), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2frameheaderdott_http2frameheader.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2frameheaderdotT_http2FrameHeader), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2frameheaderdott_http2frameheader.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2frameheaderdotT_http2FrameHeader)));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5371"
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _processFrameFromReader( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _res:stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult):Bool {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5271"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _err = @:assignType (_res._err : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5273"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5274"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.net.http.Http__http2errframetoolarge._http2ErrFrameTooLarge;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5275"
                _sc._goAway((6u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5276"
                return true;
            };
            var _clientGone = @:assignType ((({
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
            })) || ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool) || stdgo._internal.net.http.Http__http2isclosedconnerror._http2isClosedConnError(_err) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5279"
            if (_clientGone) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5288"
                return false;
            };
        } else {
            var _f = @:assignType (_res._f : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5292"
            if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5293"
                _sc._vlogf(("http2: server read frame %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2summarizeframe._http2summarizeFrame(_f), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            _err = _sc._processFrame(_f);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5296"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5297"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5301"
        {
            final __type__ = _err;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError)) {
                var _ev:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = __type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5303"
                _sc._resetStream(_ev?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5304"
                return true;
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayflowerrordott_http2goawayflowerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayflowerrordotT_http2goAwayFlowError)) {
                var _ev:stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError = __type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5306"
                _sc._goAway((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5307"
                return true;
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError)) {
                var _ev:stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError = __type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError) : __type__.__underlying__() == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5309"
                _sc._logf(("http2: server connection error from %v: %v" : stdgo.GoString), ({
                    final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(stdgo.Go.asInterface(_ev, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError)));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5310"
                _sc._goAway((_ev : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5311"
                return true;
            } else {
                var _ev:stdgo.Error = __type__ == null ? (null : stdgo.Error) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5313"
                if (_res._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5314"
                    _sc._vlogf(("http2: server closing client connection; error reading frame from client %s: %v" : stdgo.GoString), ({
                        final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
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
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5316"
                    _sc._logf(("http2: server closing client connection: %v" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5318"
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _resetStream( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _se:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5260"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5261"
        _sc._writeFrame(({ _write : stdgo.Go.asInterface(_se, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5262"
        {
            var __tmp__ = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null && (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.__exists__(_se.streamID) ? { _0 : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_se.streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>), _1 : false }), _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resetQueued = true;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _shutDownIn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5255"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._shutdownTimer = stdgo._internal.time.Time_afterfunc.afterFunc(_d, _sc._onShutdownTimer);
    }
    @:keep
    @:tdfield
    static public function _goAway( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5241"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5242"
        if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inGoAway) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5243"
            if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode == ((0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode))) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode = _code;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5246"
            return;
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inGoAway = true;
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needToSendGoAway = true;
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode = _code;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5251"
        _sc._scheduleFrameWrite();
    }
    @:keep
    @:tdfield
    static public function _startGracefulShutdownInternal( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5237"
        _sc._goAway((0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode));
    }
    @:keep
    @:tdfield
    static public function _startGracefulShutdown( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5214"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._checkNotOn();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5215"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._shutdownOnce.do_(function():Void {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5215"
            _sc._sendServeMsg(new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2gracefulshutdownmsg._http2gracefulShutdownMsg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2servermessagedott_http2servermessage.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2servermessagedotT_http2serverMessage }))));
        });
    }
    @:keep
    @:tdfield
    static public function _scheduleFrameWrite( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5166"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5167"
        if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrame || (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inFrameScheduleLoop : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5168"
            return;
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inFrameScheduleLoop = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5171"
        while (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrameAsync) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5172"
            if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needToSendGoAway) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needToSendGoAway = false;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5174"
                _sc._startFrameWrite(({ _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _maxStreamID : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClientStreamID, _code : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode } : stdgo._internal.net.http.Http_t_http2writegoaway.T_http2writeGoAway), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writegoawaydott_http2writegoaway.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writegoawaydotT_http2writeGoAway })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writegoaway.T_http2writeGoAway>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writegoawaydott_http2writegoaway.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writegoawaydotT_http2writeGoAway })) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5180"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5182"
            if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needToSendSettingsAck) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needToSendSettingsAck = false;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5184"
                _sc._startFrameWrite(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2writesettingsack.T_http2writeSettingsAck() : stdgo._internal.net.http.Http_t_http2writesettingsack.T_http2writeSettingsAck), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writesettingsackdott_http2writesettingsack.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writesettingsackdotT_http2writeSettingsAck) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5185"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5187"
            if ((!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inGoAway || ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode == (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5188"
                {
                    var __tmp__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched.pop(), _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5189"
                        if (_wr._isControl()) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5190"
                            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuedControlFrames--;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5192"
                        _sc._startFrameWrite(_wr?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5193"
                        continue;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5196"
            if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needsFrameFlush) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5197"
                _sc._startFrameWrite(({ _write : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2flushframewriter.T_http2flushFrameWriter() : stdgo._internal.net.http.Http_t_http2flushframewriter.T_http2flushFrameWriter), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2flushframewriterdott_http2flushframewriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2flushframewriterdotT_http2flushFrameWriter) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needsFrameFlush = false;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5199"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5201"
            break;
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inFrameScheduleLoop = false;
    }
    @:keep
    @:tdfield
    static public function _wroteFrame( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _res:stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5102"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5103"
        if (!(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrame) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5104"
            throw new stdgo.AnyInterface(("internal error: expected to be already writing a frame" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrame = false;
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrameAsync = false;
        var _wr = @:assignType (_res._wr?.__copy__() : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5111"
        if (stdgo._internal.net.http.Http__http2writeendsstream._http2writeEndsStream(_wr._write)) {
            var _st = _wr._stream;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5113"
            if (({
                final value = _st;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5114"
                throw new stdgo.AnyInterface(("internal error: expecting non-nil stream" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5116"
            {
                final __value__ = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state;
                if (__value__ == ((1 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState))) {
                    (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (2 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5133"
                    _sc._resetStream(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode))?.__copy__());
                } else if (__value__ == ((3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5135"
                    _sc._closeStream(_st, stdgo._internal.net.http.Http__http2errhandlercomplete._http2errHandlerComplete);
                };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5138"
            {
                final __type__ = _wr._write;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError)) {
                    var _v:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = __type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5141"
                    {
                        var __tmp__ = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null && (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.__exists__(_v.streamID) ? { _0 : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_v.streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>), _1 : false }), _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5142"
                            _sc._closeStream(_st, stdgo.Go.asInterface(_v, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
                        };
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2handlerpanicrstdott_http2handlerpanicrst.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2handlerpanicrstdotT_http2handlerPanicRST)) {
                    var _v:stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST = __type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST) : __type__.__underlying__() == null ? ({} : stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.net.http.Http_t_http2handlerpanicrst.T_http2handlerPanicRST) : __type__.__underlying__().value);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5145"
                    _sc._closeStream(_wr._stream, stdgo._internal.net.http.Http__http2errhandlerpanicked._http2errHandlerPanicked);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5150"
        _wr._replyToWriter(_res._err);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5152"
        _sc._scheduleFrameWrite();
    }
    @:keep
    @:tdfield
    static public function _startFrameWrite( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5045"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5046"
        if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrame) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5047"
            throw new stdgo.AnyInterface(("internal error: can only be writing one frame at a time" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _st = _wr._stream;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5051"
        if (({
            final value = _st;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5052"
            {
                final __value__ = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state;
                if (__value__ == ((2 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5054"
                    {
                        final __type__ = _wr._write;
                        if (stdgo.Go.typeEquals(({
                            final __t__ = __type__;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) || stdgo.Go.typeEquals(({
                            final __t__ = __type__;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2handlerpanicrstdott_http2handlerpanicrst.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2handlerpanicrstdotT_http2handlerPanicRST) || stdgo.Go.typeEquals(({
                            final __t__ = __type__;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writewindowupdatedott_http2writewindowupdate.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writewindowupdatedotT_http2writeWindowUpdate)) {} else {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5059"
                            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: attempt to send frame on a half-closed-local stream: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_wr, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framewriterequestdott_http2framewriterequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framewriterequestdotT_http2FrameWriteRequest), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framewriterequestdott_http2framewriterequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framewriterequestdotT_http2FrameWriteRequest))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
                    };
                } else if (__value__ == ((4 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5062"
                    throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("internal error: attempt to send frame on a closed stream: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_wr, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framewriterequestdott_http2framewriterequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framewriterequestdotT_http2FrameWriteRequest), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framewriterequestdott_http2framewriterequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framewriterequestdotT_http2FrameWriteRequest))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5065"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _wr._write;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writepushpromisedott_http2writepushpromise.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writepushpromisedotT_http2writePushPromise })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writepushpromise.T_http2writePushPromise>), _1 : false };
            }, _wpp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = (@:checkr _wpp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._allocatePromisedID();
                    (@:checkr _wpp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._promisedID = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5068"
                if (_err != null) {
                    (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrameAsync = false;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5070"
                    _wr._replyToWriter(_err);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5071"
                    return;
                };
            };
        };
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrame = true;
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needsFrameFlush = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5077"
        if (_wr._write._staysWithinBuffer((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.available())) {
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrameAsync = false;
            var _err = @:assignType (_wr._write._writeFrame(stdgo.Go.asInterface(_sc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn }))) : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5080"
            _sc._wroteFrame(({ _wr : _wr?.__copy__(), _err : _err } : stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult));
        } else {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _wr._write;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), _1 : false };
            }, _wd = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5085"
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._framer._startWriteDataPadded((@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamID, (@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endStream, (@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p, (null : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrameAsync = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5087"
                {
                    final __tmp__0 = _wr?.__copy__();
final __tmp__1 = _wd;
                    stdgo.Go.routine(() -> _sc._writeFrameAsync(__tmp__0, __tmp__1));
                };
            } else {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrameAsync = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5090"
                {
                    final __tmp__0 = _wr?.__copy__();
final __tmp__1 = null;
                    stdgo.Go.routine(() -> _sc._writeFrameAsync(__tmp__0, __tmp__1));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4981"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        var _ignoreWrite:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5004"
        if (_wr.streamID() != ((0u32 : stdgo.GoUInt32))) {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _wr._write;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : true };
            } catch(__exception__) {
                { _0 : ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : false };
            }, __12 = __tmp__._0, _isReset = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5006"
            {
                var __tmp__ = _sc._state(_wr.streamID()), _state:stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState = __tmp__._0, __13:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = __tmp__._1;
                if (((_state == (4 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState)) && !_isReset : Bool)) {
                    _ignoreWrite = true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5013"
        {
            final __type__ = _wr._write;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeresheadersdott_http2writeresheaders.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeresheadersdotT_http2writeResHeaders }))) {
                (@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeaders = true;
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2write100continueheadersframedott_http2write100continueheadersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2write100continueheadersframedotT_http2write100ContinueHeadersFrame)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5017"
                if ((@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteHeaders) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5020"
                    if (_wr._done != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5021"
                        throw new stdgo.AnyInterface(("wr.done != nil for write100ContinueHeadersFrame" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                    _ignoreWrite = true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5027"
        if (!_ignoreWrite) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5028"
            if (_wr._isControl()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5029"
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuedControlFrames++;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5032"
                if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuedControlFrames < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5033"
                    (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close();
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5036"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writeSched.push(_wr?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5038"
        _sc._scheduleFrameWrite();
    }
    @:keep
    @:tdfield
    static public function _writeFrameFromHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4961"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._checkNotOn();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4962"
        {
            {
                var __select__ = true;
                var __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wantWriteFrameCh;
var __c__1 = null;
                while (__select__) {
                    if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wantWriteFrameCh != null && __c__0.__isSend__(true)) {
                        __select__ = false;
                        {
                            __c__0.__send__(_wr?.__copy__());
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4964"
                                return (null : stdgo.Error);
                            };
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4968"
                                return stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected;
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            return (null : stdgo.Error);
        };
    }
    @:keep
    @:tdfield
    static public function _writeDataFromHandler( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _stream:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _data:stdgo.Slice<stdgo.GoUInt8>, _endStream:Bool):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var _ch = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.get(), stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Chan<stdgo.Error>);
        var _writeArg = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2writedatapool._http2writeDataPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>);
        {
            var __tmp__ = (new stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData((@:checkr _stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, _data, _endStream) : stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData);
            var x = (_writeArg : stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData);
            x._streamID = __tmp__?._streamID;
            x._p = __tmp__?._p;
            x._endStream = __tmp__?._endStream;
        };
        var _err = @:assignType (_sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface(_writeArg, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })), _stream : _stream, _done : _ch } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest)) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4922"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4923"
            return _err;
        };
        var _frameWriteDone:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4926"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = _ch;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        _err = __c__0.__get__();
                        {
                            _frameWriteDone = true;
                        };
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4930"
                            return stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected;
                        };
                    };
                } else if ({
                    if (__c__2 == null) {
                        __c__2 = (@:checkr _stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cw;
                    };
                    __c__2 != null && __c__2.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__2.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4939"
                            {
                                var __select__ = true;
                                var __c__0 = null;
                                while (__select__) {
                                    if ({
                                        if (__c__0 == null) {
                                            __c__0 = _ch;
                                        };
                                        __c__0 != null && __c__0.__isGet__(true);
                                    }) {
                                        __select__ = false;
                                        {
                                            _err = __c__0.__get__();
                                            {
                                                _frameWriteDone = true;
                                            };
                                        };
                                    } else {
                                        __select__ = false;
                                        {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4943"
                                            return stdgo._internal.net.http.Http__http2errstreamclosed._http2errStreamClosed;
                                        };
                                    };
                                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                                __c__0.__reset__();
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
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4946"
        stdgo._internal.net.http.Http__http2errchanpool._http2errChanPool.put(new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4947"
        if (_frameWriteDone) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4948"
            stdgo._internal.net.http.Http__http2writedatapool._http2writeDataPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_writeArg, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData }))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4950"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _readPreface( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4873"
            if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawClientPreface) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4874"
                return (null : stdgo.Error);
            };
            var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4877"
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    var _buf = (new stdgo.Slice<stdgo.GoUInt8>((("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n" : stdgo.GoString).length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4880"
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn, _buf), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4881"
                            _errc.__send__(_err);
                        } else if (!stdgo._internal.bytes.Bytes_equal.equal(_buf, stdgo._internal.net.http.Http__http2clientpreface._http2clientPreface)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4883"
                            _errc.__send__(stdgo._internal.fmt.Fmt_errorf.errorf(("bogus greeting %q" : stdgo.GoString), new stdgo.AnyInterface(_buf, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })))));
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4885"
                            _errc.__send__((null : stdgo.Error));
                        };
                    };
                };
                a();
            }));
            var _timer = stdgo._internal.time.Time_newtimer.newTimer((10000000000i64 : stdgo._internal.time.Time_duration.Duration));
            {
                final __f__ = _timer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4890"
            {
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4892"
                                    {
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return stdgo._internal.net.http.Http__http2errprefacetimeout._http2errPrefaceTimeout;
                                    };
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _errc;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _err = __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4894"
                                    if (_err == null) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4895"
                                        if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4896"
                                            _sc._vlogf(("http2: server: client %v said hello" : stdgo.GoString), ({
                                                final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }));
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4899"
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
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return (null : stdgo.Error);
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
    static public function _sendServeMsg( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _msg:stdgo.AnyInterface):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4860"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._checkNotOn();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4861"
        {
            var __select__ = true;
            var __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveMsgCh;
var __c__1 = null;
            while (__select__) {
                if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveMsgCh != null && __c__0.__isSend__(true)) {
                    __select__ = false;
                    {
                        __c__0.__send__(_msg);
                        {};
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
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
    }
    @:keep
    @:tdfield
    static public function _onShutdownTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4857"
        _sc._sendServeMsg(new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2shutdowntimermsg._http2shutdownTimerMsg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2servermessagedott_http2servermessage.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2servermessagedotT_http2serverMessage }))));
    }
    @:keep
    @:tdfield
    static public function _onIdleTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4855"
        _sc._sendServeMsg(new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2idletimermsg._http2idleTimerMsg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2servermessagedott_http2servermessage.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2servermessagedotT_http2serverMessage }))));
    }
    @:keep
    @:tdfield
    static public function _onSettingsTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4853"
        _sc._sendServeMsg(new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2settingstimermsg._http2settingsTimerMsg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2servermessagedott_http2servermessage.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2servermessagedotT_http2serverMessage }))));
    }
    @:keep
    @:tdfield
    static public function _awaitGracefulShutdown( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _sharedCh:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>, _privateCh:stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4835"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__0.__get__();
                        {};
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = _sharedCh;
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4838"
                            if (_privateCh != null) _privateCh.__close__();
                        };
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
__c__1.__reset__();
        };
    }
    @:keep
    @:tdfield
    static public function _serve( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4703"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
            {
                final __f__ = _sc._notePanic;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = _sc._closeAllStreamsOnConnClose;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                final __f__ = _sc._stopShutdownTimer;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var _a0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                __deferstack__.unshift({ ran : false, f : () -> if (_a0 != null) _a0.__close__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4710"
            if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4711"
                _sc._vlogf(("http2: server connection from %v on %p" : stdgo.GoString), ({
                    final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer }))));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4714"
            _sc._writeFrame(({ _write : stdgo.Go.asInterface((new stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>(5, 5, ...[(new stdgo._internal.net.http.Http_t_http2setting.T_http2Setting((5 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv._maxReadFrameSize()) : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting), (new stdgo._internal.net.http.Http_t_http2setting.T_http2Setting((3 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._advMaxStreams) : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting), (new stdgo._internal.net.http.Http_t_http2setting.T_http2Setting((6 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), _sc._maxHeaderListSize()) : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting), (new stdgo._internal.net.http.Http_t_http2setting.T_http2Setting((1 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv._maxDecoderHeaderTableSize()) : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting), (new stdgo._internal.net.http.Http_t_http2setting.T_http2Setting((4 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv._initialStreamRecvWindowSize() : stdgo.GoUInt32)) : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting)])) : stdgo._internal.net.http.Http_t_http2writesettings.T_http2writeSettings), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writesettingsdott_http2writesettings.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writesettingsdotT_http2writeSettings) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4723"
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._unackedSettings++;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4727"
            {
                var _diff = @:assignType ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv._initialConnRecvWindowSize() - (65535 : stdgo.GoInt32) : stdgo.GoInt32);
                if ((_diff > (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4728"
                    _sc._sendWindowUpdate(null, (_diff : stdgo.GoInt));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4731"
            {
                var _err = @:assignType (_sc._readPreface() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4732"
                    _sc._condlogf(_err, ("http2: server: error reading preface from client %v: %v" : stdgo.GoString), ({
                        final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
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
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4733"
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4739"
            _sc._setConnState((1 : stdgo._internal.net.http.Http_connstate.ConnState));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4740"
            _sc._setConnState((2 : stdgo._internal.net.http.Http_connstate.ConnState));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4742"
            if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer = stdgo._internal.time.Time_afterfunc.afterFunc((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleTimeout, _sc._onIdleTimer);
                {
                    final __f__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer.stop;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4747"
            {
                {};
                stdgo.Go.routine(() -> _sc._readFrames());
            };
            var _settingsTimer = stdgo._internal.time.Time_afterfunc.afterFunc((2000000000i64 : stdgo._internal.time.Time_duration.Duration), _sc._onSettingsTimer);
            {
                final __f__ = _settingsTimer.stop;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var _loopNum = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4753"
            while (true) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4754"
                _loopNum++;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4755"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
var __c__2 = null;
var __c__3 = null;
var __c__4 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wantWriteFrameCh;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _wr = __c__0.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4757"
                                    {
                                        var __tmp__ = @:castTranslate try {
                                            { _0 : (stdgo.Go.typeAssert(({
                                                final __t__ = _wr._write;
                                                if (__t__ == null) {
                                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                                                } else {
                                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                };
                                            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : true };
                                        } catch(__exception__) {
                                            { _0 : ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : false };
                                        }, _se = __tmp__._0, _ok = __tmp__._1;
                                        if (_ok) {
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4758"
                                            _sc._resetStream(_se?.__copy__());
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4759"
                                            break;
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4761"
                                    _sc._writeFrame(_wr?.__copy__());
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteFrameCh;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _res = __c__1.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4763"
                                    _sc._wroteFrame(_res?.__copy__());
                                };
                            };
                        } else if ({
                            if (__c__2 == null) {
                                __c__2 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readFrameCh;
                            };
                            __c__2 != null && __c__2.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _res = __c__2.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4767"
                                    if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrameAsync) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4768"
                                        {
                                            var __select__ = true;
                                            var __c__0 = null;
                                            while (__select__) {
                                                if ({
                                                    if (__c__0 == null) {
                                                        __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteFrameCh;
                                                    };
                                                    __c__0 != null && __c__0.__isGet__(true);
                                                }) {
                                                    __select__ = false;
                                                    {
                                                        var _wroteRes = __c__0.__get__();
                                                        {
                                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4770"
                                                            _sc._wroteFrame(_wroteRes?.__copy__());
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
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4774"
                                    if (!_sc._processFrameFromReader(_res?.__copy__())) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4775"
                                        {
                                            for (defer in __deferstack__) {
                                                if (defer.ran) continue;
                                                defer.ran = true;
                                                defer.f();
                                            };
                                            return;
                                        };
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4777"
                                    _res._readMore();
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4778"
                                    if (({
                                        final value = _settingsTimer;
                                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                    })) {
                                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4779"
                                        _settingsTimer.stop();
                                        _settingsTimer = null;
                                    };
                                };
                            };
                        } else if ({
                            if (__c__3 == null) {
                                __c__3 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyReadCh;
                            };
                            __c__3 != null && __c__3.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _m = __c__3.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4783"
                                    _sc._noteBodyRead(_m._st, _m._n);
                                };
                            };
                        } else if ({
                            if (__c__4 == null) {
                                __c__4 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveMsgCh;
                            };
                            __c__4 != null && __c__4.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _msg = __c__4.__get__();
                                {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4785"
                                    {
                                        final __type__ = _msg;
                                        if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))) {
                                            var _v:stdgo.GoInt -> Void = __type__ == null ? null : __type__.__underlying__() == null ? null : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? null : __type__.__underlying__().value);
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4787"
                                            _v(_loopNum);
                                        } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2servermessagedott_http2servermessage.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2servermessagedotT_http2serverMessage }))) {
                                            var _v:stdgo.Pointer<stdgo._internal.net.http.Http_t_http2servermessage.T_http2serverMessage> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.net.http.Http_t_http2servermessage.T_http2serverMessage>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.net.http.Http_t_http2servermessage.T_http2serverMessage>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo._internal.net.http.Http_t_http2servermessage.T_http2serverMessage>) : __type__.__underlying__().value);
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4789"
                                            {
                                                final __value__ = _v;
                                                if (__value__ == (stdgo._internal.net.http.Http__http2settingstimermsg._http2settingsTimerMsg)) {
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4791"
                                                    _sc._logf(("timeout waiting for SETTINGS frames from %v" : stdgo.GoString), ({
                                                        final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
                                                        if (__t__ == null) {
                                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                                                        } else {
                                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                        };
                                                    }));
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4792"
                                                    {
                                                        for (defer in __deferstack__) {
                                                            if (defer.ran) continue;
                                                            defer.ran = true;
                                                            defer.f();
                                                        };
                                                        return;
                                                    };
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2idletimermsg._http2idleTimerMsg)) {
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4794"
                                                    _sc._vlogf(("connection is idle" : stdgo.GoString));
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4795"
                                                    _sc._goAway((0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode));
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2shutdowntimermsg._http2shutdownTimerMsg)) {
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4797"
                                                    _sc._vlogf(("GOAWAY close timer fired; closing conn from %v" : stdgo.GoString), ({
                                                        final __t__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.remoteAddr();
                                                        if (__t__ == null) {
                                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                                                        } else {
                                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                        };
                                                    }));
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4798"
                                                    {
                                                        for (defer in __deferstack__) {
                                                            if (defer.ran) continue;
                                                            defer.ran = true;
                                                            defer.f();
                                                        };
                                                        return;
                                                    };
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2gracefulshutdownmsg._http2gracefulShutdownMsg)) {
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4800"
                                                    _sc._startGracefulShutdownInternal();
                                                } else if (__value__ == (stdgo._internal.net.http.Http__http2handlerdonemsg._http2handlerDoneMsg)) {
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4802"
                                                    _sc._handlerDone();
                                                } else {
                                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4804"
                                                    throw new stdgo.AnyInterface(("unknown timer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                                                };
                                            };
                                        } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2startpushrequestdott_http2startpushrequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2startpushrequestdotT_http2startPushRequest }))) {
                                            var _v:stdgo.Ref<stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2startpushrequest.T_http2startPushRequest>) : __type__.__underlying__().value);
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4807"
                                            _sc._startPush(_v);
                                        } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))) {
                                            var _v:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> -> Void = __type__ == null ? null : __type__.__underlying__() == null ? null : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? null : __type__.__underlying__().value);
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4809"
                                            _v(_sc);
                                        } else {
                                            var _v:stdgo.AnyInterface = __type__?.__underlying__();
                                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4811"
                                            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected type %T" : stdgo.GoString), _v), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                                        };
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
__c__4.__reset__();
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4818"
                if (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._queuedControlFrames > (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._srv._maxQueuedControlFrames() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4819"
                    _sc._vlogf(("http2: too many control frames in send queue, closing connection" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4820"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                var _sentGoAway = @:assignType (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inGoAway && !(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needToSendGoAway : Bool) && !(@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._writingFrame : Bool);
                var _gracefulShutdownComplete = @:assignType (((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode == (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)) && (_sc._curOpenStreams() == (0u32 : stdgo.GoUInt32)) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4828"
                if (((_sentGoAway && ({
                    final value = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._shutdownTimer;
                    (value == null || (value : Dynamic).__nil__);
                }) : Bool) && ((((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goAwayCode != (0u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)) || _gracefulShutdownComplete : Bool)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4829"
                    _sc._shutDownIn(stdgo._internal.net.http.Http__http2goawaytimeout._http2goAwayTimeout);
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
    static public function _notePanic( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4689"
            if (({
                final value = stdgo._internal.net.http.Http__http2testhookonpanicmu._http2testHookOnPanicMu;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4690"
                stdgo._internal.net.http.Http__http2testhookonpanicmu._http2testHookOnPanicMu.lock();
                {
                    final __f__ = stdgo._internal.net.http.Http__http2testhookonpanicmu._http2testHookOnPanicMu.unlock;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4693"
            if (stdgo._internal.net.http.Http__http2testhookonpanic._http2testHookOnPanic != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4694"
                {
                    var _e = @:assignType ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    } : stdgo.AnyInterface);
                    if (({
                        final value = _e;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4695"
                        if (stdgo._internal.net.http.Http__http2testhookonpanic._http2testHookOnPanic(_sc, _e)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4696"
                            throw ({
                                final __t__ = _e;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            });
                        };
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
    static public function _stopShutdownTimer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4681"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4682"
        {
            var _t = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._shutdownTimer;
            if (({
                final value = _t;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4683"
                _t.stop();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _closeAllStreamsOnConnClose( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4674"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4675"
        if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null) for (__12 => _st in (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4676"
            _sc._closeStream(_st, stdgo._internal.net.http.Http__http2errclientdisconnected._http2errClientDisconnected);
        };
    }
    @:keep
    @:tdfield
    static public function _writeFrameAsync( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest, _wd:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4665"
        if (({
            final value = _wd;
            (value == null || (value : Dynamic).__nil__);
        })) {
            _err = _wr._write._writeFrame(stdgo.Go.asInterface(_sc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverconndott_http2serverconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverconndotT_http2serverConn })));
        } else {
            _err = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._framer._endWrite();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4670"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wroteFrameCh.__send__(({ _wr : _wr?.__copy__(), _err : _err } : stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult));
    }
    @:keep
    @:tdfield
    static public function _readFrames( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var _gate = @:assignType (new stdgo._internal.net.http.Http_t_http2gate.T_http2gate(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo._internal.net.http.Http_t_http2gate.T_http2gate);
        var _gateDone = @:assignType (_gate.done : () -> Void);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4634"
        while (true) {
            var __tmp__ = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._framer.readFrame(), _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4636"
            {
                var __select__ = true;
                var __c__0 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readFrameCh;
var __c__1 = null;
                while (__select__) {
                    if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readFrameCh != null && __c__0.__isSend__(true)) {
                        __select__ = false;
                        {
                            __c__0.__send__((new stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult(_f, _err, _gateDone) : stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult));
                            {};
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4639"
                                return;
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4641"
            {
                var __select__ = true;
                var __c__0 = null;
var __c__1 = null;
                while (__select__) {
                    if ({
                        if (__c__0 == null) {
                            __c__0 = _gate;
                        };
                        __c__0 != null && __c__0.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__0.__get__();
                            {};
                        };
                    } else if ({
                        if (__c__1 == null) {
                            __c__1 = (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doneServing;
                        };
                        __c__1 != null && __c__1.__isGet__(true);
                    }) {
                        __select__ = false;
                        {
                            __c__1.__get__();
                            {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4644"
                                return;
                            };
                        };
                    };
                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
                __c__0.__reset__();
__c__1.__reset__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4646"
            if (stdgo._internal.net.http.Http__http2terminalreadframeerror._http2terminalReadFrameError(_err)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4647"
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _canonicalHeader( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _v:stdgo.GoString):stdgo.GoString {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4595"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4596"
        stdgo._internal.net.http.Http__http2buildcommonheadermapsonce._http2buildCommonHeaderMapsOnce();
        var __tmp__ = (stdgo._internal.net.http.Http__http2commoncanonheader._http2commonCanonHeader != null && stdgo._internal.net.http.Http__http2commoncanonheader._http2commonCanonHeader.__exists__(_v?.__copy__()) ? { _0 : stdgo._internal.net.http.Http__http2commoncanonheader._http2commonCanonHeader[_v?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _cv:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4598"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4599"
            return _cv?.__copy__();
        };
        {
            var __tmp__ = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeader != null && (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeader.__exists__(_v?.__copy__()) ? { _0 : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeader[_v?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false });
            _cv = @:tmpset0 __tmp__._0?.__copy__();
            _ok = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4602"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4603"
            return _cv?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4605"
        if ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeader == null) {
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeader = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        };
        _cv = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_v?.__copy__())?.__copy__();
        var _size = @:assignType ((100 : stdgo.GoInt) + ((_v.length) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4610"
        if ((((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeaderKeysSize + _size : stdgo.GoInt) <= (2048 : stdgo.GoInt) : Bool)) {
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeader[_v] = _cv?.__copy__();
            (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeaderKeysSize = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._canonHeaderKeysSize + (_size) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4614"
        return _cv?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _condlogf( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _err:stdgo.Error, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4576"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4577"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4579"
        if ((((({
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
        })) || ({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool) || stdgo._internal.net.http.Http__http2isclosedconnerror._http2isClosedConnError(_err) : Bool) || (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == ({
            final __t__ = stdgo._internal.net.http.Http__http2errprefacetimeout._http2errPrefaceTimeout;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4581"
            _sc._vlogf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4583"
            _sc._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function _logf( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4524"
        {
            var _lg = (@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).errorLog;
            if (({
                final value = _lg;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4525"
                _lg.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4527"
                stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _vlogf( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4518"
        if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4519"
            _sc._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function _setConnState( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _state:stdgo._internal.net.http.Http_connstate.ConnState):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4512"
        if ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connState != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4513"
            (@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connState((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn, _state);
        };
    }
    @:keep
    @:tdfield
    static public function _state( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _streamID:stdgo.GoUInt32):{ var _0 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState; var _1 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4485"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4487"
        {
            var __tmp__ = ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams != null && (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams.__exists__(_streamID) ? { _0 : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streams[_streamID], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>), _1 : false }), _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4488"
                return { _0 : (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state, _1 : _st };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4496"
        if ((_streamID % (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4497"
            if ((_streamID <= (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxClientStreamID : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4498"
                return { _0 : (4 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState), _1 : null };
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4501"
            if ((_streamID <= (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxPushPromiseID : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4502"
                return { _0 : (4 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState), _1 : null };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4505"
        return { _0 : (0 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState), _1 : null };
    }
    @:keep
    @:tdfield
    static public function headerEncoder( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):{ var _0 : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>; var _1 : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>; } {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4481"
        return { _0 : (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hpackEncoder, _1 : (stdgo.Go.setRef((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headerWriteBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) };
    }
    @:keep
    @:tdfield
    static public function flush( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4478"
        return (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
    }
    @:keep
    @:tdfield
    static public function closeConn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Error {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4476"
        return (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close();
    }
    @:keep
    @:tdfield
    static public function framer( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4474"
        return (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._framer;
    }
    @:keep
    @:tdfield
    static public function _curOpenStreams( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.GoUInt32 {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4437"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4438"
        return ((@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curClientStreams + (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curPushedStreams : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxHeaderListSize( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>):stdgo.GoUInt32 {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        var _n = @:assignType ((@:checkr (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hs ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderBytes : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4426"
        if ((_n <= (0 : stdgo.GoInt) : Bool)) {
            _n = (1048576 : stdgo.GoInt);
        };
        {};
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4433"
        return ((_n + (320 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _rejectConn( _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn>, _err:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, _debug:stdgo.GoString):Void {
        @:recv var _sc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2serverconn.T_http2serverConn> = _sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4356"
        _sc._vlogf(("http2: server rejecting conn: %v, %s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_err, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode)), new stdgo.AnyInterface(_debug, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4358"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._framer.writeGoAway((0u32 : stdgo.GoUInt32), _err, (_debug : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4359"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4360"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.close();
    }
}
