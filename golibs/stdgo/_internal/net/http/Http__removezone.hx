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
function _removeZone(_host:stdgo.GoString):stdgo.GoString {
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L776"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L777"
            return _host?.__copy__();
        };
        var _i = @:assignType (stdgo._internal.strings.Strings_lastindex.lastIndex(_host?.__copy__(), ("]" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L780"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L781"
            return _host?.__copy__();
        };
        var _j = @:assignType (stdgo._internal.strings.Strings_lastindex.lastIndex((_host.__slice__(0, _i) : stdgo.GoString)?.__copy__(), ("%" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L784"
        if ((_j < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L785"
            return _host?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L787"
        return ((_host.__slice__(0, _j) : stdgo.GoString) + (_host.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
