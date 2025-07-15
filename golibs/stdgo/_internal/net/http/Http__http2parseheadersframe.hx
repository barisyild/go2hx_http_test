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
function _http2parseHeadersFrame(__12:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        var _0 = (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _err = (null : stdgo.Error);
        var _hf = (stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__() } : stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2headersframedott_http2headersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2headersframedotT_http2HeadersFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2headersframe.T_http2HeadersFrame>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2425"
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2430"
            _countError(("frame_headers_zero_stream" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2431"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2connerror.T_http2connError((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), ("HEADERS frame with stream ID 0" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connerrordott_http2connerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connerrordotT_http2connError) };
                _0 = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _padLength:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2434"
        if (_fh.flags.has((8 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2435"
            {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__http2readbyte._http2readByte(_p);
                    _p = @:tmpset0 __tmp__._0;
                    _padLength = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2436"
                    _countError(("frame_headers_pad_short" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2437"
                    return { _0 : _0, _1 : _err };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2440"
        if (_fh.flags.has((32 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags))) {
            var _v:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
            {
                var __tmp__ = stdgo._internal.net.http.Http__http2readuint32._http2readUint32(_p);
                _p = @:tmpset0 __tmp__._0;
                _v = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2443"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2444"
                _countError(("frame_headers_prio_short" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2445"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
                    _0 = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _hf ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority.streamDep = (_v & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            (@:checkr _hf ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority.exclusive = (_v != (@:checkr _hf ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority.streamDep);
            {
                var __tmp__ = stdgo._internal.net.http.Http__http2readbyte._http2readByte(_p);
                _p = @:tmpset0 __tmp__._0;
                (@:checkr _hf ?? throw stdgo.Error._nullPointerDereference.__underlying__()).priority.weight = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2450"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2451"
                _countError(("frame_headers_prio_weight_short" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2452"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : _err };
                    _0 = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2455"
        if ((((_p.length) - (_padLength : stdgo.GoInt) : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2456"
            _countError(("frame_headers_pad_too_big" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2457"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(stdgo._internal.net.http.Http__http2streamerror._http2streamError(_fh.streamID, (1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode)), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) };
                _0 = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _hf ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headerFragBuf = (_p.__slice__(0, ((_p.length) - (_padLength : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2460"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_hf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2headersframedott_http2headersframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2headersframedotT_http2HeadersFrame })), _1 : (null : stdgo.Error) };
            _0 = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
