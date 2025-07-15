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
function _http2NewFramer(_w:stdgo._internal.io.Io_writer.Writer, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> {
        var _fr = (stdgo.Go.setRef(({ _w : _w, _r : _r, _countError : function(_0:stdgo.GoString):Void {}, _logReads : stdgo._internal.net.http.Http__http2logframereads._http2logFrameReads, _logWrites : stdgo._internal.net.http.Http__http2logframewrites._http2logFrameWrites, _debugReadLoggerf : stdgo._internal.log.Log_printf.printf, _debugWriteLoggerf : stdgo._internal.log.Log_printf.printf } : stdgo._internal.net.http.Http_t_http2framer.T_http2Framer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
        (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._getReadBuf = function(_size:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1842"
            if (((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readBuf.capacity >= (_size : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1843"
                return ((@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readBuf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readBuf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1846"
            return (@:checkr _fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readBuf;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1848"
        _fr.setMaxReadFrameSize((16777215u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1849"
        return _fr;
    }
