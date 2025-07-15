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
@:keep @:allow(stdgo._internal.net.http.Http.T_persistConnWriter_asInterface) class T_persistConnWriter_static_extension {
    @:keep
    @:tdfield
    static public function readFrom( _w:stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy((@:checkr _w._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn, _r);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _w._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite = ((@:checkr _w._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite + (_n) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1803"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo._internal.net.http.Http_t_persistconnwriter.T_persistConnWriter = _w?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _w._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._conn.write(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _w._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite = ((@:checkr _w._pc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nwrite + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L1794"
        return { _0 : _n, _1 : _err };
    }
}
