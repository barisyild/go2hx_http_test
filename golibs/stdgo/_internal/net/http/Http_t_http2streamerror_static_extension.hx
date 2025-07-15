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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2StreamError_asInterface) class T_http2StreamError_static_extension {
    @:keep
    @:tdfield
    static public function as( _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError, _target:stdgo.AnyInterface):Bool {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = _e?.__copy__();
        var _dst = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_target).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _dstType = @:assignType (_dst.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L17"
        if (_dstType.kind() != ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L18"
            return false;
        };
        var _src = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_e, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError)))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _srcType = @:assignType (_src.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        var _numField = @:assignType (_srcType.numField() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L23"
        if (_dstType.numField() != (_numField)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L24"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L26"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _numField : Bool)) {
                var _sf = @:assignType (_srcType.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
var _df = @:assignType (_dstType.field(_i).__copy__() : stdgo._internal.reflect.Reflect_structfield.StructField);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L29"
                if (((_sf.name != _df.name) || !_sf.type.convertibleTo(_df.type) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L30"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L33"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _numField : Bool)) {
                var _df = @:assignType (_dst.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L35"
                _df.set(_src.field(_i).convert(_df.type()).__copy__());
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_error.go#L37"
        return true;
    }
    @:keep
    @:tdfield
    static public function _staysWithinBuffer( _se:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError, _max:stdgo.GoInt):Bool {
        @:recv var _se:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = _se?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10385"
        return ((13 : stdgo.GoInt) <= _max : Bool);
    }
    @:keep
    @:tdfield
    static public function _writeFrame( _se:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError, _ctx:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext):stdgo.Error {
        @:recv var _se:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = _se?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10382"
        return _ctx.framer().writeRSTStream(_se.streamID, _se.code);
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError):stdgo.GoString {
        @:recv var _e:stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError = _e?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1246"
        if (_e.cause != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1247"
            return stdgo._internal.fmt.Fmt_sprintf.sprintf(("stream error: stream ID %d; %v; %v" : stdgo.GoString), new stdgo.AnyInterface(_e.streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_e.code, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode)), ({
                final __t__ = _e.cause;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1249"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("stream error: stream ID %d; %v" : stdgo.GoString), new stdgo.AnyInterface(_e.streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface(stdgo.Go.asInterface(_e.code, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode)))?.__copy__();
    }
}
