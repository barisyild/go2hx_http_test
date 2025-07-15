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
function _readTransfer(_msg:stdgo.AnyInterface, _r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _t = (stdgo.Go.setRef(({ requestMethod : ("GET" : stdgo.GoString) } : stdgo._internal.net.http.Http_t_transferreader.T_transferReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_transferreaderdott_transferreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_transferreaderdotT_transferReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_transferreader.T_transferReader>);
        var _isResponse = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L491"
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__().value);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = stdgo._internal.net.http.Http__shouldclose._shouldClose((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header, true);
                _isResponse = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L499"
                if (({
                    final value = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestMethod = (@:checkr (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__();
                };
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__().value);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestMethod = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__();
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode = (200 : stdgo.GoInt);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close;
            } else {
                var _rr:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L512"
                throw new stdgo.AnyInterface(("unexpected type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L516"
        if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor == (0 : stdgo.GoInt)) && ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor == (0 : stdgo.GoInt)) : Bool)) {
            {
                final __tmp__0 = (1 : stdgo.GoInt);
                final __tmp__1 = (1 : stdgo.GoInt);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor = @:binopAssign __tmp__0;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L521"
        {
            var _err = @:assignType (_t._parseTransferEncoding() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L522"
                return _err;
            };
        };
        var __tmp__ = stdgo._internal.net.http.Http__fixlength._fixLength(_isResponse, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestMethod?.__copy__(), (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chunked), _realLength:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L526"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L527"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L529"
        if ((_isResponse && ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestMethod == ("HEAD" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L530"
            {
                var __tmp__ = stdgo._internal.net.http.Http__parsecontentlength._parseContentLength((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Content-Length" : stdgo.GoString))?.__copy__()), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L531"
                    return _err;
                } else {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = _n;
                };
            };
        } else {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = _realLength;
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__fixtrailer._fixTrailer((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chunked);
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L541"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L542"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L548"
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L550"
                if (((_realLength == ((-1i64 : stdgo.GoInt64)) && !(@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chunked : Bool) && stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode) : Bool)) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L558"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chunked) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L560"
            if ((_isResponse && ((stdgo._internal.net.http.Http__noresponsebodyexpected._noResponseBodyExpected((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestMethod?.__copy__()) || !stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode) : Bool)) : Bool)) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody);
            } else {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo._internal.net.http.internal.Internal_newchunkedreader.newChunkedReader(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }))), _hdr : _msg, _r : _r, _closing : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close } : stdgo._internal.net.http.Http_t_body.T_body), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body })) : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body }));
            };
        } else if (_realLength == ((0i64 : stdgo.GoInt64))) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody);
        } else if ((_realLength > (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo._internal.io.Io_limitreader.limitReader(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })), _realLength), _closing : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close } : stdgo._internal.net.http.Http_t_body.T_body), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body })) : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body }));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L571"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((stdgo.Go.setRef(({ _src : stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })), _closing : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close } : stdgo._internal.net.http.Http_t_body.T_body), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body })) : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body }));
            } else {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L581"
        {
            final __type__ = _msg;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__().value);
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L585"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chunked) {
                    (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close;
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer;
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__().value);
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L593"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chunked) {
                    (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close;
                (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L600"
        return _err = (null : stdgo.Error);
    }
