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
function detectContentType(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L22"
        if (((_data.length) > (512 : stdgo.GoInt) : Bool)) {
            _data = (_data.__slice__(0, (512 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _firstNonWS = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L28"
        while (((_firstNonWS < (_data.length) : Bool) && stdgo._internal.net.http.Http__isws._isWS(_data[(_firstNonWS : stdgo.GoInt)]) : Bool)) {
            {};
            _firstNonWS++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L31"
        if (stdgo._internal.net.http.Http__sniffsignatures._sniffSignatures != null) for (__12 => _sig in stdgo._internal.net.http.Http__sniffsignatures._sniffSignatures) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L32"
            {
                var _ct = @:assignType (_sig._match(_data, _firstNonWS)?.__copy__() : stdgo.GoString);
                if (_ct != ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L33"
                    return _ct?.__copy__();
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L37"
        return ("application/octet-stream" : stdgo.GoString);
    }
