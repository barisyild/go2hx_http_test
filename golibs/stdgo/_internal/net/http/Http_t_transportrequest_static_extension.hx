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
@:keep @:allow(stdgo._internal.net.http.Http.T_transportRequest_asInterface) class T_transportRequest_static_extension {
    @:keep
    @:tdfield
    static public function _logf( _tr:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest> = _tr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2710"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert((@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request.context().value(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_tlogkey.T_tLogKey() : stdgo._internal.net.http.Http_t_tlogkey.T_tLogKey), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_tlogkeydott_tlogkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_tlogkeydotT_tLogKey), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_tlogkeydott_tlogkey.__type__stdgodot_internaldotnetdothttpdotHttp_t_tlogkeydotT_tLogKey))), stdgo._internal.internal.reflect.GoType.signature(true, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) })] }, { get : () -> [] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })) : (stdgo.GoString, haxe.Rest<stdgo.AnyInterface>) -> Void), _1 : true };
            } catch(__exception__) {
                { _0 : null, _1 : false };
            }, _logf = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L2711"
                _logf(((stdgo._internal.time.Time_now.now().format(("2006-01-02T15:04:05.999999999Z07:00" : stdgo.GoString)) + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _format?.__copy__() : stdgo.GoString)?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _setError( _tr:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>, _err:stdgo.Error):Void {
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest> = _tr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L481"
        (@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L482"
        if ((@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
            (@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L485"
        (@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock();
    }
    @:keep
    @:tdfield
    static public function _extraHeaders( _tr:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest>):stdgo._internal.net.http.Http_header.Header {
        @:recv var _tr:stdgo.Ref<stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest> = _tr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L474"
        if ((@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extra == null) {
            (@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extra = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L477"
        return (@:checkr _tr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._extra;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _write( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer, _1:Bool, _2:stdgo._internal.net.http.Http_header.Header, _3:() -> Bool):stdgo.Error return @:_5 __self__._write(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _wantsHttp10KeepAlive( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._wantsHttp10KeepAlive();
    @:embedded
    @:embeddededffieldsffun
    public static function _wantsClose( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._wantsClose();
    @:embedded
    @:embeddededffieldsffun
    public static function _requiresHTTP1( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._requiresHTTP1();
    @:embedded
    @:embeddededffieldsffun
    public static function _outgoingLength( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.GoInt64 return @:_5 __self__._outgoingLength();
    @:embedded
    @:embeddededffieldsffun
    public static function _multipartReader( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_5 __self__._multipartReader(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _isReplayable( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._isReplayable();
    @:embedded
    @:embeddededffieldsffun
    public static function _isH2Upgrade( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._isH2Upgrade();
    @:embedded
    @:embeddededffieldsffun
    public static function _expectsContinue( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):Bool return @:_5 __self__._expectsContinue();
    @:embedded
    @:embeddededffieldsffun
    public static function _closeBody( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Error return @:_5 __self__._closeBody();
    @:embedded
    @:embeddededffieldsffun
    public static function writeProxy( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_5 __self__.writeProxy(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function withContext( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_5 __self__.withContext(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function userAgent( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.GoString return @:_5 __self__.userAgent();
    @:embedded
    @:embeddededffieldsffun
    public static function setBasicAuth( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString, _1:stdgo.GoString):Void return @:_5 __self__.setBasicAuth(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function referer( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.GoString return @:_5 __self__.referer();
    @:embedded
    @:embeddededffieldsffun
    public static function protoAtLeast( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoInt, _1:stdgo.GoInt):Bool return @:_5 __self__.protoAtLeast(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function postFormValue( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):stdgo.GoString return @:_5 __self__.postFormValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function parseMultipartForm( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoInt64):stdgo.Error return @:_5 __self__.parseMultipartForm(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function parseForm( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Error return @:_5 __self__.parseForm();
    @:embedded
    @:embeddededffieldsffun
    public static function multipartReader( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:_5 __self__.multipartReader();
    @:embedded
    @:embeddededffieldsffun
    public static function formValue( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):stdgo.GoString return @:_5 __self__.formValue(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function formFile( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } return @:_5 __self__.formFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function cookies( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:_5 __self__.cookies();
    @:embedded
    @:embeddededffieldsffun
    public static function cookie( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } return @:_5 __self__.cookie(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function context( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):stdgo._internal.context.Context_context.Context return @:_5 __self__.context();
    @:embedded
    @:embeddededffieldsffun
    public static function clone( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:_5 __self__.clone(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function basicAuth( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:_5 __self__.basicAuth();
    @:embedded
    @:embeddededffieldsffun
    public static function addCookie( __self__:stdgo._internal.net.http.Http_t_transportrequest.T_transportRequest, _0:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void return @:_5 __self__.addCookie(_0);
}
