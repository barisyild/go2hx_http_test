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
function _http2parsePushPromise(__12:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        var _0 = (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _err = (null : stdgo.Error);
        var _pp = (stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__() } : stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pushpromiseframedott_http2pushpromiseframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pushpromiseframedotT_http2PushPromiseFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2pushpromiseframe.T_http2PushPromiseFrame>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2699"
        if ((@:checkr _pp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._http2FrameHeader.streamID == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2706"
            _countError(("frame_pushpromise_zero_stream" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2707"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
                _0 = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _padLength:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2712"
        if (_fh.flags.has((8 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2713"
            {
                {
                    var __tmp__ = stdgo._internal.net.http.Http__http2readbyte._http2readByte(_p);
                    _p = @:tmpset0 __tmp__._0;
                    _padLength = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2714"
                    _countError(("frame_pushpromise_pad_short" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2715"
                    return { _0 : _0, _1 : _err };
                };
            };
        };
        {
            var __tmp__ = stdgo._internal.net.http.Http__http2readuint32._http2readUint32(_p);
            _p = @:tmpset0 __tmp__._0;
            (@:checkr _pp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).promiseID = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2720"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2721"
            _countError(("frame_pushpromise_promiseid_short" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2722"
            return { _0 : _0, _1 : _err };
        };
        (@:checkr _pp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).promiseID = ((@:checkr _pp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).promiseID & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2726"
        if (((_padLength : stdgo.GoInt) > (_p.length) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2728"
            _countError(("frame_pushpromise_pad_too_big" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2729"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
                _0 = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _pp ?? throw stdgo.Error._nullPointerDereference.__underlying__())._headerFragBuf = (_p.__slice__(0, ((_p.length) - (_padLength : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2732"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface(_pp, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2pushpromiseframedott_http2pushpromiseframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2pushpromiseframedotT_http2PushPromiseFrame })), _1 : (null : stdgo.Error) };
            _0 = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
