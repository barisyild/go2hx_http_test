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
function serveFile(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString):Void {
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L732"
        if (stdgo._internal.net.http.Http__containsdotdot._containsDotDot((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L738"
            stdgo._internal.net.http.Http_error.error(_w, ("invalid URL path" : stdgo.GoString), (400 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L739"
            return;
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(_name?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _file:stdgo.GoString = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L742"
        stdgo._internal.net.http.Http__servefile._serveFile(_w, _r, stdgo.Go.asInterface((_dir : stdgo._internal.net.http.Http_dir.Dir), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_dirdotdir.__type__stdgodot_internaldotnetdothttpdotHttp_dirdotDir), _file?.__copy__(), false);
    }
