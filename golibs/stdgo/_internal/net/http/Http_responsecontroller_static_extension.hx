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
@:keep @:allow(stdgo._internal.net.http.Http.ResponseController_asInterface) class ResponseController_static_extension {
    @:keep
    @:tdfield
    static public function enableFullDuplex( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L131"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L132"
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("enableFullDuplex", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_4.T__interface_4 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_4.T__interface_4) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L134"
                    return _t.enableFullDuplex();
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_rwunwrapperdott_rwunwrapper.__type__stdgodot_internaldotnetdothttpdotHttp_t_rwunwrapperdotT_rwUnwrapper)) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L138"
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function setWriteDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L107"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L108"
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("setWriteDeadline", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_3.T__interface_3 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_3.T__interface_3) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L110"
                    return _t.setWriteDeadline(_deadline?.__copy__());
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_rwunwrapperdott_rwunwrapper.__type__stdgodot_internaldotnetdothttpdotHttp_t_rwunwrapperdotT_rwUnwrapper)) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L114"
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function setReadDeadline( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>, _deadline:stdgo._internal.time.Time_time.Time):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L87"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L88"
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("setReadDeadline", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_2.T__interface_2 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_2.T__interface_2) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L90"
                    return _t.setReadDeadline(_deadline?.__copy__());
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_rwunwrapperdott_rwunwrapper.__type__stdgodot_internaldotnetdothttpdotHttp_t_rwunwrapperdotT_rwUnwrapper)) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L94"
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function hijack( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L68"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L69"
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_hijackerdothijacker.__type__stdgodot_internaldotnetdothttpdotHttp_hijackerdotHijacker)) {
                    var _t:stdgo._internal.net.http.Http_hijacker.Hijacker = __type__ == null ? (null : stdgo._internal.net.http.Http_hijacker.Hijacker) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L71"
                    return _t.hijack();
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_rwunwrapperdott_rwunwrapper.__type__stdgodot_internaldotnetdothttpdotHttp_t_rwunwrapperdotT_rwUnwrapper)) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L75"
                    return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : null, _2 : stdgo._internal.net.http.Http__errnotsupported._errNotSupported() };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function flush( _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.http.Http_responsecontroller.ResponseController> = _c;
        var _rw = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rw : stdgo._internal.net.http.Http_responsewriter.ResponseWriter);
        //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L49"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L50"
            {
                final __type__ = _rw;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("flushError", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })]))) {
                    var _t:stdgo._internal.net.http.Http_t__interface_1.T__interface_1 = __type__ == null ? (null : stdgo._internal.net.http.Http_t__interface_1.T__interface_1) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L52"
                    return _t.flushError();
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_flusherdotflusher.__type__stdgodot_internaldotnetdothttpdotHttp_flusherdotFlusher)) {
                    var _t:stdgo._internal.net.http.Http_flusher.Flusher = __type__ == null ? (null : stdgo._internal.net.http.Http_flusher.Flusher) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L54"
                    _t.flush();
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L55"
                    return (null : stdgo.Error);
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_rwunwrapperdott_rwunwrapper.__type__stdgodot_internaldotnetdothttpdotHttp_t_rwunwrapperdotT_rwUnwrapper)) {
                    var _t:stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper = __type__ == null ? (null : stdgo._internal.net.http.Http_t_rwunwrapper.T_rwUnwrapper) : cast __type__;
                    _rw = _t.unwrap();
                } else {
                    var _t:stdgo._internal.net.http.Http_responsewriter.ResponseWriter = __type__ == null ? (null : stdgo._internal.net.http.Http_responsewriter.ResponseWriter) : cast __type__;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/responsecontroller.go#L59"
                    return stdgo._internal.net.http.Http__errnotsupported._errNotSupported();
                };
            };
        };
    }
}
