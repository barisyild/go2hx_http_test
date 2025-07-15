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
function _newTransferWriter(_r:stdgo.AnyInterface):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>; var _1 : stdgo.Error; } {
        var _t = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>), _err = (null : stdgo.Error);
        _t = (stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter() : stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_transferwriterdott_transferwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_transferwriterdotT_transferWriter })) : stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>);
        var _atLeastHTTP11 = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L81"
        {
            final __type__ = _r;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L83"
                if ((((@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != (0i64 : stdgo.GoInt64)) && ((@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L84"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: Request.ContentLength=%d with nil Body" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind)))) };
                        _t = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method = stdgo._internal.net.http.Http__valueordefault._valueOrDefault((@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__(), ("GET" : stdgo.GoString))?.__copy__();
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bodyCloser = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = _rr._outgoingLength();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L94"
                if (((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength < (0i64 : stdgo.GoInt64) : Bool) && ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding.length) == ((0 : stdgo.GoInt)) : Bool) && _t._shouldSendChunkedRequestBody() : Bool)) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L104"
                if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != (0i64 : stdgo.GoInt64)) && !stdgo._internal.net.http.Http__isknowninmemoryreader._isKnownInMemoryReader((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body) : Bool)) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flushHeaders = true;
                };
                _atLeastHTTP11 = true;
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__().value);
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isResponse = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L111"
                if (({
                    final value = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method = (@:checkr (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__();
                };
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bodyCloser = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header;
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = (@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer;
                _atLeastHTTP11 = _rr.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt));
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).responseToHEAD = stdgo._internal.net.http.Http__noresponsebodyexpected._noResponseBodyExpected((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L126"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).responseToHEAD) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = (null : stdgo._internal.io.Io_reader.Reader);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L128"
            if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding)) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L132"
            if ((!_atLeastHTTP11 || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) : Bool)) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding = (null : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L135"
            if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding)) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
            } else if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (0i64 : stdgo.GoInt64);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L143"
        if (!stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding)) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer = null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L147"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>; var _1 : stdgo.Error; } = { _0 : _t, _1 : (null : stdgo.Error) };
            _t = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
