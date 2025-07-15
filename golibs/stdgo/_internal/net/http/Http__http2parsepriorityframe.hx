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
function _http2parsePriorityFrame(__12:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _payload:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2564"
        if (_fh.streamID == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2565"
            _countError(("frame_priority_zero_stream" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2566"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2connerror.T_http2connError((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), ("PRIORITY frame with stream ID 0" : stdgo.GoString)) : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connerrordott_http2connerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connerrordotT_http2connError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2568"
        if ((_payload.length) != ((5 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2569"
            _countError(("frame_priority_bad_length" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2570"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_http2connerror.T_http2connError((6u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode), stdgo._internal.fmt.Fmt_sprintf.sprintf(("PRIORITY frame payload size was %d; want 5" : stdgo.GoString), new stdgo.AnyInterface((_payload.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__()) : stdgo._internal.net.http.Http_t_http2connerror.T_http2connError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connerrordott_http2connerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connerrordotT_http2connError) };
        };
        var _v = @:assignType (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_payload.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        var _streamID = @:assignType (_v & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2574"
        return { _0 : stdgo.Go.asInterface((stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__(), _http2PriorityParam : ({ weight : _payload[(4 : stdgo.GoInt)], streamDep : _streamID, exclusive : _streamID != (_v) } : stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam) } : stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2priorityframedott_http2priorityframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2priorityframedotT_http2PriorityFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2priorityframe.T_http2PriorityFrame>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2priorityframedott_http2priorityframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2priorityframedotT_http2PriorityFrame })), _1 : (null : stdgo.Error) };
    }
