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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2stream_asInterface) class T_http2stream_static_extension {
    @:keep
    @:tdfield
    static public function _processTrailerHeaders( _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>, _f:stdgo.Ref<stdgo._internal.net.http.Http_t_http2metaheadersframe.T_http2MetaHeadersFrame>):stdgo.Error {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = _st;
        var _sc = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5879"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5880"
        if ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._gotTrailerHeader) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5881"
            return _sc._countError(("dup_trailers" : stdgo.GoString), stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError));
        };
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._gotTrailerHeader = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5884"
        if (!_f.streamEnded()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5885"
            return _sc._countError(("trailers_not_ended" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5888"
        if (((_f.pseudoFields().length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5889"
            return _sc._countError(("trailers_pseudo" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5891"
        if ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5892"
            if (_f.regularFields() != null) for (__12 => _hf in _f.regularFields()) {
                var _key = @:assignType (_sc._canonicalHeader(_hf.name?.__copy__())?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5894"
                if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validtrailerheader.validTrailerHeader(_key?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5898"
                    return _sc._countError(("trailers_bogus" : stdgo.GoString), stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError));
                };
                (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer[_key] = (((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_hf.value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5903"
        _st._endStream();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5904"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _onWriteTimeout( _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = _st;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5733"
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sc._writeFrameFromHandler(({ _write : stdgo.Go.asInterface(({ streamID : (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id, code : (2u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), cause : stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded } : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest));
    }
    @:keep
    @:tdfield
    static public function _onReadTimeout( _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = _st;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5727"
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("%w" : stdgo.GoString), ({
            final __t__ = stdgo._internal.os.Os_errdeadlineexceeded.errDeadlineExceeded;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })));
    }
    @:keep
    @:tdfield
    static public function _copyTrailersToHandlerRequest( _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = _st;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5714"
        if ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer != null) for (_k => _vv in (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trailer) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5715"
            {
                var __tmp__ = ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer != null && (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer.__exists__(_k?.__copy__()) ? { _0 : (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer[_k?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __12:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reqTrailer[_k] = _vv;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _endStream( _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>):Void {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = _st;
        var _sc = (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sc;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5699"
        (@:checkr _sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._serveG._check();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5701"
        if ((((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declBodyBytes != (-1i64 : stdgo.GoInt64)) && ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declBodyBytes != (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyBytes) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5702"
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.closeWithError(stdgo._internal.fmt.Fmt_errorf.errorf(("request declared a Content-Length of %d but only wrote %d bytes" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._declBodyBytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyBytes, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)))));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5705"
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body._closeWithErrorAndCode(stdgo._internal.io.Io_eof.eOF, _st._copyTrailersToHandlerRequest);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5706"
            (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._body.closeWithError(stdgo._internal.io.Io_eof.eOF);
        };
        (@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._state = (3 : stdgo._internal.net.http.Http_t_http2streamstate.T_http2streamState);
    }
    @:keep
    @:tdfield
    static public function _isPushed( _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>):Bool {
        @:recv var _st:stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream> = _st;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L5692"
        return ((@:checkr _st ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id % (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32));
    }
}
