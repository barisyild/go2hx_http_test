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
@:keep @:allow(stdgo._internal.net.http.Http.T_extraHeader_asInterface) class T_extraHeader_static_extension {
    @:keep
    @:tdfield
    static public function write( _h:stdgo._internal.net.http.Http_t_extraheader.T_extraHeader, _w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_t_extraheader.T_extraHeader = _h?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1226"
        if (_h._date != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1227"
            _w.write(stdgo._internal.net.http.Http__headerdate._headerDate);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1228"
            _w.write(_h._date);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1229"
            _w.write(stdgo._internal.net.http.Http__crlf._crlf);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1231"
        if (_h._contentLength != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1232"
            _w.write(stdgo._internal.net.http.Http__headercontentlength._headerContentLength);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1233"
            _w.write(_h._contentLength);
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1234"
            _w.write(stdgo._internal.net.http.Http__crlf._crlf);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1236"
        if ((new stdgo.Slice<stdgo.GoString>(3, 3, ...[_h._contentType?.__copy__(), _h._connection?.__copy__(), _h._transferEncoding?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (_i => _v in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[_h._contentType?.__copy__(), _h._connection?.__copy__(), _h._transferEncoding?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1237"
            if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1238"
                _w.write(stdgo._internal.net.http.Http__extraheaderkeys._extraHeaderKeys[(_i : stdgo.GoInt)]);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1239"
                _w.write(stdgo._internal.net.http.Http__colonspace._colonSpace);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1240"
                _w.writeString(_v?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L1241"
                _w.write(stdgo._internal.net.http.Http__crlf._crlf);
            };
        };
    }
}
