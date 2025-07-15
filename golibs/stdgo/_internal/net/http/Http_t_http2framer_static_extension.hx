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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Framer_asInterface) class T_http2Framer_static_extension {
    @:keep
    @:tdfield
    static public function _readMetaFrame( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _hf:stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2927"
            if ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalReads) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2928"
                return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("illegal use of AllowIllegalReads with ReadMetaHeaders" : stdgo.GoString)) };
            };
            var _mh = (stdgo.Go.setRef(({ _http2HeadersFrame : _hf } : stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2metaheadersframedott_http2metaheadersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2metaheadersframedotT_http2MetaHeadersFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>);
            var _remainSize = _fr._maxHeaderListSize();
            var _sawRegular:Bool = false;
            var _invalid:stdgo.Error = (null : stdgo.Error);
            var _hdec = (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readMetaHeaders;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2938"
            _hdec.setEmitEnabled(true);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2939"
            _hdec.setMaxStringLength(_fr._maxHeaderStringLen());
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2940"
            _hdec.setEmitFunc(function(_hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Void {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2941"
                if ((stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs && (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._logReads : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2942"
                    (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugReadLoggerf(("http2: decoded hpack field %+v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_hf, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_headerfielddotheaderfield.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_headerfielddotHeaderField), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_headerfielddotheaderfield.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_headerfielddotHeaderField)));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2944"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldvalue.validHeaderFieldValue(_hf.value?.__copy__())) {
                    _invalid = stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_t_http2headerfieldvalueerror.T_http2headerFieldValueError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2headerfieldvalueerrordott_http2headerfieldvalueerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2headerfieldvalueerrordotT_http2headerFieldValueError);
                };
                var _isPseudo = @:assignType (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_hf.name?.__copy__(), (":" : stdgo.GoString)) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2949"
                if (_isPseudo) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2950"
                    if (_sawRegular) {
                        _invalid = stdgo._internal.net.http.Http__http2errpseudoafterregular._http2errPseudoAfterRegular;
                    };
                } else {
                    _sawRegular = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2955"
                    if (!stdgo._internal.net.http.Http__http2validwireheaderfieldname._http2validWireHeaderFieldName(_hf.name?.__copy__())) {
                        _invalid = stdgo.Go.asInterface((_hf.name : stdgo._internal.net.http.Http_t_http2headerfieldnameerror.T_http2headerFieldNameError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2headerfieldnameerrordott_http2headerfieldnameerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2headerfieldnameerrordotT_http2headerFieldNameError);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2960"
                if (_invalid != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2961"
                    _hdec.setEmitEnabled(false);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2962"
                    return;
                };
                var _size = @:assignType (_hf.size() : stdgo.GoUInt32);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2966"
                if ((_size > _remainSize : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2967"
                    _hdec.setEmitEnabled(false);
                    (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).truncated = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2969"
                    return;
                };
                _remainSize = (_remainSize - (_size) : stdgo.GoUInt32);
                (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields = ((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__()).fields.__append__(_hf?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
            });
            {
                var _a0 = function(_hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Void {};
                final __f__ = _hdec.setEmitFunc;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            var _hc:stdgo._internal.net.http.Http_t_http2headersorcontinuation.T_http2headersOrContinuation = stdgo.Go.asInterface(_hf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2headersframedott_http2headersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2headersframedotT_http2HeadersFrame }));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2979"
            while (true) {
                var _frag = _hc.headerBlockFragment();
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2981"
                {
                    var __tmp__ = _hdec.write(_frag), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2982"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface(((9u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2985"
                if (_hc.headersEnded()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2986"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2988"
                {
                    var __tmp__ = _fr.readFrame(), _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2989"
                        {
                            final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return __ret__;
                        };
                    } else {
                        _hc = stdgo.Go.asInterface((stdgo.Go.typeAssert(({
                            final __t__ = _f;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2continuationframedott_http2continuationframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2continuationframedotT_http2ContinuationFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2continuationframe.T_http2ContinuationFrame>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2continuationframedott_http2continuationframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2continuationframedotT_http2ContinuationFrame }));
                    };
                };
            };
            (@:checkr (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headerFragBuf = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2996"
            (@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._invalidate();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2998"
            {
                var _err = @:assignType (_hdec.close() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2999"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface(((9u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3001"
            if (_invalid != null) {
                (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errDetail = _invalid;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3003"
                if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3004"
                    stdgo._internal.log.Log_printf.printf(("http2: invalid header: %v" : stdgo.GoString), ({
                        final __t__ = _invalid;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3006"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), _invalid) : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) };
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3008"
            {
                var _err = @:assignType (_mh._checkPseudos() : stdgo.Error);
                if (_err != null) {
                    (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errDetail = _err;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3010"
                    if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3011"
                        stdgo._internal.log.Log_printf.printf(("http2: invalid pseudo headers: %v" : stdgo.GoString), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3013"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError((@:checkr _mh ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2HeadersFrame._http2FrameHeader.streamID, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), _err) : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3015"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>; var _1 : stdgo.Error; } = { _0 : _mh, _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>), _1 : (null : stdgo.Error) };
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
                return { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _maxHeaderStringLen( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.GoInt {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        var _v = @:assignType (_fr._maxHeaderListSize() : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2915"
        if (((_v : stdgo.GoInt) : stdgo.GoUInt32) == (_v)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2916"
            return (_v : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2920"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function writeRawFrame( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _t:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType, _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, _streamID:stdgo.GoUInt32, _payload:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2791"
        _f._startWrite(_t, _flags, _streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2792"
        _f._writeBytes(_payload);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2793"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePushPromise( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_t_http2pushpromiseparam.T_http2PushPromiseParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2765"
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_p.streamID) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2766"
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2769"
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2772"
        if (_p.endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2775"
        _f._startWrite((5 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, _p.streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2776"
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2777"
            _f._writeByte(_p.padLength);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2779"
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_p.promiseID) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2780"
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2782"
        _f._writeUint32(_p.promiseID);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...(_p.blockFragment : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...((stdgo._internal.net.http.Http__http2padzeros._http2padZeros.__slice__(0, _p.padLength) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2785"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeContinuation( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endHeaders:Bool, _headerBlockFragment:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2666"
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_streamID) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2667"
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2670"
        if (_endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2673"
        _f._startWrite((9 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, _streamID);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...(_headerBlockFragment : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2675"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeRSTStream( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2629"
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_streamID) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2630"
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2632"
        _f._startWrite((3 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), _streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2633"
        _f._writeUint32((_code : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2634"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePriority( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _p:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2589"
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_streamID) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2590"
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2592"
        if (!stdgo._internal.net.http.Http__http2validstreamidorzero._http2validStreamIDOrZero(_p.streamDep)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2593"
            return stdgo._internal.net.http.Http__http2errdepstreamid._http2errDepStreamID;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2595"
        _f._startWrite((2 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), _streamID);
        var _v = @:assignType (_p.streamDep : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2597"
        if (_p.exclusive) {
            _v = (_v | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2600"
        _f._writeUint32(_v);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2601"
        _f._writeByte(_p.weight);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2602"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeHeaders( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _p:stdgo._internal.net.http.Http_t_http2headersframeparam.T_http2HeadersFrameParam):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2499"
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_p.streamID) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2500"
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2503"
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2506"
        if (_p.endStream) {
            _flags = (_flags | ((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2509"
        if (_p.endHeaders) {
            _flags = (_flags | ((4 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2512"
        if (!_p.priority.isZero()) {
            _flags = (_flags | ((32 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2515"
        _f._startWrite((1 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, _p.streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2516"
        if (_p.padLength != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2517"
            _f._writeByte(_p.padLength);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2519"
        if (!_p.priority.isZero()) {
            var _v = @:assignType (_p.priority.streamDep : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2521"
            if ((!stdgo._internal.net.http.Http__http2validstreamidorzero._http2validStreamIDOrZero(_v) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2522"
                return stdgo._internal.net.http.Http__http2errdepstreamid._http2errDepStreamID;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2524"
            if (_p.priority.exclusive) {
                _v = (_v | ((-2147483648u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2527"
            _f._writeUint32(_v);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2528"
            _f._writeByte(_p.priority.weight);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...(_p.blockFragment : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...((stdgo._internal.net.http.Http__http2padzeros._http2padZeros.__slice__(0, _p.padLength) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2532"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeWindowUpdate( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _incr:stdgo.GoUInt32):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2385"
        if (((((_incr < (1u32 : stdgo.GoUInt32) : Bool) || (_incr > (2147483647u32 : stdgo.GoUInt32) : Bool) : Bool)) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2386"
            return stdgo._internal.errors.Errors_new_.new_(("illegal window increment value" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2388"
        _f._startWrite((8 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), _streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2389"
        _f._writeUint32(_incr);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2390"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeGoAway( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _maxStreamID:stdgo.GoUInt32, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, _debugData:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2318"
        _f._startWrite((7 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2319"
        _f._writeUint32((_maxStreamID & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2320"
        _f._writeUint32((_code : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2321"
        _f._writeBytes(_debugData);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2322"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writePing( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _ack:Bool, _data:stdgo.GoArray<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2274"
        if (_ack) {
            _flags = (1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2277"
        _f._startWrite((6 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, (0u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2278"
        _f._writeBytes((_data.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2279"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeSettingsAck( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2243"
        _f._startWrite((4 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2244"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeSettings( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _settings:haxe.Rest<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>):stdgo.Error {
        var _settings = new stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>(_settings.length, 0, ..._settings);
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2230"
        _f._startWrite((4 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), (0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), (0u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2231"
        if (_settings != null) for (__12 => _s in _settings) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2232"
            _f._writeUint16((_s.iD : stdgo.GoUInt16));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2233"
            _f._writeUint32(_s.val);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2235"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function _startWriteDataPadded( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2075"
        if ((!stdgo._internal.net.http.Http__http2validstreamid._http2validStreamID(_streamID) && !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2076"
            return stdgo._internal.net.http.Http__http2errstreamid._http2errStreamID;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2078"
        if (((_pad.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2079"
            if (((_pad.length) > (255 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2080"
                return stdgo._internal.net.http.Http__http2errpadlength._http2errPadLength;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2082"
            if (!(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalWrites) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2083"
                if (_pad != null) for (__12 => _b in _pad) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2084"
                    if (_b != ((0 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2086"
                        return stdgo._internal.net.http.Http__http2errpadbytes._http2errPadBytes;
                    };
                };
            };
        };
        var _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags = ((0 : stdgo.GoUInt8) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2092"
        if (_endStream) {
            _flags = (_flags | ((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2095"
        if (_pad != null) {
            _flags = (_flags | ((8 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2098"
        _f._startWrite((0 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), _flags, _streamID);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2099"
        if (_pad != null) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__((_pad.length : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...(_data : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...(_pad : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2104"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function writeDataPadded( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>, _pad:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2066"
        {
            var _err = @:assignType (_f._startWriteDataPadded(_streamID, _endStream, _data, _pad) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2067"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2069"
        return _f._endWrite();
    }
    @:keep
    @:tdfield
    static public function writeData( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _streamID:stdgo.GoUInt32, _endStream:Bool, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2053"
        return _f.writeDataPadded(_streamID, _endStream, _data, (null : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _checkFrameOrder( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame):stdgo.Error {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        var _last = @:assignType ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFrame : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame);
        (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFrame = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1944"
        if ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalReads) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1945"
            return (null : stdgo.Error);
        };
        var _fh = @:assignType (_f.header()?.__copy__() : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1949"
        if ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastHeaderStream != ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1950"
            if (_fh.type != ((9 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1951"
                return _fr._connError((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("got %s for stream %d; expected CONTINUATION following %s for stream %d" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_fh.type, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2frametypedott_http2frametype.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2frametypedotT_http2FrameType), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2frametypedott_http2frametype.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2frametypedotT_http2FrameType)), new stdgo.AnyInterface(_fh.streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_last.header().type, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2frametypedott_http2frametype.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2frametypedotT_http2FrameType), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2frametypedott_http2frametype.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2frametypedotT_http2FrameType)), new stdgo.AnyInterface((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastHeaderStream, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))))?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1956"
            if (_fh.streamID != ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastHeaderStream)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1957"
                return _fr._connError((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("got CONTINUATION for stream %d; expected stream %d" : stdgo.GoString), new stdgo.AnyInterface(_fh.streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastHeaderStream, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))))?.__copy__());
            };
        } else if (_fh.type == ((9 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1962"
            return _fr._connError((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("unexpected CONTINUATION for stream %d" : stdgo.GoString), new stdgo.AnyInterface(_fh.streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))))?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1965"
        {
            final __value__ = _fh.type;
            if (__value__ == ((1 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType)) || __value__ == ((9 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1967"
                if (_fh.flags.has((4 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags))) {
                    (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastHeaderStream = (0u32 : stdgo.GoUInt32);
                } else {
                    (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastHeaderStream = _fh.streamID;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1974"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _connError( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _code:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, _reason:stdgo.GoString):stdgo.Error {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errDetail = stdgo._internal.errors.Errors_new_.new_(_reason?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1935"
        return stdgo.Go.asInterface((_code : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
    }
    @:keep
    @:tdfield
    static public function readFrame( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errDetail = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1896"
        if ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFrame != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1897"
            (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFrame._invalidate();
        };
        var __tmp__ = stdgo._internal.net.http.Http__http2readframeheader._http2readFrameHeader(((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headerBuf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r), _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1900"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1901"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1903"
        if ((_fh.length_ > (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxReadSize : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1904"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo._internal.net.http.Http__http2errframetoolarge._http2ErrFrameTooLarge };
        };
        var _payload = (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._getReadBuf(_fh.length_);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1907"
        {
            var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, _payload), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1908"
                return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__http2typeframeparser._http2typeFrameParser(_fh.type)((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frameCache, _fh?.__copy__(), (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countError, _payload), _f:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1911"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1912"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connerrordott_http2connerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connerrordotT_http2connError) : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _1 : true };
                } catch(__exception__) {
                    { _0 : ({} : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _1 : false };
                }, _ce = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1913"
                    return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _fr._connError(_ce.code, _ce.reason?.__copy__()) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1915"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1917"
        {
            var _err = @:assignType (_fr._checkFrameOrder(_f) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1918"
                return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1920"
        if ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._logReads) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1921"
            (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugReadLoggerf(("http2: Framer %p: read %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_fr, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer }))), new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2summarizeframe._http2summarizeFrame(_f), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1923"
        if (((_fh.type == (1 : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType)) && ({
            final value = (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readMetaHeaders;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1924"
            return ({
                @:explicitConversion final __tmp__ = _fr._readMetaFrame((stdgo.Go.typeAssert(({
                    final __t__ = _f;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framedott_http2frame.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framedotT_http2Frame)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2headersframedott_http2headersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2headersframedotT_http2HeadersFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>));
                { _0 : stdgo.Go.asInterface(__tmp__._0, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2metaheadersframedott_http2metaheadersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2metaheadersframedotT_http2MetaHeadersFrame })), _1 : __tmp__._1 };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1926"
        return { _0 : _f, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function errorDetail( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.Error {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1871"
        return (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errDetail;
    }
    @:keep
    @:tdfield
    static public function setMaxReadFrameSize( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _v:stdgo.GoUInt32):Void {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1857"
        if ((_v > (16777215u32 : stdgo.GoUInt32) : Bool)) {
            _v = (16777215u32 : stdgo.GoUInt32);
        };
        (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxReadSize = _v;
    }
    @:keep
    @:tdfield
    static public function setReuseFrames( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):Void {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1813"
        if (({
            final value = (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frameCache;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1814"
            return;
        };
        (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._frameCache = (stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache() : stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framecachedott_http2framecache.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framecachedotT_http2frameCache })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>);
    }
    @:keep
    @:tdfield
    static public function _writeUint32( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _v:stdgo.GoUInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _writeUint16( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _v:stdgo.GoUInt16):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_v : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _writeBytes( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _v:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(...(_v : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _writeByte( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _v:stdgo.GoUInt8):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__append__(_v) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _logWrite( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1777"
        if (({
            final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramer;
            (value == null || (value : Dynamic).__nil__);
        })) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramerBuf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramer = stdgo._internal.net.http.Http__http2newframer._http2NewFramer((null : stdgo._internal.io.Io_writer.Writer), stdgo.Go.asInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramerBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
            (@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramer ?? throw stdgo.Error._nullPointerDereference.__underlying__())._logReads = false;
            (@:checkr (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowIllegalReads = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1785"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramerBuf.write((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf);
        var __tmp__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugFramer.readFrame(), _fr:stdgo._internal.net.http.Http_t_http2frame.T_http2Frame = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1787"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1788"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugWriteLoggerf(("http2: Framer %p: failed to decode just-written frame" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer }))));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1789"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1791"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._debugWriteLoggerf(("http2: Framer %p: wrote %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_f, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer }))), new stdgo.AnyInterface(stdgo._internal.net.http.Http__http2summarizeframe._http2summarizeFrame(_fr), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
    @:keep
    @:tdfield
    static public function _endWrite( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        var _length = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.length) - (9 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1758"
        if ((_length >= (16777216 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1759"
            return stdgo._internal.net.http.Http__http2errframetoolarge._http2ErrFrameTooLarge;
        };
        (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__(((_length >> (16i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), ((_length >> (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoUInt8), (_length : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1765"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._logWrites) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1766"
            _f._logWrite();
        };
        var __tmp__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1770"
        if (((_err == null) && (_n != ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.length)) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1773"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _startWrite( _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, _ftype:stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType, _flags:stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, _streamID:stdgo.GoUInt32):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf = (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wbuf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__append__((0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (_ftype : stdgo.GoUInt8), (_flags : stdgo.GoUInt8), ((_streamID >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_streamID >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_streamID >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_streamID : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _maxHeaderListSize( _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>):stdgo.GoUInt32 {
        @:recv var _fr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = _fr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1734"
        if ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderListSize == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1735"
            return (16777216u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1737"
        return (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderListSize;
    }
}
