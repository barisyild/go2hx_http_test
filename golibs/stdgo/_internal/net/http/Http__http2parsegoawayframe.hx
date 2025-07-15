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
function _http2parseGoAwayFrame(__12:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2301"
        if (_fh.streamID != ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2302"
            _countError(("frame_goaway_has_stream" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2303"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2305"
        if (((_p.length) < (8 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2306"
            _countError(("frame_goaway_short" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2307"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2309"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__(), lastStreamID : (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_p.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32), errCode : (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_p.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), _debugData : (_p.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2goawayframe.T_http2GoAwayFrame>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goawayframedott_http2goawayframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goawayframedotT_http2GoAwayFrame })), _1 : (null : stdgo.Error) };
    }
