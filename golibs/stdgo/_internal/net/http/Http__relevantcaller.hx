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
function _relevantCaller():stdgo._internal.runtime.Runtime_frame.Frame {
        var _pc = (new stdgo.Slice<stdgo.GoUIntptr>((16 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
        var _n = @:assignType (stdgo._internal.runtime.Runtime_callers.callers((1 : stdgo.GoInt), _pc) : stdgo.GoInt);
        var _frames = stdgo._internal.runtime.Runtime_callersframes.callersFrames((_pc.__slice__(0, _n) : stdgo.Slice<stdgo.GoUIntptr>));
        var _frame:stdgo._internal.runtime.Runtime_frame.Frame = ({} : stdgo._internal.runtime.Runtime_frame.Frame);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1132"
        while (true) {
            var __tmp__ = _frames.next(), _frame:stdgo._internal.runtime.Runtime_frame.Frame = __tmp__._0, _more:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1134"
            if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_frame.function_?.__copy__(), ("net/http." : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1135"
                return _frame?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1137"
            if (!_more) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1138"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1141"
        return _frame?.__copy__();
    }
