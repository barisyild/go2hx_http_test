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
@:keep @:allow(stdgo._internal.net.http.Http.T_maxBytesReader_asInterface) class T_maxBytesReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader> = _l;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1208"
        return (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.close();
    }
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.net.http.Http_t_maxbytesreader.T_maxBytesReader> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1166"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1167"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1169"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1170"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1176"
        if ((((_p.length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64) > (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : Bool)) {
            _p = (_p.__slice__(0, ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n + (1i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1181"
        if (((_n : stdgo.GoInt64) <= (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : Bool)) {
            (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
            (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1184"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : stdgo.GoInt);
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = (0i64 : stdgo.GoInt64);
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1200"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsewriterdotresponsewriter.__type__stdgodot_internaldotnetdothttpdotHttp_responsewriterdotResponseWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_read___localname___requesttoolarger_39156dott_read___localname___requesttoolarger_39156.__type__stdgodot_internaldotnetdothttpdotHttp_t_read___localname___requesttoolarger_39156dotT_read___localname___requestTooLarger_39156) : stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.http.Http_t_read___localname___requesttoolarger_39156.T_read___localname___requestTooLarger_39156), _1 : false };
            }, _res = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1201"
                _res._requestTooLarge();
            };
        };
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i) : stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_maxbyteserrordotmaxbyteserror.__type__stdgodot_internaldotnetdothttpdotHttp_maxbyteserrordotMaxBytesError })) : stdgo.Ref<stdgo._internal.net.http.Http_maxbyteserror.MaxBytesError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_maxbyteserrordotmaxbyteserror.__type__stdgodot_internaldotnetdothttpdotHttp_maxbyteserrordotMaxBytesError }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1204"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
