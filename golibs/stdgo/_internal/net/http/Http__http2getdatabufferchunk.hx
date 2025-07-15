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
function _http2getDataBufferChunk(_size:stdgo.GoInt64):stdgo.Slice<stdgo.GoUInt8> {
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1063"
        while ((_i < ((stdgo._internal.net.http.Http__http2datachunksizeclasses._http2dataChunkSizeClasses.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1064"
            if ((_size <= (stdgo._internal.net.http.Http__http2datachunksizeclasses._http2dataChunkSizeClasses[(_i : stdgo.GoInt)] : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1065"
                break;
            };
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1068"
        return (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2datachunkpools._http2dataChunkPools[(_i : stdgo.GoInt)].get(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })) : stdgo.Slice<stdgo.GoUInt8>);
    }
