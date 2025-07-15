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
function _refererForURL(_lastReq:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _newReq:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _explicitRef:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L153"
        if ((((@:checkr _lastReq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ("https" : stdgo.GoString)) && ((@:checkr _newReq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ("http" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L154"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L156"
        if (_explicitRef != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L157"
            return _explicitRef?.__copy__();
        };
        var _referer = @:assignType ((_lastReq.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L161"
        if (({
            final value = (@:checkr _lastReq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            var _auth = @:assignType ((((@:checkr _lastReq ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user.string() : stdgo.GoString) + ("@" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            _referer = stdgo._internal.strings.Strings_replace.replace(_referer?.__copy__(), _auth?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (1 : stdgo.GoInt))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L171"
        return _referer?.__copy__();
    }
